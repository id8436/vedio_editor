package d.a.c;

import d.al;
import d.am;
import d.ax;
import d.bd;
import d.be;
import e.q;
import java.io.IOException;
import java.net.ProtocolException;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: compiled from: CallServerInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f4261a;

    public b(boolean z) {
        this.f4261a = z;
    }

    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        be beVarA;
        bd bdVarA;
        i iVar = (i) amVar;
        d dVarG = iVar.g();
        d.a.b.h hVarF = iVar.f();
        d.a.b.c cVar = (d.a.b.c) iVar.e();
        ax axVarA = iVar.a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        iVar.i().c(iVar.h());
        dVarG.a(axVarA);
        iVar.i().a(iVar.h(), axVarA);
        be beVarA2 = null;
        if (!h.c(axVarA.b()) || axVarA.d() == null) {
            beVarA = null;
        } else {
            if (HttpHeaderValues.CONTINUE.equalsIgnoreCase(axVarA.a("Expect"))) {
                dVarG.a();
                iVar.i().e(iVar.h());
                beVarA2 = dVarG.a(true);
            }
            if (beVarA2 == null) {
                iVar.i().d(iVar.h());
                c cVar2 = new c(dVarG.a(axVarA, axVarA.d().contentLength()));
                e.i iVarA = q.a(cVar2);
                axVarA.d().writeTo(iVarA);
                iVarA.close();
                iVar.i().a(iVar.h(), cVar2.f4262a);
                beVarA = beVarA2;
            } else {
                if (!cVar.e()) {
                    hVarF.d();
                }
                beVarA = beVarA2;
            }
        }
        dVarG.b();
        if (beVarA == null) {
            iVar.i().e(iVar.h());
            beVarA = dVarG.a(false);
        }
        bd bdVarA2 = beVarA.a(axVarA).a(hVarF.b().d()).a(jCurrentTimeMillis).b(System.currentTimeMillis()).a();
        iVar.i().a(iVar.h(), bdVarA2);
        int iB = bdVarA2.b();
        if (this.f4261a && iB == 101) {
            bdVarA = bdVarA2.g().a(d.a.c.f4255c).a();
        } else {
            bdVarA = bdVarA2.g().a(dVarG.a(bdVarA2)).a();
        }
        if (HttpHeaderValues.CLOSE.equalsIgnoreCase(bdVarA.a().a("Connection")) || HttpHeaderValues.CLOSE.equalsIgnoreCase(bdVarA.a("Connection"))) {
            hVarF.d();
        }
        if ((iB == 204 || iB == 205) && bdVarA.f().b() > 0) {
            throw new ProtocolException("HTTP " + iB + " had non-zero Content-Length: " + bdVarA.f().b());
        }
        return bdVarA;
    }
}
