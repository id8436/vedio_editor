package d.a.c;

import d.al;
import d.am;
import d.an;
import d.ax;
import d.ay;
import d.az;
import d.bd;
import d.be;
import d.t;
import d.u;
import e.o;
import e.q;
import java.io.IOException;
import java.util.List;
import org.mortbay.jetty.HttpHeaderValues;
import org.mortbay.jetty.HttpHeaders;

/* JADX INFO: compiled from: BridgeInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f4260a;

    public a(u uVar) {
        this.f4260a = uVar;
    }

    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        boolean z = false;
        ax axVarA = amVar.a();
        ay ayVarE = axVarA.e();
        az azVarD = axVarA.d();
        if (azVarD != null) {
            an anVarContentType = azVarD.contentType();
            if (anVarContentType != null) {
                ayVarE.a("Content-Type", anVarContentType.toString());
            }
            long jContentLength = azVarD.contentLength();
            if (jContentLength != -1) {
                ayVarE.a("Content-Length", Long.toString(jContentLength));
                ayVarE.b("Transfer-Encoding");
            } else {
                ayVarE.a("Transfer-Encoding", HttpHeaderValues.CHUNKED);
                ayVarE.b("Content-Length");
            }
        }
        if (axVarA.a("Host") == null) {
            ayVarE.a("Host", d.a.c.a(axVarA.a(), false));
        }
        if (axVarA.a("Connection") == null) {
            ayVarE.a("Connection", HttpHeaders.KEEP_ALIVE);
        }
        if (axVarA.a("Accept-Encoding") == null && axVarA.a("Range") == null) {
            z = true;
            ayVarE.a("Accept-Encoding", HttpHeaderValues.GZIP);
        }
        List<t> listA = this.f4260a.a(axVarA.a());
        if (!listA.isEmpty()) {
            ayVarE.a("Cookie", a(listA));
        }
        if (axVarA.a("User-Agent") == null) {
            ayVarE.a("User-Agent", d.a.f.a());
        }
        bd bdVarA = amVar.a(ayVarE.b());
        g.a(this.f4260a, axVarA.a(), bdVarA.e());
        be beVarA = bdVarA.g().a(axVarA);
        if (z && HttpHeaderValues.GZIP.equalsIgnoreCase(bdVarA.a("Content-Encoding")) && g.b(bdVarA)) {
            o oVar = new o(bdVarA.f().d());
            beVarA.a(bdVarA.e().c().b("Content-Encoding").b("Content-Length").a());
            beVarA.a(new j(bdVarA.a("Content-Type"), -1L, q.a(oVar)));
        }
        return beVarA.a();
    }

    private String a(List<t> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            t tVar = list.get(i);
            sb.append(tVar.a()).append('=').append(tVar.b());
        }
        return sb.toString();
    }
}
