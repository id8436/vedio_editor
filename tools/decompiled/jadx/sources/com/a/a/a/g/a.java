package com.a.a.a.g;

/* JADX INFO: compiled from: DelayedMessageBag.java */
/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f471a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c f472b;

    a(c cVar) {
        this.f472b = cVar;
    }

    Long a(long j, e eVar) {
        com.a.a.a.f.b.a("flushing messages at time %s", Long.valueOf(j));
        while (this.f471a != null && this.f471a.f499c <= j) {
            b bVar = this.f471a;
            this.f471a = bVar.f498b;
            bVar.f498b = null;
            eVar.a(bVar);
        }
        if (this.f471a == null) {
            return null;
        }
        com.a.a.a.f.b.a("returning next ready at %d ns", Long.valueOf(this.f471a.f499c - j));
        return Long.valueOf(this.f471a.f499c);
    }

    void a(b bVar, long j) {
        com.a.a.a.f.b.a("add delayed message %s at time %s", bVar, Long.valueOf(j));
        bVar.f499c = j;
        if (this.f471a == null) {
            this.f471a = bVar;
            return;
        }
        b bVar2 = null;
        b bVar3 = this.f471a;
        while (bVar3 != null && bVar3.f499c <= j) {
            bVar2 = bVar3;
            bVar3 = bVar3.f498b;
        }
        if (bVar2 == null) {
            bVar.f498b = this.f471a;
            this.f471a = bVar;
        } else {
            bVar2.f498b = bVar;
            bVar.f498b = bVar3;
        }
    }

    public void a(d dVar) {
        b bVar = null;
        b bVar2 = this.f471a;
        while (bVar2 != null) {
            boolean zA = dVar.a(bVar2);
            b bVar3 = bVar2.f498b;
            if (zA) {
                if (bVar == null) {
                    this.f471a = bVar2.f498b;
                } else {
                    bVar.f498b = bVar2.f498b;
                }
                this.f472b.a(bVar2);
            } else {
                bVar = bVar2;
            }
            bVar2 = bVar3;
        }
    }
}
