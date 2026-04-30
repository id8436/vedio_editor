package com.facebook.d.d;

import com.google.gdata.data.Category;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Objects.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f1936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f1937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1938d;

    private i(String str) {
        this.f1936b = new j();
        this.f1937c = this.f1936b;
        this.f1938d = false;
        this.f1935a = (String) k.a(str);
    }

    public i a(String str, @Nullable Object obj) {
        return b(str, obj);
    }

    public i a(String str, boolean z) {
        return b(str, String.valueOf(z));
    }

    public i a(String str, int i) {
        return b(str, String.valueOf(i));
    }

    public String toString() {
        boolean z = this.f1938d;
        StringBuilder sbAppend = new StringBuilder(32).append(this.f1935a).append(Category.SCHEME_PREFIX);
        String str = "";
        for (j jVar = this.f1936b.f1941c; jVar != null; jVar = jVar.f1941c) {
            if (!z || jVar.f1940b != null) {
                sbAppend.append(str);
                str = ", ";
                if (jVar.f1939a != null) {
                    sbAppend.append(jVar.f1939a).append('=');
                }
                sbAppend.append(jVar.f1940b);
            }
        }
        return sbAppend.append(Category.SCHEME_SUFFIX).toString();
    }

    private j a() {
        j jVar = new j();
        this.f1937c.f1941c = jVar;
        this.f1937c = jVar;
        return jVar;
    }

    private i b(String str, @Nullable Object obj) {
        j jVarA = a();
        jVarA.f1940b = obj;
        jVarA.f1939a = (String) k.a(str);
        return this;
    }
}
