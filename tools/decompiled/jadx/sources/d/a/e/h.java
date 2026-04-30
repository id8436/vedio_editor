package d.a.e;

import com.google.gdata.data.appsforyourdomain.migration.Rfc822Msg;
import d.ar;
import d.au;
import d.ax;
import d.bd;
import d.be;
import d.bf;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: compiled from: Http2Codec.java */
/* JADX INFO: loaded from: classes3.dex */
public final class h implements d.a.c.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final e.k f4386b = e.k.a("connection");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final e.k f4387c = e.k.a("host");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final e.k f4388d = e.k.a(HttpHeaderValues.KEEP_ALIVE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final e.k f4389e = e.k.a("proxy-connection");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final e.k f4390f = e.k.a("transfer-encoding");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final e.k f4391g = e.k.a("te");
    private static final e.k h = e.k.a(Rfc822Msg.ATTRIBUTE_ENCODING);
    private static final e.k i = e.k.a("upgrade");
    private static final List<e.k> j = d.a.c.a(f4386b, f4387c, f4388d, f4389e, f4391g, f4390f, h, i, c.f4361c, c.f4362d, c.f4363e, c.f4364f);
    private static final List<e.k> k = d.a.c.a(f4386b, f4387c, f4388d, f4389e, f4391g, f4390f, h, i);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final d.a.b.h f4392a;
    private final ar l;
    private final d.am m;
    private final j n;
    private ab o;

    public h(ar arVar, d.am amVar, d.a.b.h hVar, j jVar) {
        this.l = arVar;
        this.m = amVar;
        this.f4392a = hVar;
        this.n = jVar;
    }

    @Override // d.a.c.d
    public e.aa a(ax axVar, long j2) {
        return this.o.h();
    }

    @Override // d.a.c.d
    public void a(ax axVar) throws IOException {
        if (this.o == null) {
            this.o = this.n.a(b(axVar), axVar.d() != null);
            this.o.e().a(this.m.c(), TimeUnit.MILLISECONDS);
            this.o.f().a(this.m.d(), TimeUnit.MILLISECONDS);
        }
    }

    @Override // d.a.c.d
    public void a() throws IOException {
        this.n.b();
    }

    @Override // d.a.c.d
    public void b() throws IOException {
        this.o.h().close();
    }

    @Override // d.a.c.d
    public be a(boolean z) throws IOException {
        be beVarA = a(this.o.d());
        if (z && d.a.a.f4187a.a(beVarA) == 100) {
            return null;
        }
        return beVarA;
    }

    public static List<c> b(ax axVar) {
        d.ag agVarC = axVar.c();
        ArrayList arrayList = new ArrayList(agVarC.a() + 4);
        arrayList.add(new c(c.f4361c, axVar.b()));
        arrayList.add(new c(c.f4362d, d.a.c.k.a(axVar.a())));
        String strA = axVar.a("Host");
        if (strA != null) {
            arrayList.add(new c(c.f4364f, strA));
        }
        arrayList.add(new c(c.f4363e, axVar.a().b()));
        int iA = agVarC.a();
        for (int i2 = 0; i2 < iA; i2++) {
            e.k kVarA = e.k.a(agVarC.a(i2).toLowerCase(Locale.US));
            if (!j.contains(kVarA)) {
                arrayList.add(new c(kVarA, agVarC.b(i2)));
            }
        }
        return arrayList;
    }

    public static be a(List<c> list) throws IOException {
        d.a.c.m mVarA;
        d.ah ahVar;
        d.ah ahVar2 = new d.ah();
        int size = list.size();
        int i2 = 0;
        d.a.c.m mVar = null;
        while (i2 < size) {
            c cVar = list.get(i2);
            if (cVar == null) {
                if (mVar == null || mVar.f4283b != 100) {
                    ahVar = ahVar2;
                    mVarA = mVar;
                } else {
                    ahVar = new d.ah();
                    mVarA = null;
                }
            } else {
                e.k kVar = cVar.f4365g;
                String strA = cVar.h.a();
                if (kVar.equals(c.f4360b)) {
                    d.ah ahVar3 = ahVar2;
                    mVarA = d.a.c.m.a("HTTP/1.1 " + strA);
                    ahVar = ahVar3;
                } else {
                    if (!k.contains(kVar)) {
                        d.a.a.f4187a.a(ahVar2, kVar.a(), strA);
                    }
                    ahVar = ahVar2;
                    mVarA = mVar;
                }
            }
            i2++;
            mVar = mVarA;
            ahVar2 = ahVar;
        }
        if (mVar == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        return new be().a(au.HTTP_2).a(mVar.f4283b).a(mVar.f4284c).a(ahVar2.a());
    }

    @Override // d.a.c.d
    public bf a(bd bdVar) throws IOException {
        this.f4392a.f4248c.f(this.f4392a.f4247b);
        return new d.a.c.j(bdVar.a("Content-Type"), d.a.c.g.a(bdVar), e.q.a(new i(this, this.o.g())));
    }

    @Override // d.a.c.d
    public void c() {
        if (this.o != null) {
            this.o.b(b.CANCEL);
        }
    }
}
