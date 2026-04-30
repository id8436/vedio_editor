package com.l.a.a;

/* JADX INFO: compiled from: MailcapTokenizer.java */
/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3585a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3587c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3586b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3588d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f3589e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3590f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private char f3591g = ';';

    public e(String str) {
        this.f3585a = str;
        this.f3587c = str.length();
    }

    public void a(boolean z) {
        this.f3590f = z;
    }

    public static String a(int i) {
        switch (i) {
            case 0:
                return "unknown";
            case 1:
                return "start";
            case 2:
                return "string";
            case 5:
                return "EOI";
            case 47:
                return "'/'";
            case 59:
                return "';'";
            case 61:
                return "'='";
            default:
                return "really unknown";
        }
    }

    public String a() {
        return this.f3589e;
    }

    public int b() {
        if (this.f3586b < this.f3587c) {
            while (this.f3586b < this.f3587c && d(this.f3585a.charAt(this.f3586b))) {
                this.f3586b++;
            }
            if (this.f3586b < this.f3587c) {
                char cCharAt = this.f3585a.charAt(this.f3586b);
                if (this.f3590f) {
                    if (!b(cCharAt)) {
                        d();
                    } else if (cCharAt == ';' || cCharAt == '=') {
                        this.f3588d = cCharAt;
                        this.f3589e = new Character(cCharAt).toString();
                        this.f3586b++;
                    } else {
                        this.f3588d = 0;
                        this.f3589e = new Character(cCharAt).toString();
                        this.f3586b++;
                    }
                } else if (e(cCharAt)) {
                    c();
                } else if (cCharAt == '/' || cCharAt == ';' || cCharAt == '=') {
                    this.f3588d = cCharAt;
                    this.f3589e = new Character(cCharAt).toString();
                    this.f3586b++;
                } else {
                    this.f3588d = 0;
                    this.f3589e = new Character(cCharAt).toString();
                    this.f3586b++;
                }
            } else {
                this.f3588d = 5;
                this.f3589e = null;
            }
        } else {
            this.f3588d = 5;
            this.f3589e = null;
        }
        return this.f3588d;
    }

    private void c() {
        int i = this.f3586b;
        while (this.f3586b < this.f3587c && e(this.f3585a.charAt(this.f3586b))) {
            this.f3586b++;
        }
        this.f3588d = 2;
        this.f3589e = this.f3585a.substring(i, this.f3586b);
    }

    private void d() {
        int i = this.f3586b;
        boolean z = false;
        while (this.f3586b < this.f3587c && !z) {
            if (this.f3585a.charAt(this.f3586b) != this.f3591g) {
                this.f3586b++;
            } else {
                z = true;
            }
        }
        this.f3588d = 2;
        this.f3589e = a(this.f3585a.substring(i, this.f3586b));
    }

    public static boolean a(char c2) {
        switch (c2) {
            case '\"':
            case '(':
            case ')':
            case ',':
            case '/':
            case ':':
            case ';':
            case '<':
            case '=':
            case '>':
            case '?':
            case '@':
            case '[':
            case '\\':
            case ']':
                return true;
            default:
                return false;
        }
    }

    public static boolean b(char c2) {
        switch (c2) {
            case ';':
            case '=':
                return true;
            case '<':
            default:
                return false;
        }
    }

    public static boolean c(char c2) {
        return Character.isISOControl(c2);
    }

    public static boolean d(char c2) {
        return Character.isWhitespace(c2);
    }

    public static boolean e(char c2) {
        return (a(c2) || c(c2) || d(c2)) ? false : true;
    }

    private static String a(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.ensureCapacity(length);
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\\') {
                stringBuffer.append(cCharAt);
            } else if (i < length - 1) {
                stringBuffer.append(str.charAt(i + 1));
                i++;
            } else {
                stringBuffer.append(cCharAt);
            }
            i++;
        }
        return stringBuffer.toString();
    }
}
