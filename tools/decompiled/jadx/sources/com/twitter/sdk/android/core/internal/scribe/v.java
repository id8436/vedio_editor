package com.twitter.sdk.android.core.internal.scribe;

/* JADX INFO: compiled from: QueueFile.java */
/* JADX INFO: loaded from: classes3.dex */
class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final v f4071a = new v(0, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f4072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4073c;

    v(int i, int i2) {
        this.f4072b = i;
        this.f4073c = i2;
    }

    public String toString() {
        return getClass().getSimpleName() + "[position = " + this.f4072b + ", length = " + this.f4073c + "]";
    }
}
