package com.google.gdata.client.authn.oauth;

import com.google.gdata.util.common.util.Base64;
import com.google.gdata.util.common.util.Base64DecoderException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public class RsaSha1PrivateKeyHelper {
    private RsaSha1PrivateKeyHelper() {
    }

    public static PrivateKey getPrivateKeyFromFilename(String str) throws InvalidKeySpecException, NoSuchAlgorithmException, IOException, Base64DecoderException {
        return getPrivateKey(new File(str));
    }

    public static PrivateKey getPrivateKey(File file) throws InvalidKeySpecException, NoSuchAlgorithmException, IOException, Base64DecoderException {
        return getPrivateKey(new BufferedReader(new FileReader(file)));
    }

    public static PrivateKey getPrivateKey(Reader reader) throws InvalidKeySpecException, NoSuchAlgorithmException, IOException, Base64DecoderException {
        return getPrivateKey(readToString(reader));
    }

    public static PrivateKey getPrivateKey(String str) throws InvalidKeySpecException, NoSuchAlgorithmException, Base64DecoderException {
        if (str.contains("-----BEGIN PRIVATE KEY-----") && str.contains("-----END PRIVATE KEY-----")) {
            str = str.substring("-----BEGIN PRIVATE KEY-----".length(), str.lastIndexOf("-----END PRIVATE KEY-----"));
        }
        return getPrivateKey(Base64.decode(str));
    }

    public static PrivateKey getPrivateKey(byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(bArr));
    }

    private static String readToString(Reader reader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            try {
                int i = reader.read();
                while (i != -1) {
                    stringBuffer.append((char) i);
                    i = reader.read();
                }
                return stringBuffer.toString();
            } catch (IOException e2) {
                throw e2;
            }
        } finally {
            try {
                reader.close();
            } catch (Exception e3) {
            }
        }
    }
}
