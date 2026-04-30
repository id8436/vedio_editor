package d;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: compiled from: Handshake.java */
/* JADX INFO: loaded from: classes3.dex */
public final class af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bj f4508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f4509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Certificate> f4510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Certificate> f4511d;

    private af(bj bjVar, m mVar, List<Certificate> list, List<Certificate> list2) {
        this.f4508a = bjVar;
        this.f4509b = mVar;
        this.f4510c = list;
        this.f4511d = list2;
    }

    public static af a(SSLSession sSLSession) {
        Certificate[] peerCertificates;
        List listEmptyList;
        List listEmptyList2;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        m mVarA = m.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        bj bjVarA = bj.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException e2) {
            peerCertificates = null;
        }
        if (peerCertificates != null) {
            listEmptyList = d.a.c.a(peerCertificates);
        } else {
            listEmptyList = Collections.emptyList();
        }
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        if (localCertificates != null) {
            listEmptyList2 = d.a.c.a(localCertificates);
        } else {
            listEmptyList2 = Collections.emptyList();
        }
        return new af(bjVarA, mVarA, listEmptyList, listEmptyList2);
    }

    public m a() {
        return this.f4509b;
    }

    public List<Certificate> b() {
        return this.f4510c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof af)) {
            return false;
        }
        af afVar = (af) obj;
        return this.f4508a.equals(afVar.f4508a) && this.f4509b.equals(afVar.f4509b) && this.f4510c.equals(afVar.f4510c) && this.f4511d.equals(afVar.f4511d);
    }

    public int hashCode() {
        return ((((((this.f4508a.hashCode() + 527) * 31) + this.f4509b.hashCode()) * 31) + this.f4510c.hashCode()) * 31) + this.f4511d.hashCode();
    }
}
