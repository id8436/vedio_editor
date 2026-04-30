package d.a.a;

import d.a.c.j;
import d.ag;
import d.ah;
import d.al;
import d.am;
import d.au;
import d.ax;
import d.bd;
import d.be;
import d.bf;
import e.aa;
import e.q;
import java.io.IOException;
import org.mortbay.jetty.HttpHeaders;

/* JADX INFO: compiled from: CacheInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final i f4188a;

    public a(i iVar) {
        this.f4188a = iVar;
    }

    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        bd bdVarA = this.f4188a != null ? this.f4188a.a(amVar.a()) : null;
        d dVarA = new e(System.currentTimeMillis(), amVar.a(), bdVarA).a();
        ax axVar = dVarA.f4194a;
        bd bdVar = dVarA.f4195b;
        if (this.f4188a != null) {
            this.f4188a.a(dVarA);
        }
        if (bdVarA != null && bdVar == null) {
            d.a.c.a(bdVarA.f());
        }
        if (axVar == null && bdVar == null) {
            return new be().a(amVar.a()).a(au.HTTP_1_1).a(504).a("Unsatisfiable Request (only-if-cached)").a(d.a.c.f4255c).a(-1L).b(System.currentTimeMillis()).a();
        }
        if (axVar == null) {
            return bdVar.g().b(a(bdVar)).a();
        }
        try {
            bd bdVarA2 = amVar.a(axVar);
            if (bdVarA2 == null && bdVarA != null) {
                d.a.c.a(bdVarA.f());
            }
            if (bdVar != null) {
                if (bdVarA2.b() == 304) {
                    bd bdVarA3 = bdVar.g().a(a(bdVar.e(), bdVarA2.e())).a(bdVarA2.j()).b(bdVarA2.k()).b(a(bdVar)).a(a(bdVarA2)).a();
                    bdVarA2.f().close();
                    this.f4188a.a();
                    this.f4188a.a(bdVar, bdVarA3);
                    return bdVarA3;
                }
                d.a.c.a(bdVar.f());
            }
            bd bdVarA4 = bdVarA2.g().b(a(bdVar)).a(a(bdVarA2)).a();
            if (this.f4188a != null) {
                if (d.a.c.g.b(bdVarA4) && d.a(bdVarA4, axVar)) {
                    return a(this.f4188a.a(bdVarA4), bdVarA4);
                }
                if (d.a.c.h.a(axVar.b())) {
                    try {
                        this.f4188a.b(axVar);
                        return bdVarA4;
                    } catch (IOException e2) {
                        return bdVarA4;
                    }
                }
                return bdVarA4;
            }
            return bdVarA4;
        } catch (Throwable th) {
            if (0 == 0 && bdVarA != null) {
                d.a.c.a(bdVarA.f());
            }
            throw th;
        }
    }

    private static bd a(bd bdVar) {
        if (bdVar == null || bdVar.f() == null) {
            return bdVar;
        }
        return bdVar.g().a((bf) null).a();
    }

    private bd a(c cVar, bd bdVar) throws IOException {
        aa aaVarA;
        if (cVar != null && (aaVarA = cVar.a()) != null) {
            return bdVar.g().a(new j(bdVar.a("Content-Type"), bdVar.f().b(), q.a(new b(this, bdVar.f().d(), cVar, q.a(aaVarA))))).a();
        }
        return bdVar;
    }

    private static ag a(ag agVar, ag agVar2) {
        ah ahVar = new ah();
        int iA = agVar.a();
        for (int i = 0; i < iA; i++) {
            String strA = agVar.a(i);
            String strB = agVar.b(i);
            if ((!"Warning".equalsIgnoreCase(strA) || !strB.startsWith("1")) && (!a(strA) || agVar2.a(strA) == null)) {
                d.a.a.f4187a.a(ahVar, strA, strB);
            }
        }
        int iA2 = agVar2.a();
        for (int i2 = 0; i2 < iA2; i2++) {
            String strA2 = agVar2.a(i2);
            if (!"Content-Length".equalsIgnoreCase(strA2) && a(strA2)) {
                d.a.a.f4187a.a(ahVar, strA2, agVar2.b(i2));
            }
        }
        return ahVar.a();
    }

    static boolean a(String str) {
        return ("Connection".equalsIgnoreCase(str) || HttpHeaders.KEEP_ALIVE.equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }
}
