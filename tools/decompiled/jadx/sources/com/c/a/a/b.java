package com.c.a.a;

import com.behance.sdk.util.BehanceSDKConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: Expression.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f1295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.c.a.a.a.b f1296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<com.c.a.a.a.e> f1298d;

    public b(String str, int i) throws d {
        super(i);
        this.f1297c = i;
        a(str);
    }

    private void a(String str) throws d {
        String strQuote = Pattern.quote(str);
        String strSubstring = str.substring(1, str.length() - 1);
        com.c.a.a.a.b bVarA = com.c.a.a.a.b.NUL;
        String strSubstring2 = strSubstring.substring(0, 1);
        if (e.b(strSubstring2)) {
            try {
                bVarA = com.c.a.a.a.b.a(strSubstring2);
                strSubstring = strSubstring.substring(1, strSubstring.length());
            } catch (IllegalArgumentException e2) {
                throw new d("Invalid operator", this.f1297c, e2);
            }
        }
        String[] strArrSplit = strSubstring.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            int iIndexOf = str2.indexOf(com.c.a.a.a.a.PREFIX.a());
            if (iIndexOf > 0) {
                String[] strArrSplit2 = str2.split(com.c.a.a.a.a.PREFIX.a());
                try {
                    arrayList.add(new com.c.a.a.a.e(strArrSplit2[0], com.c.a.a.a.a.PREFIX, Integer.valueOf(str2.substring(iIndexOf + 1))));
                } catch (NumberFormatException e3) {
                    throw new d("The prefix value for " + strArrSplit2[0] + " was not a number", this.f1297c, e3);
                }
            } else if (str2.lastIndexOf(com.c.a.a.a.a.EXPLODE.a()) > 0) {
                arrayList.add(new com.c.a.a.a.e(str2, com.c.a.a.a.a.EXPLODE));
            } else {
                arrayList.add(new com.c.a.a.a.e(str2, com.c.a.a.a.a.NONE));
            }
        }
        this.f1295a = strQuote;
        this.f1296b = bVarA;
        this.f1298d = arrayList;
    }

    public String a() {
        return this.f1295a;
    }

    public com.c.a.a.a.b b() {
        return this.f1296b;
    }

    public List<com.c.a.a.a.e> c() {
        return this.f1298d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{").append(b().a());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f1298d.size()) {
                com.c.a.a.a.e eVar = this.f1298d.get(i2);
                sb.append(eVar.b());
                eVar.b().lastIndexOf(eVar.a().a());
                if (eVar.a() != null && eVar.b().lastIndexOf(eVar.a().a()) == -1) {
                    sb.append(eVar.a().a());
                }
                if (eVar.a() == com.c.a.a.a.a.PREFIX) {
                    sb.append(eVar.c());
                }
                if (i2 != this.f1298d.size() - 1) {
                    sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                i = i2 + 1;
            } else {
                return sb.append("}").toString();
            }
        }
    }

    public int hashCode() {
        return (((this.f1296b == null ? 0 : this.f1296b.hashCode()) + 31) * 31) + (this.f1298d != null ? this.f1298d.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f1296b != bVar.f1296b) {
                return false;
            }
            return this.f1298d == null ? bVar.f1298d == null : this.f1298d.equals(bVar.f1298d);
        }
        return false;
    }
}
