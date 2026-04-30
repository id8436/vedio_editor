package com.a.a.a.g.a;

/* JADX INFO: compiled from: CancelResultMessage.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends com.a.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.a.a.a.i f481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.a.a.a.h f482e;

    public d() {
        super(com.a.a.a.g.i.CANCEL_RESULT_CALLBACK);
    }

    @Override // com.a.a.a.g.b
    protected void a() {
        this.f482e = null;
        this.f481d = null;
    }

    public void a(com.a.a.a.i iVar, com.a.a.a.h hVar) {
        this.f481d = iVar;
        this.f482e = hVar;
    }

    public com.a.a.a.i c() {
        return this.f481d;
    }

    public com.a.a.a.h d() {
        return this.f482e;
    }
}
