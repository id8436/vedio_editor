package com.facebook.imagepipeline.l;

/* JADX INFO: compiled from: ImageRequest.java */
/* JADX INFO: loaded from: classes2.dex */
public enum c {
    FULL_FETCH(1),
    DISK_CACHE(2),
    ENCODED_MEMORY_CACHE(3),
    BITMAP_MEMORY_CACHE(4);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2857e;

    c(int i) {
        this.f2857e = i;
    }

    public int a() {
        return this.f2857e;
    }

    public static c a(c cVar, c cVar2) {
        return cVar.a() > cVar2.a() ? cVar : cVar2;
    }
}
