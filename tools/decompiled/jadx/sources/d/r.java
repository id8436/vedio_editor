package d;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: ConnectionSpec.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f4674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f4675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    final String[] f4676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    final String[] f4677g;
    private static final m[] h = {m.aX, m.bb, m.aY, m.bc, m.bi, m.bh, m.ay, m.aI, m.az, m.aJ, m.ag, m.ah, m.E, m.I, m.i};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f4671a = new s(true).a(h).a(bj.TLS_1_3, bj.TLS_1_2, bj.TLS_1_1, bj.TLS_1_0).a(true).a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final r f4672b = new s(f4671a).a(bj.TLS_1_0).a(true).a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r f4673c = new s(false).a();

    r(s sVar) {
        this.f4674d = sVar.f4678a;
        this.f4676f = sVar.f4679b;
        this.f4677g = sVar.f4680c;
        this.f4675e = sVar.f4681d;
    }

    public boolean a() {
        return this.f4674d;
    }

    @Nullable
    public List<m> b() {
        if (this.f4676f != null) {
            return m.a(this.f4676f);
        }
        return null;
    }

    @Nullable
    public List<bj> c() {
        if (this.f4677g != null) {
            return bj.a(this.f4677g);
        }
        return null;
    }

    public boolean d() {
        return this.f4675e;
    }

    void a(SSLSocket sSLSocket, boolean z) {
        r rVarB = b(sSLSocket, z);
        if (rVarB.f4677g != null) {
            sSLSocket.setEnabledProtocols(rVarB.f4677g);
        }
        if (rVarB.f4676f != null) {
            sSLSocket.setEnabledCipherSuites(rVarB.f4676f);
        }
    }

    private r b(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        if (this.f4676f != null) {
            enabledCipherSuites = d.a.c.a(m.f4656a, sSLSocket.getEnabledCipherSuites(), this.f4676f);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f4677g != null) {
            enabledProtocols = d.a.c.a(d.a.c.h, sSLSocket.getEnabledProtocols(), this.f4677g);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iA = d.a.c.a(m.f4656a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && iA != -1) {
            enabledCipherSuites = d.a.c.a(enabledCipherSuites, supportedCipherSuites[iA]);
        }
        return new s(this).a(enabledCipherSuites).b(enabledProtocols).a();
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.f4674d) {
            return false;
        }
        if (this.f4677g == null || d.a.c.b(d.a.c.h, this.f4677g, sSLSocket.getEnabledProtocols())) {
            return this.f4676f == null || d.a.c.b(m.f4656a, this.f4676f, sSLSocket.getEnabledCipherSuites());
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        r rVar = (r) obj;
        if (this.f4674d == rVar.f4674d) {
            return !this.f4674d || (Arrays.equals(this.f4676f, rVar.f4676f) && Arrays.equals(this.f4677g, rVar.f4677g) && this.f4675e == rVar.f4675e);
        }
        return false;
    }

    public int hashCode() {
        if (!this.f4674d) {
            return 17;
        }
        return (this.f4675e ? 0 : 1) + ((((Arrays.hashCode(this.f4676f) + 527) * 31) + Arrays.hashCode(this.f4677g)) * 31);
    }

    public String toString() {
        if (!this.f4674d) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f4676f != null ? b().toString() : "[all enabled]") + ", tlsVersions=" + (this.f4677g != null ? c().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f4675e + ")";
    }
}
