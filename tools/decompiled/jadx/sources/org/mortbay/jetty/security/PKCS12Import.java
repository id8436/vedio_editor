package org.mortbay.jetty.security;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes3.dex */
public class PKCS12Import {
    public static void main(String[] strArr) throws Exception {
        File file;
        int i = 0;
        if (strArr.length < 1) {
            System.err.println("usage: java PKCS12Import {pkcs12file} [newjksfile]");
            System.exit(1);
        }
        File file2 = new File(strArr[0]);
        if (strArr.length > 1) {
            file = new File(strArr[1]);
        } else {
            file = new File("newstore.jks");
        }
        if (!file2.canRead()) {
            System.err.println(new StringBuffer().append("Unable to access input keystore: ").append(file2.getPath()).toString());
            System.exit(2);
        }
        if (file.exists() && !file.canWrite()) {
            System.err.println(new StringBuffer().append("Output file is not writable: ").append(file.getPath()).toString());
            System.exit(2);
        }
        KeyStore keyStore = KeyStore.getInstance("pkcs12");
        KeyStore keyStore2 = KeyStore.getInstance("jks");
        System.out.print("Enter input keystore passphrase: ");
        char[] passphrase = readPassphrase();
        System.out.print("Enter output keystore passphrase: ");
        char[] passphrase2 = readPassphrase();
        keyStore.load(new FileInputStream(file2), passphrase);
        keyStore2.load(file.exists() ? new FileInputStream(file) : null, passphrase2);
        Enumeration<String> enumerationAliases = keyStore.aliases();
        while (enumerationAliases.hasMoreElements()) {
            String strNextElement = enumerationAliases.nextElement();
            int i2 = i + 1;
            System.err.println(new StringBuffer().append("Alias ").append(i).append(": ").append(strNextElement).toString());
            if (keyStore.isKeyEntry(strNextElement)) {
                System.err.println(new StringBuffer().append("Adding key for alias ").append(strNextElement).toString());
                keyStore2.setKeyEntry(strNextElement, keyStore.getKey(strNextElement, passphrase), passphrase2, keyStore.getCertificateChain(strNextElement));
            }
            i = i2;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        keyStore2.store(fileOutputStream, passphrase2);
        fileOutputStream.close();
    }

    static void dumpChain(Certificate[] certificateArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < certificateArr.length) {
                if (certificateArr[i2] instanceof X509Certificate) {
                    X509Certificate x509Certificate = (X509Certificate) certificateArr[i2];
                    System.err.println(new StringBuffer().append("subject: ").append(x509Certificate.getSubjectDN()).toString());
                    System.err.println(new StringBuffer().append("issuer: ").append(x509Certificate.getIssuerDN()).toString());
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    static char[] readPassphrase() throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(System.in);
        char[] cArr = new char[256];
        for (int i = 0; i < cArr.length; i++) {
            char c2 = (char) inputStreamReader.read();
            switch (c2) {
                case '\n':
                case '\r':
                    break;
                case 11:
                case '\f':
                default:
                    cArr[i] = c2;
                    break;
            }
            char[] cArr2 = new char[i];
            System.arraycopy(cArr, 0, cArr2, 0, i);
            return cArr2;
        }
        char[] cArr22 = new char[i];
        System.arraycopy(cArr, 0, cArr22, 0, i);
        return cArr22;
    }
}
