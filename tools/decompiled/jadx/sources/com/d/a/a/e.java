package com.d.a.a;

/* JADX INFO: compiled from: JsonFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public enum e {
    INTERN_FIELD_NAMES(true),
    CANONICALIZE_FIELD_NAMES(true),
    FAIL_ON_SYMBOL_HASH_OVERFLOW(true),
    USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING(true);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f1453e;

    public static int a() {
        int iC = 0;
        for (e eVar : values()) {
            if (eVar.b()) {
                iC |= eVar.c();
            }
        }
        return iC;
    }

    e(boolean z) {
        this.f1453e = z;
    }

    public boolean b() {
        return this.f1453e;
    }

    public boolean a(int i) {
        return (c() & i) != 0;
    }

    public int c() {
        return 1 << ordinal();
    }
}
