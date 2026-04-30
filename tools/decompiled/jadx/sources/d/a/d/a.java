package d.a.d;

import android.support.v4.media.session.PlaybackStateCompat;
import d.a.c.k;
import d.a.c.m;
import d.ag;
import d.ah;
import d.ai;
import d.ar;
import d.ax;
import d.bd;
import d.be;
import d.bf;
import e.aa;
import e.ab;
import e.ac;
import e.i;
import e.j;
import e.n;
import e.q;
import java.io.EOFException;
import java.io.IOException;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: compiled from: Http1Codec.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a implements d.a.c.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ar f4285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d.a.b.h f4286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final j f4287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final i f4288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f4289e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f4290f = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;

    public a(ar arVar, d.a.b.h hVar, j jVar, i iVar) {
        this.f4285a = arVar;
        this.f4286b = hVar;
        this.f4287c = jVar;
        this.f4288d = iVar;
    }

    @Override // d.a.c.d
    public aa a(ax axVar, long j) {
        if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(axVar.a("Transfer-Encoding"))) {
            return e();
        }
        if (j != -1) {
            return a(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // d.a.c.d
    public void c() {
        d.a.b.c cVarB = this.f4286b.b();
        if (cVarB != null) {
            cVarB.b();
        }
    }

    @Override // d.a.c.d
    public void a(ax axVar) throws IOException {
        a(axVar.c(), k.a(axVar, this.f4286b.b().a().b().type()));
    }

    @Override // d.a.c.d
    public bf a(bd bdVar) throws IOException {
        this.f4286b.f4248c.f(this.f4286b.f4247b);
        String strA = bdVar.a("Content-Type");
        if (!d.a.c.g.b(bdVar)) {
            return new d.a.c.j(strA, 0L, q.a(b(0L)));
        }
        if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(bdVar.a("Transfer-Encoding"))) {
            return new d.a.c.j(strA, -1L, q.a(a(bdVar.a().a())));
        }
        long jA = d.a.c.g.a(bdVar);
        if (jA != -1) {
            return new d.a.c.j(strA, jA, q.a(b(jA)));
        }
        return new d.a.c.j(strA, -1L, q.a(f()));
    }

    @Override // d.a.c.d
    public void a() throws IOException {
        this.f4288d.flush();
    }

    @Override // d.a.c.d
    public void b() throws IOException {
        this.f4288d.flush();
    }

    public void a(ag agVar, String str) throws IOException {
        if (this.f4289e != 0) {
            throw new IllegalStateException("state: " + this.f4289e);
        }
        this.f4288d.b(str).b("\r\n");
        int iA = agVar.a();
        for (int i = 0; i < iA; i++) {
            this.f4288d.b(agVar.a(i)).b(": ").b(agVar.b(i)).b("\r\n");
        }
        this.f4288d.b("\r\n");
        this.f4289e = 1;
    }

    @Override // d.a.c.d
    public be a(boolean z) throws IOException {
        if (this.f4289e != 1 && this.f4289e != 3) {
            throw new IllegalStateException("state: " + this.f4289e);
        }
        try {
            m mVarA = m.a(g());
            be beVarA = new be().a(mVarA.f4282a).a(mVarA.f4283b).a(mVarA.f4284c).a(d());
            if (z && mVarA.f4283b == 100) {
                return null;
            }
            this.f4289e = 4;
            return beVarA;
        } catch (EOFException e2) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f4286b);
            iOException.initCause(e2);
            throw iOException;
        }
    }

    private String g() throws IOException {
        String strE = this.f4287c.e(this.f4290f);
        this.f4290f -= (long) strE.length();
        return strE;
    }

    public ag d() throws IOException {
        ah ahVar = new ah();
        while (true) {
            String strG = g();
            if (strG.length() != 0) {
                d.a.a.f4187a.a(ahVar, strG);
            } else {
                return ahVar.a();
            }
        }
    }

    public aa e() {
        if (this.f4289e != 1) {
            throw new IllegalStateException("state: " + this.f4289e);
        }
        this.f4289e = 2;
        return new d(this);
    }

    public aa a(long j) {
        if (this.f4289e != 1) {
            throw new IllegalStateException("state: " + this.f4289e);
        }
        this.f4289e = 2;
        return new f(this, j);
    }

    public ab b(long j) throws IOException {
        if (this.f4289e != 4) {
            throw new IllegalStateException("state: " + this.f4289e);
        }
        this.f4289e = 5;
        return new g(this, j);
    }

    public ab a(ai aiVar) throws IOException {
        if (this.f4289e != 4) {
            throw new IllegalStateException("state: " + this.f4289e);
        }
        this.f4289e = 5;
        return new e(this, aiVar);
    }

    public ab f() throws IOException {
        if (this.f4289e != 4) {
            throw new IllegalStateException("state: " + this.f4289e);
        }
        if (this.f4286b == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f4289e = 5;
        this.f4286b.d();
        return new h(this);
    }

    void a(n nVar) {
        ac acVarA = nVar.a();
        nVar.a(ac.f4705c);
        acVarA.f();
        acVarA.d_();
    }
}
