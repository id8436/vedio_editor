package com.a.a.a;

/* JADX INFO: compiled from: CallbackManager.java */
/* JADX INFO: loaded from: classes.dex */
class f extends com.a.a.a.g.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f462a = Long.MIN_VALUE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f463b;

    f(e eVar) {
        this.f463b = eVar;
    }

    @Override // com.a.a.a.g.f
    public void a() {
    }

    @Override // com.a.a.a.g.f
    public void a(com.a.a.a.g.b bVar) {
        if (bVar.f497a == com.a.a.a.g.i.CALLBACK) {
            this.f463b.f455a.a((com.a.a.a.g.a.b) bVar);
            this.f462a = this.f463b.f455a.f453e.a();
            return;
        }
        if (bVar.f497a == com.a.a.a.g.i.CANCEL_RESULT_CALLBACK) {
            this.f463b.f455a.a((com.a.a.a.g.a.d) bVar);
            this.f462a = this.f463b.f455a.f453e.a();
            return;
        }
        if (bVar.f497a == com.a.a.a.g.i.COMMAND) {
            com.a.a.a.g.a.e eVar = (com.a.a.a.g.a.e) bVar;
            int iC = eVar.c();
            if (iC == 1) {
                this.f463b.f455a.f449a.a();
                this.f463b.f455a.f454f.set(false);
                return;
            } else {
                if (iC == 3) {
                    eVar.d().run();
                    return;
                }
                return;
            }
        }
        if (bVar.f497a == com.a.a.a.g.i.PUBLIC_QUERY) {
            ((com.a.a.a.g.a.h) bVar).c().a(0);
        }
    }

    @Override // com.a.a.a.g.f
    public void b() {
    }
}
