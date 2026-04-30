package d.a.c;

import d.ai;
import d.al;
import d.am;
import d.ar;
import d.ax;
import d.ay;
import d.az;
import d.bd;
import d.bf;
import d.bi;
import d.z;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: RetryAndFollowUpInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
public final class l implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ar f4277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d.a.b.h f4279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f4280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f4281e;

    public l(ar arVar, boolean z) {
        this.f4277a = arVar;
        this.f4278b = z;
    }

    public void a() {
        this.f4281e = true;
        d.a.b.h hVar = this.f4279c;
        if (hVar != null) {
            hVar.e();
        }
    }

    public boolean b() {
        return this.f4281e;
    }

    public void a(Object obj) {
        this.f4280d = obj;
    }

    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        bd bdVarA;
        ax axVarA;
        ax axVarA2 = amVar.a();
        i iVar = (i) amVar;
        d.g gVarH = iVar.h();
        z zVarI = iVar.i();
        this.f4279c = new d.a.b.h(this.f4277a.o(), a(axVarA2.a()), gVarH, zVarI, this.f4280d);
        bd bdVar = null;
        int i = 0;
        ax axVar = axVarA2;
        while (!this.f4281e) {
            try {
                try {
                    bdVarA = iVar.a(axVar, this.f4279c, null, null);
                    if (bdVar != null) {
                        bdVarA = bdVarA.g().c(bdVar.g().a((bf) null).a()).a();
                    }
                    axVarA = a(bdVarA);
                } catch (d.a.b.e e2) {
                    if (!a(e2.a(), false, axVar)) {
                        throw e2.a();
                    }
                } catch (IOException e3) {
                    if (!a(e3, !(e3 instanceof d.a.e.a), axVar)) {
                        throw e3;
                    }
                }
                if (axVarA == null) {
                    if (!this.f4278b) {
                        this.f4279c.c();
                    }
                    return bdVarA;
                }
                d.a.c.a(bdVarA.f());
                int i2 = i + 1;
                if (i2 > 20) {
                    this.f4279c.c();
                    throw new ProtocolException("Too many follow-up requests: " + i2);
                }
                if (axVarA.d() instanceof n) {
                    this.f4279c.c();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", bdVarA.b());
                }
                if (!a(bdVarA, axVarA.a())) {
                    this.f4279c.c();
                    this.f4279c = new d.a.b.h(this.f4277a.o(), a(axVarA.a()), gVarH, zVarI, this.f4280d);
                } else if (this.f4279c.a() != null) {
                    throw new IllegalStateException("Closing the body of " + bdVarA + " didn't close its backing stream. Bad interceptor?");
                }
                bdVar = bdVarA;
                i = i2;
                axVar = axVarA;
            } catch (Throwable th) {
                this.f4279c.a((IOException) null);
                this.f4279c.c();
                throw th;
            }
        }
        this.f4279c.c();
        throw new IOException("Canceled");
    }

    private d.a a(ai aiVar) {
        HostnameVerifier hostnameVerifierK;
        SSLSocketFactory sSLSocketFactoryJ;
        d.j jVarL = null;
        if (aiVar.c()) {
            sSLSocketFactoryJ = this.f4277a.j();
            hostnameVerifierK = this.f4277a.k();
            jVarL = this.f4277a.l();
        } else {
            hostnameVerifierK = null;
            sSLSocketFactoryJ = null;
        }
        return new d.a(aiVar.f(), aiVar.g(), this.f4277a.h(), this.f4277a.i(), sSLSocketFactoryJ, hostnameVerifierK, jVarL, this.f4277a.n(), this.f4277a.d(), this.f4277a.t(), this.f4277a.u(), this.f4277a.e());
    }

    private boolean a(IOException iOException, boolean z, ax axVar) {
        this.f4279c.a(iOException);
        if (this.f4277a.r()) {
            return !(z && (axVar.d() instanceof n)) && a(iOException, z) && this.f4279c.f();
        }
        return false;
    }

    private boolean a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            return (iOException instanceof SocketTimeoutException) && !z;
        }
        return (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private ax a(bd bdVar) throws IOException {
        String strA;
        ai aiVarC;
        Proxy proxyD;
        if (bdVar == null) {
            throw new IllegalStateException();
        }
        d.a.b.c cVarB = this.f4279c.b();
        bi biVarA = cVarB != null ? cVarB.a() : null;
        int iB = bdVar.b();
        String strB = bdVar.a().b();
        switch (iB) {
            case 300:
            case 301:
            case 302:
            case 303:
                break;
            case 307:
            case 308:
                if (!strB.equals("GET") && !strB.equals("HEAD")) {
                    return null;
                }
                break;
            case 401:
                return this.f4277a.m().a(biVarA, bdVar);
            case 407:
                if (biVarA != null) {
                    proxyD = biVarA.b();
                } else {
                    proxyD = this.f4277a.d();
                }
                if (proxyD.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.f4277a.n().a(biVarA, bdVar);
            case 408:
                if (!this.f4277a.r() || (bdVar.a().d() instanceof n)) {
                    return null;
                }
                if (bdVar.h() == null || bdVar.h().b() != 408) {
                    return bdVar.a();
                }
                return null;
            default:
                return null;
        }
        if (!this.f4277a.q() || (strA = bdVar.a("Location")) == null || (aiVarC = bdVar.a().a().c(strA)) == null) {
            return null;
        }
        if (!aiVarC.b().equals(bdVar.a().a().b()) && !this.f4277a.p()) {
            return null;
        }
        ay ayVarE = bdVar.a().e();
        if (h.c(strB)) {
            boolean zD = h.d(strB);
            if (h.e(strB)) {
                ayVarE.a("GET", (az) null);
            } else {
                ayVarE.a(strB, zD ? bdVar.a().d() : null);
            }
            if (!zD) {
                ayVarE.b("Transfer-Encoding");
                ayVarE.b("Content-Length");
                ayVarE.b("Content-Type");
            }
        }
        if (!a(bdVar, aiVarC)) {
            ayVarE.b("Authorization");
        }
        return ayVarE.a(aiVarC).b();
    }

    private boolean a(bd bdVar, ai aiVar) {
        ai aiVarA = bdVar.a().a();
        return aiVarA.f().equals(aiVar.f()) && aiVarA.g() == aiVar.g() && aiVarA.b().equals(aiVar.b());
    }
}
