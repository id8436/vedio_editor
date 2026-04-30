package com.b.a.d.c;

import com.google.gdata.data.Category;

/* JADX INFO: compiled from: LazyHeaders.java */
/* JADX INFO: loaded from: classes2.dex */
final class o implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f945a;

    o(String str) {
        this.f945a = str;
    }

    @Override // com.b.a.d.c.l
    public String a() {
        return this.f945a;
    }

    public String toString() {
        return "StringHeaderFactory{value='" + this.f945a + '\'' + Category.SCHEME_SUFFIX;
    }

    public boolean equals(Object obj) {
        if (obj instanceof o) {
            return this.f945a.equals(((o) obj).f945a);
        }
        return false;
    }

    public int hashCode() {
        return this.f945a.hashCode();
    }
}
