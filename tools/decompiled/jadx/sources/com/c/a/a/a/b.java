package com.c.a.a.a;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.data.analytics.Engagement;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: Operator.java */
/* JADX INFO: loaded from: classes2.dex */
public enum b {
    NUL("", BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, false, com.c.a.a.f.U),
    RESERVED("+", BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, false, com.c.a.a.f.UR),
    NAME_LABEL(".", ".", false, com.c.a.a.f.U),
    PATH(URIUtil.SLASH, URIUtil.SLASH, false, com.c.a.a.f.U),
    MATRIX(";", ";", true, com.c.a.a.f.U),
    QUERY("?", "&", true, com.c.a.a.f.U),
    CONTINUATION("&", "&", true, com.c.a.a.f.U),
    FRAGMENT("#", BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, false, com.c.a.a.f.UR);

    private String i;
    private String j;
    private boolean k;
    private com.c.a.a.f l;

    b(String str, String str2, boolean z, com.c.a.a.f fVar) {
        this.l = com.c.a.a.f.U;
        this.i = str;
        this.j = str2;
        this.k = z;
        this.l = fVar;
    }

    public String a() {
        return this.i;
    }

    public String b() {
        return this.j;
    }

    public com.c.a.a.f c() {
        return this.l;
    }

    public boolean d() {
        return this.k;
    }

    public String e() {
        return BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR;
    }

    public boolean f() {
        return this.k;
    }

    public String g() {
        return this.i;
    }

    public static b a(String str) throws IllegalArgumentException {
        for (b bVar : values()) {
            if (!bVar.a().equalsIgnoreCase(str)) {
                if ("!".equals(str) || Engagement.Comparison.EQ.equals(str)) {
                    throw new IllegalArgumentException(str + " is not a valid operator.");
                }
            } else {
                return bVar;
            }
        }
        return null;
    }
}
