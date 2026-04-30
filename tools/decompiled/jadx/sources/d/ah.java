package d;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: Headers.java */
/* JADX INFO: loaded from: classes3.dex */
public final class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List<String> f4513a = new ArrayList(20);

    ah a(String str) {
        int iIndexOf = str.indexOf(":", 1);
        if (iIndexOf != -1) {
            return b(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
        }
        if (str.startsWith(":")) {
            return b("", str.substring(1));
        }
        return b("", str);
    }

    public ah a(String str, String str2) {
        d(str, str2);
        return b(str, str2);
    }

    ah b(String str, String str2) {
        this.f4513a.add(str);
        this.f4513a.add(str2.trim());
        return this;
    }

    public ah b(String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f4513a.size()) {
                if (str.equalsIgnoreCase(this.f4513a.get(i2))) {
                    this.f4513a.remove(i2);
                    this.f4513a.remove(i2);
                    i2 -= 2;
                }
                i = i2 + 2;
            } else {
                return this;
            }
        }
    }

    public ah c(String str, String str2) {
        d(str, str2);
        b(str);
        b(str, str2);
        return this;
    }

    private void d(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= ' ' || cCharAt >= 127) {
                throw new IllegalArgumentException(d.a.c.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str));
            }
        }
        if (str2 == null) {
            throw new NullPointerException("value for name " + str + " == null");
        }
        int length2 = str2.length();
        for (int i2 = 0; i2 < length2; i2++) {
            char cCharAt2 = str2.charAt(i2);
            if ((cCharAt2 <= 31 && cCharAt2 != '\t') || cCharAt2 >= 127) {
                throw new IllegalArgumentException(d.a.c.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i2), str, str2));
            }
        }
    }

    public ag a() {
        return new ag(this);
    }
}
