package com.dropbox.core.http;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes2.dex */
public class SSLConfig {
    private static CipherSuiteFilterationResults CACHED_CIPHER_SUITE_FILTERATION_RESULTS = null;
    private static final int MAX_CERT_LENGTH = 10240;
    private static final String ROOT_CERTS_RESOURCE = "/trusted-certs.raw";
    private static final X509TrustManager TRUST_MANAGER = createTrustManager();
    private static final SSLSocketFactory SSL_SOCKET_FACTORY = createSSLSocketFactory();
    private static final String[] PROTOCOL_LIST_TLS_V1_2 = {"TLSv1.2"};
    private static final String[] PROTOCOL_LIST_TLS_V1_0 = {"TLSv1.0"};
    private static final String[] PROTOCOL_LIST_TLS_V1 = {"TLSv1"};
    private static final HashSet<String> ALLOWED_CIPHER_SUITES = new HashSet<>(Arrays.asList("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA", "ECDHE-RSA-AES256-GCM-SHA384", "ECDHE-RSA-AES256-SHA384", "ECDHE-RSA-AES256-SHA", "ECDHE-RSA-AES128-GCM-SHA256", "ECDHE-RSA-AES128-SHA256", "ECDHE-RSA-AES128-SHA", "ECDHE-RSA-RC4-SHA", "DHE-RSA-AES256-GCM-SHA384", "DHE-RSA-AES256-SHA256", "DHE-RSA-AES256-SHA", "DHE-RSA-AES128-GCM-SHA256", "DHE-RSA-AES128-SHA256", "DHE-RSA-AES128-SHA", "AES256-GCM-SHA384", "AES256-SHA256", "AES256-SHA", "AES128-GCM-SHA256", "AES128-SHA256", "AES128-SHA"));

    public static void apply(HttpsURLConnection httpsURLConnection) throws SSLException {
        httpsURLConnection.setSSLSocketFactory(SSL_SOCKET_FACTORY);
    }

    public static X509TrustManager getTrustManager() {
        return TRUST_MANAGER;
    }

