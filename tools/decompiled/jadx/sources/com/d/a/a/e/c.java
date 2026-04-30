package com.d.a.a.e;

import java.io.IOException;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: DefaultIndenter.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f1465b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final char[] f1466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f1468f;

    static {
        String property;
        try {
            property = System.getProperty("line.separator");
        } catch (Throwable th) {
            property = IOUtils.LINE_SEPARATOR_UNIX;
        }
        f1464a = property;
        f1465b = new c("  ", f1464a);
    }

    public c() {
        this("  ", f1464a);
    }

    public c(String str, String str2) {
        this.f1467e = str.length();
        this.f1466d = new char[str.length() * 16];
        int length = 0;
        for (int i = 0; i < 16; i++) {
            str.getChars(0, str.length(), this.f1466d, length);
            length += str.length();
        }
        this.f1468f = str2;
    }

    @Override // com.d.a.a.e.g, com.d.a.a.e.f
    public boolean a() {
        return false;
    }

    @Override // com.d.a.a.e.g, com.d.a.a.e.f
    public void a(com.d.a.a.g gVar, int i) throws IOException {
        gVar.c(this.f1468f);
        if (i > 0) {
            int length = this.f1467e * i;
            while (length > this.f1466d.length) {
                gVar.a(this.f1466d, 0, this.f1466d.length);
                length -= this.f1466d.length;
            }
            gVar.a(this.f1466d, 0, length);
        }
    }
}
