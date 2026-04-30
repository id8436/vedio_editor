package d;

import com.adobe.xmp.XMPConst;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: HttpUrl.java */
/* JADX INFO: loaded from: classes.dex */
public final class aj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    String f4521a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    String f4524d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    List<String> f4527g;

    @Nullable
    String h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f4522b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f4523c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f4525e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<String> f4526f = new ArrayList();

    public aj() {
        this.f4526f.add("");
    }

    public aj a(String str) {
        if (str == null) {
            throw new NullPointerException("scheme == null");
        }
        if (str.equalsIgnoreCase("http")) {
            this.f4521a = "http";
        } else if (str.equalsIgnoreCase("https")) {
            this.f4521a = "https";
        } else {
            throw new IllegalArgumentException("unexpected scheme: " + str);
        }
        return this;
    }

    public aj b(String str) {
        if (str == null) {
            throw new NullPointerException("username == null");
        }
        this.f4522b = ai.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return this;
    }

    public aj c(String str) {
        if (str == null) {
            throw new NullPointerException("password == null");
        }
        this.f4523c = ai.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return this;
    }

    public aj d(String str) {
        if (str == null) {
            throw new NullPointerException("host == null");
        }
        String strE = e(str, 0, str.length());
        if (strE == null) {
            throw new IllegalArgumentException("unexpected host: " + str);
        }
        this.f4524d = strE;
        return this;
    }

    public aj a(int i) {
        if (i <= 0 || i > 65535) {
            throw new IllegalArgumentException("unexpected port: " + i);
        }
        this.f4525e = i;
        return this;
    }

    int a() {
        return this.f4525e != -1 ? this.f4525e : ai.a(this.f4521a);
    }

    public aj e(@Nullable String str) {
        List<String> listB;
        if (str != null) {
            listB = ai.b(ai.a(str, " \"'<>#", false, false, true, true));
        } else {
            listB = null;
        }
        this.f4527g = listB;
        return this;
    }

    public aj f(@Nullable String str) {
        List<String> listB;
        if (str != null) {
            listB = ai.b(ai.a(str, " \"'<>#", true, false, true, true));
        } else {
            listB = null;
        }
        this.f4527g = listB;
        return this;
    }

    public aj a(String str, @Nullable String str2) {
        String strA;
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.f4527g == null) {
            this.f4527g = new ArrayList();
        }
        this.f4527g.add(ai.a(str, " \"'<>#&=", false, false, true, true));
        List<String> list = this.f4527g;
        if (str2 != null) {
            strA = ai.a(str2, " \"'<>#&=", false, false, true, true);
        } else {
            strA = null;
        }
        list.add(strA);
        return this;
    }

    public aj b(String str, @Nullable String str2) {
        String strA;
        if (str == null) {
            throw new NullPointerException("encodedName == null");
        }
        if (this.f4527g == null) {
            this.f4527g = new ArrayList();
        }
        this.f4527g.add(ai.a(str, " \"'<>#&=", true, false, true, true));
        List<String> list = this.f4527g;
        if (str2 != null) {
            strA = ai.a(str2, " \"'<>#&=", true, false, true, true);
        } else {
            strA = null;
        }
        list.add(strA);
        return this;
    }

    aj b() {
        int size = this.f4526f.size();
        for (int i = 0; i < size; i++) {
            this.f4526f.set(i, ai.a(this.f4526f.get(i), XMPConst.ARRAY_ITEM_NAME, true, true, false, true));
        }
        if (this.f4527g != null) {
            int size2 = this.f4527g.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str = this.f4527g.get(i2);
                if (str != null) {
                    this.f4527g.set(i2, ai.a(str, "\\^`{|}", true, true, true, true));
                }
            }
        }
        if (this.h != null) {
            this.h = ai.a(this.h, " \"#<>\\^`{|}", true, true, false, false);
        }
        return this;
    }

    public ai c() {
        if (this.f4521a == null) {
            throw new IllegalStateException("scheme == null");
        }
        if (this.f4524d == null) {
            throw new IllegalStateException("host == null");
        }
        return new ai(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4521a);
        sb.append("://");
        if (!this.f4522b.isEmpty() || !this.f4523c.isEmpty()) {
            sb.append(this.f4522b);
            if (!this.f4523c.isEmpty()) {
                sb.append(':');
                sb.append(this.f4523c);
            }
            sb.append('@');
        }
        if (this.f4524d.indexOf(58) != -1) {
            sb.append('[');
            sb.append(this.f4524d);
            sb.append(']');
        } else {
            sb.append(this.f4524d);
        }
        int iA = a();
        if (iA != ai.a(this.f4521a)) {
            sb.append(':');
            sb.append(iA);
        }
        ai.a(sb, this.f4526f);
        if (this.f4527g != null) {
            sb.append('?');
            ai.b(sb, this.f4527g);
        }
        if (this.h != null) {
            sb.append('#');
            sb.append(this.h);
        }
        return sb.toString();
    }

    ak a(@Nullable ai aiVar, String str) {
        byte bCharAt;
        int iA;
        int iA2 = d.a.c.a(str, 0, str.length());
        int iB = d.a.c.b(str, iA2, str.length());
        if (b(str, iA2, iB) != -1) {
            if (str.regionMatches(true, iA2, URIUtil.HTTPS_COLON, 0, 6)) {
                this.f4521a = "https";
                iA2 += URIUtil.HTTPS_COLON.length();
            } else if (str.regionMatches(true, iA2, URIUtil.HTTP_COLON, 0, 5)) {
                this.f4521a = "http";
                iA2 += URIUtil.HTTP_COLON.length();
            } else {
                return ak.UNSUPPORTED_SCHEME;
            }
        } else if (aiVar != null) {
            this.f4521a = aiVar.f4515a;
        } else {
            return ak.MISSING_SCHEME;
        }
        boolean z = false;
        boolean z2 = false;
        int iC = c(str, iA2, iB);
        if (iC >= 2 || aiVar == null || !aiVar.f4515a.equals(this.f4521a)) {
            int i = iA2 + iC;
            while (true) {
                boolean z3 = z2;
                boolean z4 = z;
                int i2 = i;
                int iA3 = d.a.c.a(str, i2, iB, "@/\\?#");
                if (iA3 != iB) {
                    bCharAt = str.charAt(iA3);
                } else {
                    bCharAt = -1;
                }
                switch (bCharAt) {
                    case -1:
                    case 35:
                    case 47:
                    case 63:
                    case 92:
                        int iD = d(str, i2, iA3);
                        if (iD + 1 < iA3) {
                            this.f4524d = e(str, i2, iD);
                            this.f4525e = f(str, iD + 1, iA3);
                            if (this.f4525e == -1) {
                                return ak.INVALID_PORT;
                            }
                        } else {
                            this.f4524d = e(str, i2, iD);
                            this.f4525e = ai.a(this.f4521a);
                        }
                        if (this.f4524d == null) {
                            return ak.INVALID_HOST;
                        }
                        iA2 = iA3;
                        break;
                    case 64:
                        if (z3) {
                            this.f4523c += "%40" + ai.a(str, i2, iA3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int iA4 = d.a.c.a(str, i2, iA3, ':');
                            String strA = ai.a(str, i2, iA4, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z4) {
                                strA = this.f4522b + "%40" + strA;
                            }
                            this.f4522b = strA;
                            if (iA4 != iA3) {
                                z3 = true;
                                this.f4523c = ai.a(str, iA4 + 1, iA3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            }
                            z4 = true;
                        }
                        i = iA3 + 1;
                        z2 = z3;
                        continue;
                        z = z4;
                        break;
                    default:
                        z2 = z3;
                        i = i2;
                        continue;
                        z = z4;
                        break;
                }
            }
        } else {
            this.f4522b = aiVar.d();
            this.f4523c = aiVar.e();
            this.f4524d = aiVar.f4516b;
            this.f4525e = aiVar.f4517c;
            this.f4526f.clear();
            this.f4526f.addAll(aiVar.i());
            if (iA2 == iB || str.charAt(iA2) == '#') {
                f(aiVar.k());
            }
        }
        int iA5 = d.a.c.a(str, iA2, iB, "?#");
        a(str, iA2, iA5);
        if (iA5 >= iB || str.charAt(iA5) != '?') {
            iA = iA5;
        } else {
            iA = d.a.c.a(str, iA5, iB, '#');
            this.f4527g = ai.b(ai.a(str, iA5 + 1, iA, " \"'<>#", true, false, true, true, null));
        }
        if (iA < iB && str.charAt(iA) == '#') {
            this.h = ai.a(str, iA + 1, iB, "", true, false, false, false, null);
        }
        return ak.SUCCESS;
    }

    private void a(String str, int i, int i2) {
        if (i != i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.f4526f.clear();
                this.f4526f.add("");
                i++;
            } else {
                this.f4526f.set(this.f4526f.size() - 1, "");
            }
            int i3 = i;
            while (i3 < i2) {
                int iA = d.a.c.a(str, i3, i2, "/\\");
                boolean z = iA < i2;
                a(str, i3, iA, z, true);
                if (z) {
                    iA++;
                }
                i3 = iA;
            }
        }
    }

    private void a(String str, int i, int i2, boolean z, boolean z2) {
        String strA = ai.a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
        if (!g(strA)) {
            if (h(strA)) {
                d();
                return;
            }
            if (this.f4526f.get(this.f4526f.size() - 1).isEmpty()) {
                this.f4526f.set(this.f4526f.size() - 1, strA);
            } else {
                this.f4526f.add(strA);
            }
            if (z) {
                this.f4526f.add("");
            }
        }
    }

    private boolean g(String str) {
        return str.equals(".") || str.equalsIgnoreCase("%2e");
    }

    private boolean h(String str) {
        return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
    }

    private void d() {
        if (this.f4526f.remove(this.f4526f.size() - 1).isEmpty() && !this.f4526f.isEmpty()) {
            this.f4526f.set(this.f4526f.size() - 1, "");
        } else {
            this.f4526f.add("");
        }
    }

    private static int b(String str, int i, int i2) {
        if (i2 - i < 2) {
            return -1;
        }
        char cCharAt = str.charAt(i);
        if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
            return -1;
        }
        for (int i3 = i + 1; i3 < i2; i3++) {
            char cCharAt2 = str.charAt(i3);
            if ((cCharAt2 < 'a' || cCharAt2 > 'z') && ((cCharAt2 < 'A' || cCharAt2 > 'Z') && ((cCharAt2 < '0' || cCharAt2 > '9') && cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.'))) {
                if (cCharAt2 == ':') {
                    return i3;
                }
                return -1;
            }
        }
        return -1;
    }

    private static int c(String str, int i, int i2) {
        int i3 = 0;
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\\' && cCharAt != '/') {
                break;
            }
            i3++;
            i++;
        }
        return i3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int d(String str, int i, int i2) {
        int i3 = i;
        while (i3 < i2) {
            switch (str.charAt(i3)) {
                case ':':
                    return i3;
                case '[':
                    do {
                        i3++;
                        if (i3 < i2) {
                        }
                        i3++;
                        break;
                    } while (str.charAt(i3) != ']');
                    i3++;
                    break;
                default:
                    i3++;
                    break;
            }
        }
        return i2;
    }

    private static String e(String str, int i, int i2) {
        return d.a.c.a(ai.a(str, i, i2, false));
    }

    private static int f(String str, int i, int i2) {
        try {
            int i3 = Integer.parseInt(ai.a(str, i, i2, "", false, false, false, true, null));
            if (i3 <= 0 || i3 > 65535) {
                return -1;
            }
            return i3;
        } catch (NumberFormatException e2) {
            return -1;
        }
    }
}
