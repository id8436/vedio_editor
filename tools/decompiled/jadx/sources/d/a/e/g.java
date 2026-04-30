package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: Http2.java */
/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final e.k f4382a = e.k.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f4385d = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String[] f4383b = new String[64];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String[] f4384c = new String[256];

    static {
        for (int i = 0; i < f4384c.length; i++) {
            f4384c[i] = d.a.c.a("%8s", Integer.toBinaryString(i)).replace(' ', '0');
        }
        f4383b[0] = "";
        f4383b[1] = "END_STREAM";
        int[] iArr = {1};
        f4383b[8] = "PADDED";
        for (int i2 : iArr) {
            f4383b[i2 | 8] = f4383b[i2] + "|PADDED";
        }
        f4383b[4] = "END_HEADERS";
        f4383b[32] = "PRIORITY";
        f4383b[36] = "END_HEADERS|PRIORITY";
        for (int i3 : new int[]{4, 32, 36}) {
            for (int i4 : iArr) {
                f4383b[i4 | i3] = f4383b[i4] + '|' + f4383b[i3];
                f4383b[i4 | i3 | 8] = f4383b[i4] + '|' + f4383b[i3] + "|PADDED";
            }
        }
        for (int i5 = 0; i5 < f4383b.length; i5++) {
            if (f4383b[i5] == null) {
                f4383b[i5] = f4384c[i5];
            }
        }
    }

    private g() {
    }

    static IllegalArgumentException a(String str, Object... objArr) {
        throw new IllegalArgumentException(d.a.c.a(str, objArr));
    }

    static IOException b(String str, Object... objArr) throws IOException {
        throw new IOException(d.a.c.a(str, objArr));
    }

    static String a(boolean z, int i, int i2, byte b2, byte b3) {
        String strA = b2 < f4385d.length ? f4385d[b2] : d.a.c.a("0x%02x", Byte.valueOf(b2));
        String strA2 = a(b2, b3);
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = strA;
        objArr[4] = strA2;
        return d.a.c.a("%s 0x%08x %5d %-13s %s", objArr);
    }

    static String a(byte b2, byte b3) {
        if (b3 == 0) {
            return "";
        }
        switch (b2) {
            case 2:
            case 3:
            case 7:
            case 8:
                return f4384c[b3];
            case 4:
            case 6:
                return b3 == 1 ? "ACK" : f4384c[b3];
            case 5:
            default:
                String str = b3 < f4383b.length ? f4383b[b3] : f4384c[b3];
                if (b2 == 5 && (b3 & 4) != 0) {
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
                if (b2 == 0 && (b3 & 32) != 0) {
                    return str.replace("PRIORITY", "COMPRESSED");
                }
                return str;
        }
    }
}
