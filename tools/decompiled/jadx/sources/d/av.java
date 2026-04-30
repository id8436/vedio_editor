package d;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: RealCall.java */
/* JADX INFO: loaded from: classes3.dex */
final class av implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ar f4572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d.a.c.l f4573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ax f4574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f4575d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private z f4576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4577f;

    private av(ar arVar, ax axVar, boolean z) {
        this.f4572a = arVar;
        this.f4574c = axVar;
        this.f4575d = z;
        this.f4573b = new d.a.c.l(arVar, z);
    }

    static av a(ar arVar, ax axVar, boolean z) {
        av avVar = new av(arVar, axVar, z);
        avVar.f4576e = arVar.x().a(avVar);
        return avVar;
    }

    @Override // d.g
    public bd a() throws IOException {
        synchronized (this) {
            if (this.f4577f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f4577f = true;
        }
        h();
        this.f4576e.a(this);
        try {
            try {
                this.f4572a.s().a(this);
                bd bdVarG = g();
                if (bdVarG == null) {
                    throw new IOException("Canceled");
                }
                return bdVarG;
            } catch (IOException e2) {
                this.f4576e.a(this, e2);
                throw e2;
            }
        } finally {
            this.f4572a.s().b(this);
        }
        this.f4572a.s().b(this);
    }

    private void h() {
        this.f4573b.a(d.a.g.i.b().a("response.body().close()"));
    }

    @Override // d.g
    public void a(i iVar) {
        synchronized (this) {
            if (this.f4577f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f4577f = true;
        }
        h();
        this.f4576e.a(this);
        this.f4572a.s().a(new aw(this, iVar));
    }

    @Override // d.g
    public void b() {
        this.f4573b.a();
    }

    @Override // d.g
    public boolean c() {
        return this.f4573b.b();
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public av clone() {
        return a(this.f4572a, this.f4574c, this.f4575d);
    }

    String e() {
        return (c() ? "canceled " : "") + (this.f4575d ? "web socket" : NotificationCompat.CATEGORY_CALL) + " to " + f();
    }

    String f() {
        return this.f4574c.a().o();
    }

    bd g() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f4572a.v());
        arrayList.add(this.f4573b);
        arrayList.add(new d.a.c.a(this.f4572a.f()));
        arrayList.add(new d.a.a.a(this.f4572a.g()));
        arrayList.add(new d.a.b.a(this.f4572a));
        if (!this.f4575d) {
            arrayList.addAll(this.f4572a.w());
        }
        arrayList.add(new d.a.c.b(this.f4575d));
        return new d.a.c.i(arrayList, null, null, null, 0, this.f4574c, this, this.f4576e, this.f4572a.a(), this.f4572a.b(), this.f4572a.c()).a(this.f4574c);
    }
}
