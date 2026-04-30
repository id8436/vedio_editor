package c.a.a.a.a.e;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashMap;

/* JADX INFO: compiled from: SystemKeyStore.java */
/* JADX INFO: loaded from: classes.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final KeyStore f278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<Principal, X509Certificate> f279b;

    public q(InputStream inputStream, String str) {
        KeyStore keyStoreA = a(inputStream, str);
        this.f279b = a(keyStoreA);
        this.f278a = keyStoreA;
    }

    public boolean a(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.f279b.get(x509Certificate.getSubjectX500Principal());
        return x509Certificate2 != null && x509Certificate2.getPublicKey().equals(x509Certificate.getPublicKey());
    }

    public X509Certificate b(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.f279b.get(x509Certificate.getIssuerX500Principal());
        if (x509Certificate2 != null && !x509Certificate2.getSubjectX500Principal().equals(x509Certificate.getSubjectX500Principal())) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                return x509Certificate2;
            } catch (GeneralSecurityException e2) {
                return null;
            }
        }
        return null;
    }

    private HashMap<Principal, X509Certificate> a(KeyStore keyStore) {
        try {
            HashMap<Principal, X509Certificate> map = new HashMap<>();
            Enumeration<String> enumerationAliases = keyStore.aliases();
            while (enumerationAliases.hasMoreElements()) {
                X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(enumerationAliases.nextElement());
                if (x509Certificate != null) {
                    map.put(x509Certificate.getSubjectX500Principal(), x509Certificate);
                }
            }
            return map;
        } catch (KeyStoreException e2) {
            throw new AssertionError(e2);
        }
    }

    private KeyStore a(InputStream inputStream, String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance("BKS");
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                keyStore.load(bufferedInputStream, str.toCharArray());
                return keyStore;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException e2) {
            throw new AssertionError(e2);
        } catch (KeyStoreException e3) {
            throw new AssertionError(e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new AssertionError(e4);
        } catch (CertificateException e5) {
            throw new AssertionError(e5);
        }
    }
}
