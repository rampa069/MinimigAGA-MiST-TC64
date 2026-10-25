# Classic Amiga icons (DiskObject): read one, change its type, default tool
# and tool types, write it back (the images and anything after them kept).
import struct, sys

def _img(b, o):
    w, h, d = struct.unpack('>hhh', b[o+4:o+10])
    n = ((w + 15) // 16) * 2 * h * d
    return o + 20 + n

def _str(b, o):
    (n,) = struct.unpack('>I', b[o:o+4])
    return b[o+4:o+4+n].split(b'\0')[0].decode('latin-1'), o + 4 + n

def parse(b):
    assert b[0:2] == b'\xe3\x10', 'not an icon'
    ic = {}
    g = b[4:48]
    ic['raw'] = b
    gr, sr = struct.unpack('>II', g[18:26])
    ic['type'] = b[48]
    dt, tt, cx, cy, dd, tw, st = struct.unpack('>IIiiIII', b[50:78])
    o = 78
    if dd:
        o += 56                      # (a drawer: not handled further)
        raise ValueError('drawer icons are not handled')
    o1 = o
    o = _img(b, o)
    if sr:
        o = _img(b, o)
    ic['images'] = b[o1:o]
    ic['tool'] = None
    if dt:
        ic['tool'], o = _str(b, o)
    ic['tooltypes'] = []
    if tt:
        (n,) = struct.unpack('>I', b[o:o+4]); o += 4
        for _ in range(n // 4 - 1):
            s, o = _str(b, o); ic['tooltypes'].append(s)
    if tw:
        _, o = _str(b, o)
    ic['rest'] = b[o:]
    return ic

def build(ic, type_=None, tool=None, tooltypes=None, stack=None):
    b = bytearray(ic['raw'][:78])
    if type_ is not None:
        b[48] = type_
    tool = ic['tool'] if tool is None else tool
    tts = ic['tooltypes'] if tooltypes is None else tooltypes
    struct.pack_into('>I', b, 50, 1 if tool else 0)
    struct.pack_into('>I', b, 54, 1 if tts else 0)
    struct.pack_into('>ii', b, 58, -2147483648, -2147483648)  # NO_ICON_POSITION
    struct.pack_into('>I', b, 70, 0)                           # no ToolWindow
    if stack is not None:
        struct.pack_into('>I', b, 74, stack)
    out = bytes(b) + ic['images']
    def s(x):
        x = x.encode('latin-1') + b'\0'
        return struct.pack('>I', len(x)) + x
    if tool:
        out += s(tool)
    if tts:
        out += struct.pack('>I', (len(tts) + 1) * 4) + b''.join(s(t) for t in tts)
    return out + ic['rest']

if __name__ == '__main__':
    for f in sys.argv[1:]:
        try:
            ic = parse(open(f, 'rb').read())
            print(f.split('/')[-1], 'type', ic['type'], 'tool', repr(ic['tool']), 'tt', ic['tooltypes'], 'rest', len(ic['rest']))
        except Exception as e:
            print(f.split('/')[-1], 'ERR', e)
