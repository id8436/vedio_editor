package d.a.e;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class u extends d.a.b implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final y f4437a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ j f4438c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    u(j jVar, y yVar) {
        super("OkHttp %s", jVar.f4400e);
        this.f4438c = jVar;
        this.f4437a = yVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [d.a.e.b] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [d.a.e.b] */
    /* JADX WARN: Type inference failed for: r1v1, types: [d.a.e.b] */
    /* JADX WARN: Type inference failed for: r1v2, types: [d.a.e.b] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r2v0, types: [d.a.e.b] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [d.a.e.j] */
    /* JADX WARN: Type inference failed for: r2v4, types: [d.a.e.b] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [d.a.e.j] */
    /* JADX WARN: Type inference failed for: r3v0, types: [d.a.e.j] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // d.a.b
    protected void b() throws Throwable {
        ?? r1;
        ?? r0 = b.INTERNAL_ERROR;
        ?? r2 = b.INTERNAL_ERROR;
        try {
            try {
                this.f4437a.a(this);
                while (this.f4437a.a(false, (aa) this)) {
                }
                r0 = b.NO_ERROR;
                b bVar = b.CANCEL;
                try {
                    r2 = this.f4438c;
                    r2.a(r0, bVar);
                } catch (IOException e2) {
                }
                y yVar = this.f4437a;
                d.a.c.a(yVar);
                r0 = yVar;
                r2 = r2;
            } catch (Throwable th) {
                r1 = r0;
                th = th;
                try {
                    this.f4438c.a(r1, r2);
                } catch (IOException e3) {
                }
                d.a.c.a(this.f4437a);
                throw th;
            }
        } catch (IOException e4) {
            r1 = b.PROTOCOL_ERROR;
            try {
                b bVar2 = b.PROTOCOL_ERROR;
                try {
                    r2 = this.f4438c;
                    r2.a(r1, bVar2);
                } catch (IOException e5) {
                }
                y yVar2 = this.f4437a;
                d.a.c.a(yVar2);
                r0 = yVar2;
                r2 = r2;
            } catch (Throwable th2) {
                th = th2;
                this.f4438c.a(r1, r2);
                d.a.c.a(this.f4437a);
                throw th;
            }
        }
    }

    @Override // d.a.e.aa
    public void a(boolean z, int i, e.j jVar, int i2) throws IOException {
        if (this.f4438c.d(i)) {
            this.f4438c.a(i, jVar, i2, z);
            return;
        }
        ab abVarA = this.f4438c.a(i);
        if (abVarA == null) {
            this.f4438c.a(i, b.PROTOCOL_ERROR);
            jVar.h(i2);
        } else {
            abVarA.a(jVar, i2);
            if (z) {
                abVarA.i();
            }
        }
    }

    @Override // d.a.e.aa
    public void a(boolean z, int i, int i2, List<c> list) {
        if (this.f4438c.d(i)) {
            this.f4438c.a(i, list, z);
            return;
        }
        synchronized (this.f4438c) {
            ab abVarA = this.f4438c.a(i);
            if (abVarA == null) {
                if (!this.f4438c.h) {
                    if (i > this.f4438c.f4401f) {
                        if (i % 2 != this.f4438c.f4402g % 2) {
                            ab abVar = new ab(i, this.f4438c, false, z, list);
                            this.f4438c.f4401f = i;
                            this.f4438c.f4399d.put(Integer.valueOf(i), abVar);
                            j.f4396a.execute(new v(this, "OkHttp %s stream %d", new Object[]{this.f4438c.f4400e, Integer.valueOf(i)}, abVar));
                        }
                    }
                }
            } else {
                abVarA.a(list);
                if (z) {
                    abVarA.i();
                }
            }
        }
    }

    @Override // d.a.e.aa
    public void a(int i, b bVar) {
        if (this.f4438c.d(i)) {
            this.f4438c.c(i, bVar);
            return;
        }
        ab abVarB = this.f4438c.b(i);
        if (abVarB != null) {
            abVarB.c(bVar);
        }
    }

    @Override // d.a.e.aa
    public void a(boolean z, al alVar) {
        ab[] abVarArr;
        long j;
        synchronized (this.f4438c) {
            int iD = this.f4438c.m.d();
            if (z) {
                this.f4438c.m.a();
            }
            this.f4438c.m.a(alVar);
            a(alVar);
            int iD2 = this.f4438c.m.d();
            if (iD2 == -1 || iD2 == iD) {
                abVarArr = null;
                j = 0;
            } else {
                long j2 = iD2 - iD;
                if (!this.f4438c.n) {
                    this.f4438c.a(j2);
                    this.f4438c.n = true;
                }
                if (this.f4438c.f4399d.isEmpty()) {
                    j = j2;
                    abVarArr = null;
                } else {
                    j = j2;
                    abVarArr = (ab[]) this.f4438c.f4399d.values().toArray(new ab[this.f4438c.f4399d.size()]);
                }
            }
            j.f4396a.execute(new w(this, "OkHttp %s settings", this.f4438c.f4400e));
        }
        if (abVarArr != null && j != 0) {
            for (ab abVar : abVarArr) {
                synchronized (abVar) {
                    abVar.a(j);
                }
            }
        }
    }

    private void a(al alVar) {
        j.f4396a.execute(new x(this, "OkHttp %s ACK Settings", new Object[]{this.f4438c.f4400e}, alVar));
    }

    @Override // d.a.e.aa
    public void a() {
    }

    @Override // d.a.e.aa
    public void a(boolean z, int i, int i2) {
        if (z) {
            ai aiVarC = this.f4438c.c(i);
            if (aiVarC != null) {
                aiVarC.b();
                return;
            }
            return;
        }
        this.f4438c.a(true, i, i2, (ai) null);
    }

    @Override // d.a.e.aa
    public void a(int i, b bVar, e.k kVar) {
        ab[] abVarArr;
        if (kVar.g() > 0) {
        }
        synchronized (this.f4438c) {
            abVarArr = (ab[]) this.f4438c.f4399d.values().toArray(new ab[this.f4438c.f4399d.size()]);
            this.f4438c.h = true;
        }
        for (ab abVar : abVarArr) {
            if (abVar.a() > i && abVar.c()) {
                abVar.c(b.REFUSED_STREAM);
                this.f4438c.b(abVar.a());
            }
        }
    }

    @Override // d.a.e.aa
    public void a(int i, long j) {
        if (i == 0) {
            synchronized (this.f4438c) {
                this.f4438c.k += j;
                this.f4438c.notifyAll();
            }
            return;
        }
        ab abVarA = this.f4438c.a(i);
        if (abVarA != null) {
            synchronized (abVarA) {
                abVarA.a(j);
            }
        }
    }

    @Override // d.a.e.aa
    public void a(int i, int i2, int i3, boolean z) {
    }

    @Override // d.a.e.aa
    public void a(int i, int i2, List<c> list) {
        this.f4438c.a(i2, list);
    }
}
