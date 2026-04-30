package com.a.a.a;

/* JADX INFO: compiled from: JobManagerThread.java */
/* JADX INFO: loaded from: classes.dex */
class y extends com.a.a.a.g.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f639a;

    y(x xVar) {
        this.f639a = xVar;
    }

    @Override // com.a.a.a.g.f
    public void a(com.a.a.a.g.b bVar) {
        boolean z = true;
        this.f639a.r = true;
        switch (bVar.f497a) {
            case ADD_JOB:
                this.f639a.a((com.a.a.a.g.a.a) bVar);
                break;
            case JOB_CONSUMER_IDLE:
                if (!this.f639a.f635d.a((com.a.a.a.g.a.g) bVar)) {
                    this.f639a.e();
                }
                break;
            case RUN_JOB_RESULT:
                this.f639a.a((com.a.a.a.g.a.j) bVar);
                break;
            case CONSTRAINT_CHANGE:
                boolean zB = this.f639a.f635d.b();
                com.a.a.a.g.a.f fVar = (com.a.a.a.g.a.f) bVar;
                x xVar = this.f639a;
                if (!zB && fVar.c()) {
                    z = false;
                }
                xVar.r = z;
                break;
            case CANCEL:
                this.f639a.a((com.a.a.a.g.a.c) bVar);
                break;
            case PUBLIC_QUERY:
                this.f639a.a((com.a.a.a.g.a.h) bVar);
                break;
            case COMMAND:
                this.f639a.a((com.a.a.a.g.a.e) bVar);
                break;
            case SCHEDULER:
                this.f639a.a((com.a.a.a.g.a.k) bVar);
                break;
        }
    }

    @Override // com.a.a.a.g.f
    public void b() {
        com.a.a.a.f.b.c("joq idle. running:? %s", Boolean.valueOf(this.f639a.p));
        if (this.f639a.p) {
            if (!this.f639a.r) {
                com.a.a.a.f.b.c("skipping scheduling a new idle callback because looks like last one did not do anything", new Object[0]);
                return;
            }
            Long lA = this.f639a.a(true);
            com.a.a.a.f.b.a("Job queue idle. next job at: %s", lA);
            if (lA != null) {
                com.a.a.a.g.a.f fVar = (com.a.a.a.g.a.f) this.f639a.m.a(com.a.a.a.g.a.f.class);
                fVar.a(true);
                this.f639a.f638g.a(fVar, lA.longValue());
            } else if (this.f639a.h != null && this.f639a.q && this.f639a.f633b.a() == 0) {
                this.f639a.q = false;
                this.f639a.h.a();
            }
        }
    }
}
