package com.adobe.creativesdk.foundation.internal.auth;

import android.util.Base64;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
final class AdobeCommonCipher {
    private static AdobeCommonCipher instance = null;
    private Cipher decryptionCipher;
    private Cipher encryptionCipher;

    public AdobeCommonCipher(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.encryptionCipher = Cipher.getInstance("AES");
        this.encryptionCipher.init(1, secretKeySpec);
        this.decryptionCipher = Cipher.getInstance("AES");
        this.decryptionCipher.init(2, secretKeySpec);
    }

    static AdobeCommonCipher createInstance(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (instance == null) {
            instance = new AdobeCommonCipher(bArr);
        }
        return instance;
    }

    String encrypt(String str) {
        if (str != null) {
            try {
                return new String(Base64.encode(this.encryptionCipher.doFinal(str.getBytes("UTF-8")), 2), "UTF-8");
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, e2.getClass().getSimpleName(), "Encryption error", e2);
            }
        }
        return null;
    }

    String decrypt(String str) {
        if (str != null) {
            try {
                return new String(this.decryptionCipher.doFinal(Base64.decode(str.getBytes("UTF-8"), 2)), "UTF-8");
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, e2.getClass().getSimpleName(), "Decryption error", e2);
            }
        }
        return null;
    }
}
