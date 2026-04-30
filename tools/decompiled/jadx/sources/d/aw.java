package d;

import java.io.IOException;

/* JADX INFO: compiled from: RealCall.java */
/* JADX INFO: loaded from: classes3.dex */
final class aw extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ av f4578a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f4579c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aw(av avVar, i iVar) {
        super("OkHttp %s", avVar.f());
        this.f4578a = avVar;
        this.f4579c = iVar;
    }

    String a() {
        return this.f4578a.f4574c.a().f();
    }

    @Override // d.a.b
    protected void b() {
        boolean z = true;
        try {
            try {
                bd bdVarG = this.f4578a.g();
                try {
                    if (this.f4578a.f4573b.b()) {
                        this.f4579c.onFailure(this.f4578a, new IOException("Canceled"));
                    } else {
                        this.f4579c.onResponse(this.f4578a, bdVarG);
                    }
                } catch (IOException e2) {
                    e = e2;
                    if (!z) {
                        this.f4578a.f4576e.a(this.f4578a, e);
                        this.f4579c.onFailure(this.f4578a, e);
                    } else {
                        d.a.g.i.b().a(4, "Callback failure for " + this.f4578a.e(), e);
                    }
                }
            } catch (IOException e3) {
                e = e3;
                z = false;
            }
        } finally {
            this.f4578a.f4572a.s().b(this);
        }
    }
}