    public static SSLSocketFactory getSSLSocketFactory() {
        return SSL_SOCKET_FACTORY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void limitProtocolsAndCiphers(SSLSocket sSLSocket) throws SSLException {
        for (String str : sSLSocket.getSupportedProtocols()) {
            if (str.equals("TLSv1.2")) {
                sSLSocket.setEnabledProtocols(PROTOCOL_LIST_TLS_V1_2);
            } else if (str.equals("TLSv1.0")) {
                sSLSocket.setEnabledProtocols(PROTOCOL_LIST_TLS_V1_0);
            } else if (str.equals("TLSv1")) {
                sSLSocket.setEnabledProtocols(PROTOCOL_LIST_TLS_V1);
            }
            sSLSocket.setEnabledCipherSuites(getFilteredCipherSuites(sSLSocket.getSupportedCipherSuites()));
            return;
        }
        throw new SSLException("Socket doesn't support protocols \"TLSv1.2\", \"TLSv1.0\" or \"TLSv1\".");
    }

    private static String[] getFilteredCipherSuites(String[] strArr) {
        CipherSuiteFilterationResults cipherSuiteFilterationResults = CACHED_CIPHER_SUITE_FILTERATION_RESULTS;
        if (cipherSuiteFilterationResults == null || !Arrays.equals(cipherSuiteFilterationResults.supported, strArr)) {
            ArrayList arrayList = new ArrayList(ALLOWED_CIPHER_SUITES.size());
            for (String str : strArr) {
                if (ALLOWED_CIPHER_SUITES.contains(str)) {
                    arrayList.add(str);
                }
            }
            String[] strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
            CACHED_CIPHER_SUITE_FILTERATION_RESULTS = new CipherSuiteFilterationResults(strArr, strArr2);
            return strArr2;
        }
        return cipherSuiteFilterationResults.enabled;
    }

    final class CipherSuiteFilterationResults {
        private final String[] enabled;
        private final String[] supported;

        public CipherSuiteFilterationResults(String[] strArr, String[] strArr2) {
            this.supported = strArr;
            this.enabled = strArr2;
        }

        public String[] getSupported() {
            return this.supported;
        }

        public String[] getEnabled() {
            return this.enabled;
        }
    }

    private static X509TrustManager createTrustManager() {
        return createTrustManager(loadKeyStore(ROOT_CERTS_RESOURCE));
    }

    private static SSLSocketFactory createSSLSocketFactory() {
        return new SSLSocketFactoryWrapper(createSSLContext(new TrustManager[]{TRUST_MANAGER}).getSocketFactory());
    }

    final class SSLSocketFactoryWrapper extends SSLSocketFactory {
        private final SSLSocketFactory mBase;

        public SSLSocketFactoryWrapper(SSLSocketFactory sSLSocketFactory) {
            this.mBase = sSLSocketFactory;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public String[] getDefaultCipherSuites() {
            return this.mBase.getDefaultCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public String[] getSupportedCipherSuites() {
            return this.mBase.getSupportedCipherSuites();
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(String str, int i) throws IOException {
            Socket socketCreateSocket = this.mBase.createSocket(str, i);
            SSLConfig.limitProtocolsAndCiphers((SSLSocket) socketCreateSocket);
            return socketCreateSocket;
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
            Socket socketCreateSocket = this.mBase.createSocket(inetAddress, i);
            SSLConfig.limitProtocolsAndCiphers((SSLSocket) socketCreateSocket);
            return socketCreateSocket;
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
            Socket socketCreateSocket = this.mBase.createSocket(str, i, inetAddress, i2);
            SSLConfig.limitProtocolsAndCiphers((SSLSocket) socketCreateSocket);
            return socketCreateSocket;
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
            Socket socketCreateSocket = this.mBase.createSocket(inetAddress, i, inetAddress2, i2);
            SSLConfig.limitProtocolsAndCiphers((SSLSocket) socketCreateSocket);
            return socketCreateSocket;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
            Socket socketCreateSocket = this.mBase.createSocket(socket, str, i, z);
            SSLConfig.limitProtocolsAndCiphers((SSLSocket) socketCreateSocket);
            return socketCreateSocket;
        }
    }

    private static SSLContext createSSLContext(TrustManager[] trustManagerArr) {
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            try {
                sSLContext.init(null, trustManagerArr, null);
                return sSLContext;
            } catch (KeyManagementException e2) {
                throw LangUtil.mkAssert("Couldn't initialize SSLContext", e2);
            }
        } catch (NoSuchAlgorithmException e3) {
            throw LangUtil.mkAssert("Couldn't create SSLContext", e3);
        }
    }

    private static X509TrustManager createTrustManager(KeyStore keyStore) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
            try {
                trustManagerFactory.init(keyStore);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                if (trustManagers.length != 1) {
                    throw new AssertionError("More than 1 TrustManager created.");
                }
                if (!(trustManagers[0] instanceof X509TrustManager)) {
                    throw new AssertionError("TrustManager not of type X509: " + trustManagers[0].getClass());
                }
                return (X509TrustManager) trustManagers[0];
            } catch (KeyStoreException e2) {
                throw LangUtil.mkAssert("Unable to initialize TrustManagerFactory with key store", e2);
            }
        } catch (NoSuchAlgorithmException e3) {
            throw LangUtil.mkAssert("Unable to create TrustManagerFactory", e3);
        }
    }

    private static KeyStore loadKeyStore(String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, new char[0]);
            InputStream resourceAsStream = SSLConfig.class.getResourceAsStream(str);
            try {
                if (resourceAsStream == null) {
                    throw new AssertionError("Couldn't find resource \"" + str + "\"");
                }
                try {
                    try {
                        loadKeyStore(keyStore, resourceAsStream);
                        return keyStore;
                    } catch (LoadException e2) {
                        throw LangUtil.mkAssert("Error loading from \"" + str + "\"", e2);
                    }
                } catch (IOException e3) {
                    throw LangUtil.mkAssert("Error loading from \"" + str + "\"", e3);
                } catch (KeyStoreException e4) {
                    throw LangUtil.mkAssert("Error loading from \"" + str + "\"", e4);
                }
            } finally {
                IOUtil.closeInput(resourceAsStream);
            }
        } catch (IOException e5) {
            throw LangUtil.mkAssert("Couldn't initialize KeyStore", e5);
        } catch (KeyStoreException e6) {
            throw LangUtil.mkAssert("Couldn't initialize KeyStore", e6);
        } catch (NoSuchAlgorithmException e7) {
            throw LangUtil.mkAssert("Couldn't initialize KeyStore", e7);
        } catch (CertificateException e8) {
            throw LangUtil.mkAssert("Couldn't initialize KeyStore", e8);
        }
    }

    public final class LoadException extends Exception {
        private static final long serialVersionUID = 0;

        public LoadException(String str, Throwable th) {
            super(str, th);
        }
    }

    private static void loadKeyStore(KeyStore keyStore, InputStream inputStream) throws IOException, KeyStoreException, LoadException {
        try {
            try {
                for (X509Certificate x509Certificate : deserializeCertificates(CertificateFactory.getInstance("X.509"), inputStream)) {
                    try {
                        keyStore.setCertificateEntry(x509Certificate.getSubjectX500Principal().getName(), x509Certificate);
                    } catch (KeyStoreException e2) {
                        throw new LoadException("Error loading certificate: " + e2.getMessage(), e2);
                    }
                }
            } catch (CertificateException e3) {
                throw new LoadException("Error loading certificate: " + e3.getMessage(), e3);
            }
        } catch (CertificateException e4) {
            throw LangUtil.mkAssert("Couldn't initialize X.509 CertificateFactory", e4);
        }
    }

    private static List<X509Certificate> deserializeCertificates(CertificateFactory certificateFactory, InputStream inputStream) throws IOException, CertificateException, LoadException {
        ArrayList arrayList = new ArrayList();
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        byte[] bArr = new byte[MAX_CERT_LENGTH];
        while (true) {
            int unsignedShort = dataInputStream.readUnsignedShort();
            if (unsignedShort != 0) {
                if (unsignedShort > MAX_CERT_LENGTH) {
                    throw new LoadException("Invalid length for certificate entry: " + unsignedShort, null);
                }
                dataInputStream.readFully(bArr, 0, unsignedShort);
                arrayList.add((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArr, 0, unsignedShort)));
            } else {
                if (dataInputStream.read() >= 0) {
                    throw new LoadException("Found data after after zero-length header.", null);
                }
                return arrayList;
            }
        }
    }
}
