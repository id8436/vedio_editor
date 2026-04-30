package d.a.i;

import javax.security.auth.x500.X500Principal;

/* JADX INFO: compiled from: DistinguishedNameParser.java */
/* JADX INFO: loaded from: classes3.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private char[] f4499g;

    d(X500Principal x500Principal) {
        this.f4493a = x500Principal.getName("RFC2253");
        this.f4494b = this.f4493a.length();
    }

    private String a() {
        while (this.f4495c < this.f4494b && this.f4499g[this.f4495c] == ' ') {
            this.f4495c++;
        }
        if (this.f4495c == this.f4494b) {
            return null;
        }
        this.f4496d = this.f4495c;
        this.f4495c++;
        while (this.f4495c < this.f4494b && this.f4499g[this.f4495c] != '=' && this.f4499g[this.f4495c] != ' ') {
            this.f4495c++;
        }
        if (this.f4495c >= this.f4494b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f4493a);
        }
        this.f4497e = this.f4495c;
        if (this.f4499g[this.f4495c] == ' ') {
            while (this.f4495c < this.f4494b && this.f4499g[this.f4495c] != '=' && this.f4499g[this.f4495c] == ' ') {
                this.f4495c++;
            }
            if (this.f4499g[this.f4495c] != '=' || this.f4495c == this.f4494b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f4493a);
            }
        }
        this.f4495c++;
        while (this.f4495c < this.f4494b && this.f4499g[this.f4495c] == ' ') {
            this.f4495c++;
        }
        if (this.f4497e - this.f4496d > 4 && this.f4499g[this.f4496d + 3] == '.' && ((this.f4499g[this.f4496d] == 'O' || this.f4499g[this.f4496d] == 'o') && ((this.f4499g[this.f4496d + 1] == 'I' || this.f4499g[this.f4496d + 1] == 'i') && (this.f4499g[this.f4496d + 2] == 'D' || this.f4499g[this.f4496d + 2] == 'd')))) {
            this.f4496d += 4;
        }
        return new String(this.f4499g, this.f4496d, this.f4497e - this.f4496d);
    }

    private String b() {
        this.f4495c++;
        this.f4496d = this.f4495c;
        this.f4497e = this.f4496d;
        while (this.f4495c != this.f4494b) {
            if (this.f4499g[this.f4495c] == '\"') {
                this.f4495c++;
                while (this.f4495c < this.f4494b && this.f4499g[this.f4495c] == ' ') {
                    this.f4495c++;
                }
                return new String(this.f4499g, this.f4496d, this.f4497e - this.f4496d);
            }
            if (this.f4499g[this.f4495c] == '\\') {
                this.f4499g[this.f4497e] = e();
            } else {
                this.f4499g[this.f4497e] = this.f4499g[this.f4495c];
            }
            this.f4495c++;
            this.f4497e++;
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f4493a);
    }

    private String c() {
        int i;
        if (this.f4495c + 4 >= this.f4494b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f4493a);
        }
        this.f4496d = this.f4495c;
        this.f4495c++;
        while (this.f4495c != this.f4494b && this.f4499g[this.f4495c] != '+' && this.f4499g[this.f4495c] != ',' && this.f4499g[this.f4495c] != ';') {
            if (this.f4499g[this.f4495c] == ' ') {
                this.f4497e = this.f4495c;
                this.f4495c++;
                while (this.f4495c < this.f4494b && this.f4499g[this.f4495c] == ' ') {
                    this.f4495c++;
                }
                i = this.f4497e - this.f4496d;
                if (i >= 5 || (i & 1) == 0) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f4493a);
                }
                byte[] bArr = new byte[i / 2];
                int i2 = this.f4496d + 1;
                for (int i3 = 0; i3 < bArr.length; i3++) {
                    bArr[i3] = (byte) a(i2);
                    i2 += 2;
                }
                return new String(this.f4499g, this.f4496d, i);
            }
            if (this.f4499g[this.f4495c] >= 'A' && this.f4499g[this.f4495c] <= 'F') {
                char[] cArr = this.f4499g;
                int i4 = this.f4495c;
                cArr[i4] = (char) (cArr[i4] + ' ');
            }
            this.f4495c++;
        }
        this.f4497e = this.f4495c;
        i = this.f4497e - this.f4496d;
        if (i >= 5) {
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f4493a);
    }

    private String d() {
        this.f4496d = this.f4495c;
        this.f4497e = this.f4495c;
        while (this.f4495c < this.f4494b) {
            switch (this.f4499g[this.f4495c]) {
                case ' ':
                    this.f4498f = this.f4497e;
                    this.f4495c++;
                    char[] cArr = this.f4499g;
                    int i = this.f4497e;
                    this.f4497e = i + 1;
                    cArr[i] = ' ';
                    while (this.f4495c < this.f4494b && this.f4499g[this.f4495c] == ' ') {
                        char[] cArr2 = this.f4499g;
                        int i2 = this.f4497e;
                        this.f4497e = i2 + 1;
                        cArr2[i2] = ' ';
                        this.f4495c++;
                    }
                    if (this.f4495c == this.f4494b || this.f4499g[this.f4495c] == ',' || this.f4499g[this.f4495c] == '+' || this.f4499g[this.f4495c] == ';') {
                        return new String(this.f4499g, this.f4496d, this.f4498f - this.f4496d);
                    }
                    break;
                case '+':
                case ',':
                case ';':
                    return new String(this.f4499g, this.f4496d, this.f4497e - this.f4496d);
                case '\\':
                    char[] cArr3 = this.f4499g;
                    int i3 = this.f4497e;
                    this.f4497e = i3 + 1;
                    cArr3[i3] = e();
                    this.f4495c++;
                    break;
                default:
                    char[] cArr4 = this.f4499g;
                    int i4 = this.f4497e;
                    this.f4497e = i4 + 1;
                    cArr4[i4] = this.f4499g[this.f4495c];
                    this.f4495c++;
                    break;
            }
        }
        return new String(this.f4499g, this.f4496d, this.f4497e - this.f4496d);
    }

    private char e() {
        this.f4495c++;
        if (this.f4495c == this.f4494b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f4493a);
        }
        switch (this.f4499g[this.f4495c]) {
            case ' ':
            case '\"':
            case '#':
            case '%':
            case '*':
            case '+':
            case ',':
            case ';':
            case '<':
            case '=':
            case '>':
            case '\\':
            case '_':
                return this.f4499g[this.f4495c];
            default:
                return f();
        }
    }

    private char f() {
        int i;
        int i2;
        int iA = a(this.f4495c);
        this.f4495c++;
        if (iA < 128) {
            return (char) iA;
        }
        if (iA < 192 || iA > 247) {
            return '?';
        }
        if (iA <= 223) {
            i = 1;
            i2 = iA & 31;
        } else if (iA <= 239) {
            i = 2;
            i2 = iA & 15;
        } else {
            i = 3;
            i2 = iA & 7;
        }
        int i3 = i2;
        for (int i4 = 0; i4 < i; i4++) {
            this.f4495c++;
            if (this.f4495c == this.f4494b || this.f4499g[this.f4495c] != '\\') {
                return '?';
            }
            this.f4495c++;
            int iA2 = a(this.f4495c);
            this.f4495c++;
            if ((iA2 & 192) != 128) {
                return '?';
            }
            i3 = (i3 << 6) + (iA2 & 63);
        }
        return (char) i3;
    }

    private int a(int i) {
        int i2;
        int i3;
        if (i + 1 >= this.f4494b) {
            throw new IllegalStateException("Malformed DN: " + this.f4493a);
        }
        char c2 = this.f4499g[i];
        if (c2 >= '0' && c2 <= '9') {
            i2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i2 = c2 - 'W';
        } else if (c2 >= 'A' && c2 <= 'F') {
            i2 = c2 - '7';
        } else {
            throw new IllegalStateException("Malformed DN: " + this.f4493a);
        }
        char c3 = this.f4499g[i + 1];
        if (c3 >= '0' && c3 <= '9') {
            i3 = c3 - '0';
        } else if (c3 >= 'a' && c3 <= 'f') {
            i3 = c3 - 'W';
        } else if (c3 >= 'A' && c3 <= 'F') {
            i3 = c3 - '7';
        } else {
            throw new IllegalStateException("Malformed DN: " + this.f4493a);
        }
        return (i2 << 4) + i3;
    }

    public String a(String str) {
        this.f4495c = 0;
        this.f4496d = 0;
        this.f4497e = 0;
        this.f4498f = 0;
        this.f4499g = this.f4493a.toCharArray();
        String strA = a();
        if (strA == null) {
            return null;
        }
        do {
            String strC = "";
            if (this.f4495c == this.f4494b) {
                return null;
            }
            switch (this.f4499g[this.f4495c]) {
                case '\"':
                    strC = b();
                    break;
                case '#':
                    strC = c();
                    break;
                case '+':
                case ',':
                case ';':
                    break;
                default:
                    strC = d();
                    break;
            }
            if (!str.equalsIgnoreCase(strA)) {
                if (this.f4495c >= this.f4494b) {
                    return null;
                }
                if (this.f4499g[this.f4495c] != ',' && this.f4499g[this.f4495c] != ';' && this.f4499g[this.f4495c] != '+') {
                    throw new IllegalStateException("Malformed DN: " + this.f4493a);
                }
                this.f4495c++;
                strA = a();
            } else {
                return strC;
            }
        } while (strA != null);
        throw new IllegalStateException("Malformed DN: " + this.f4493a);
    }
}
