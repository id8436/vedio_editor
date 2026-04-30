package c.a.a.a.a.e;

import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: PinningTrustManager.java */
/* JADX INFO: loaded from: classes.dex */
class p implements X509TrustManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TrustManager[] f273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q f274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<byte[]> f276d = new LinkedList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<X509Certificate> f277e = Collections.synchronizedSet(new HashSet());

    public p(q qVar, o oVar) {
        this.f273a = a(qVar);
        this.f274b = qVar;
        this.f275c = oVar.getPinCreationTimeInMillis();
        for (String str : oVar.getPins()) {
            this.f276d.add(a(str));
        }
    }

    private TrustManager[] a(q qVar) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
            trustManagerFactory.init(qVar.f278a);
            return trustManagerFactory.getTrustManagers();
        } catch (KeyStoreException e2) {
            throw new AssertionError(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new AssertionError(e3);
        }
    }

    private boolean a(X509Certificate x509Certificate) throws CertificateException {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(x509Certificate.getPublicKey().getEncoded());
            Iterator<byte[]> it = this.f276d.iterator();
            while (it.hasNext()) {
                if (Arrays.equals(it.next(), bArrDigest)) {
                    return true;
                }
            }
            return false;
        } catch (NoSuchAlgorithmException e2) {
            throw new CertificateException(e2);
        }
    }

    private void a(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        for (TrustManager trustManager : this.f273a) {
            ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, str);
        }
    }

    private void a(X509Certificate[] x509CertificateArr) throws CertificateException {
        if (this.f275c != -1 && System.currentTimeMillis() - this.f275c > 15552000000L) {
            c.a.a.a.f.h().d("Fabric", "Certificate pins are stale, (" + (System.currentTimeMillis() - this.f275c) + " millis vs 15552000000 millis) falling back to system trust.");
            return;
        }
        for (X509Certificate x509Certificate : a.a(x509CertificateArr, this.f274b)) {
            if (a(x509Certificate)) {
                return;
            }
        }
        throw new CertificateException("No valid pins found in chain!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        if (!this.f277e.contains(x509CertificateArr[0])) {
            a(x509CertificateArr, str);
            a(x509CertificateArr);
            this.f277e.add(x509CertificateArr[0]);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }

    private byte[] a(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }
}
