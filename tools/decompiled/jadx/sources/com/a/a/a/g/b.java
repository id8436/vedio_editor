package com.a.a.a.g;

/* JADX INFO: compiled from: Message.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    b f498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f499c = Long.MIN_VALUE;

    protected abstract void a();

    protected b(i iVar) {
        this.f497a = iVar;
    }

    final void b() {
        this.f498b = null;
        this.f499c = Long.MIN_VALUE;
        a();
    }
}
