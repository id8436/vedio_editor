package com.b.a.d.b;

/* JADX INFO: compiled from: Engine.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.b.b.b f875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile com.b.a.d.b.b.a f876b;

    public h(com.b.a.d.b.b.b bVar) {
        this.f875a = bVar;
    }

    @Override // com.b.a.d.b.b
    public com.b.a.d.b.b.a a() {
        if (this.f876b == null) {
            synchronized (this) {
                if (this.f876b == null) {
                    this.f876b = this.f875a.a();
                }
                if (this.f876b == null) {
                    this.f876b = new com.b.a.d.b.b.d();
                }
            }
        }
        return this.f876b;
    }
}
