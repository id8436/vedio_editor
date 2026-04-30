package com.adobe.creativesdk.foundation.internal.auth;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.util.Base64;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import java.util.Calendar;
import java.util.Date;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKAuthAESKeyMgr {
    private static final String TAG = AdobeCSDKAuthAESKeyMgr.class.getSimpleName();
    private static AdobeCSDKAuthAESKeyMgr _sInstance;
    private final String FOUNDATION_AUTH_AES_KEY_PREFERENCE = "adb_foundation_auth_aes_preference";
    private final String FOUNDATION_AUTH_AES_SECRET_KEY = "adb_foundation_auth_aes_secret_key";
    private final String SHARED_DEVICETOKEN_AUTH_AES_SECRET_KEY = "adb_shareddevicetoken_auth_aes_secret_key";
    private AESKeySecret_Encryptor _aeskey_Encryptor = new AESKeySecret_Encryptor();
    private byte[] _foundationAuth_AES_key;
    private byte[] _sharedDeviceToken_AES_key;

    enum AESKeyType {
        kFoundationAuth,
        kSharedDeviceToken
    }

    static AdobeCSDKAuthAESKeyMgr getInstance() {
        if (_sInstance == null) {
            _sInstance = new AdobeCSDKAuthAESKeyMgr();
        }
        return _sInstance;
    }

    AdobeCSDKAuthAESKeyMgr() {
    }

    public void deleteFoundationAuthAESKey() {
        SharedPreferences.Editor editorEdit = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getSharedPreferences("adb_foundation_auth_aes_preference", 0).edit();
        editorEdit.remove("adb_foundation_auth_aes_secret_key");
        editorEdit.commit();
    }

    public byte[] getFoundationAuthAESKey() {
        if (this._foundationAuth_AES_key != null) {
            return (byte[]) this._foundationAuth_AES_key.clone();
        }
        this._foundationAuth_AES_key = getFoundation_AESKey_fromPreference();
        if (this._foundationAuth_AES_key == null) {
            this._foundationAuth_AES_key = generateNewAESKey_Common();
            if (this._foundationAuth_AES_key != null) {
                storeFoundatationAuth_AESKey_InPreference(this._foundationAuth_AES_key);
            } else {
                throw new IllegalArgumentException("CSDK Foundation Auth AES Key is null.");
            }
        }
        return (byte[]) this._foundationAuth_AES_key.clone();
    }

    private void storeAESKeyInPreference_Common(byte[] bArr, String str) {
        String strEncodeToString = Base64.encodeToString(this._aeskey_Encryptor.encyrptData(bArr), 2);
        SharedPreferences.Editor editorEdit = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getSharedPreferences("adb_foundation_auth_aes_preference", 0).edit();
        editorEdit.putString(str, strEncodeToString);
        editorEdit.commit();
    }

    private void storeFoundatationAuth_AESKey_InPreference(byte[] bArr) {
        storeAESKeyInPreference_Common(bArr, "adb_foundation_auth_aes_secret_key");
    }

    public static byte[] generateNewAESKey_Common() {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(128);
            return keyGenerator.generateKey().getEncoded();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, TAG, e2.getMessage(), e2);
            throw new IllegalArgumentException("Auth Foundation : Auth AESKeyMgr : Failed to generate an AES key");
        }
    }

    private String getStringFromAuthAESFoundationPreference(String str) {
        return AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getSharedPreferences("adb_foundation_auth_aes_preference", 0).getString(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAuthFoundation_Encrypted_AES_Key_fromPreference() {
        return getStringFromAuthAESFoundationPreference("adb_foundation_auth_aes_secret_key");
    }

    private byte[] getAESKeyFromPreference_Common(String str) {
        String stringFromAuthAESFoundationPreference = getStringFromAuthAESFoundationPreference(str);
        if (stringFromAuthAESFoundationPreference == null) {
            return null;
        }
        try {
            return this._aeskey_Encryptor.deCryptData(Base64.decode(stringFromAuthAESFoundationPreference.getBytes("UTF-8"), 2));
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, e2.getClass().getSimpleName(), "Decryption error", e2);
            return null;
        }
    }

    private byte[] getFoundation_AESKey_fromPreference() {
        return getAESKeyFromPreference_Common("adb_foundation_auth_aes_secret_key");
    }

    class AESKeySecret_Encryptor {
        private static final String APP_RSA_KEY_PAIR_SECRET_ALIAS = "adb_auth_foundation_rsa_keypair_alias";
        private PrivateKey _app_privateRSAKey;
        private PublicKey _app_publicRSAKey;
        private boolean _isRunningAPI_18_Above = false;

        public AESKeySecret_Encryptor() {
            if (!this._isRunningAPI_18_Above) {
            }
        }

        private void initializePublicPrivateKeys() {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                keyStore.load(null);
                KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) keyStore.getEntry(APP_RSA_KEY_PAIR_SECRET_ALIAS, null);
                this._app_privateRSAKey = privateKeyEntry.getPrivateKey();
                this._app_publicRSAKey = privateKeyEntry.getCertificate().getPublicKey();
            } catch (IOException e2) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAuthAESKeyMgr.TAG, e2.getMessage(), e2);
            } catch (KeyStoreException e3) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAuthAESKeyMgr.TAG, e3.getMessage(), e3);
            } catch (NoSuchAlgorithmException e4) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAuthAESKeyMgr.TAG, e4.getMessage(), e4);
            } catch (UnrecoverableEntryException e5) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAuthAESKeyMgr.TAG, e5.getMessage(), e5);
            } catch (CertificateException e6) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAuthAESKeyMgr.TAG, e6.getMessage(), e6);
            }
        }

        private void initializeRSAKeyPairs() {
            initializePublicPrivateKeys();
            if (this._app_privateRSAKey == null || this._app_publicRSAKey == null) {
                if (AdobeCSDKAuthAESKeyMgr.this.getAuthFoundation_Encrypted_AES_Key_fromPreference() != null) {
                    throw new IllegalArgumentException("Auth Foundation :AESKeyMgr Failed to initialize Private keys - but already have a valid aes key stored !!");
                }
                generateAppRSAPublicPrivateKeys();
                initializePublicPrivateKeys();
            }
        }

        private Cipher getRSACipher() {
            try {
                return Cipher.getInstance("RSA/ECB/PKCS1Padding", "AndroidOpenSSL");
            } catch (Exception e2) {
                throw new IllegalArgumentException("Auth Foundation : Auth AESKeyMgr : Failed to create Cipher", e2);
            }
        }

        private byte[] encryptUsingPublicKey(byte[] bArr) {
            Cipher rSACipher = getRSACipher();
            try {
                rSACipher.init(1, this._app_publicRSAKey);
                return rSACipher.doFinal(bArr);
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAuthAESKeyMgr.TAG, e2.getMessage(), e2);
                throw new IllegalArgumentException("Auth Foundation : Auth AESKeyMgr : Failed to encrypt using public key", e2);
            }
        }

        private byte[] deCryptUsingPrivateKey(byte[] bArr) {
            Cipher rSACipher = getRSACipher();
            try {
                rSACipher.init(2, this._app_privateRSAKey);
                return rSACipher.doFinal(bArr);
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAuthAESKeyMgr.TAG, e2.getMessage(), e2);
                throw new IllegalArgumentException("Auth Foundation : Auth AESKeyMgr : Failed to decyrpt using private key", e2);
            }
        }

        public byte[] encyrptData(byte[] bArr) {
            return !this._isRunningAPI_18_Above ? bArr : encryptUsingPublicKey(bArr);
        }

        public byte[] deCryptData(byte[] bArr) {
            return !this._isRunningAPI_18_Above ? bArr : deCryptUsingPrivateKey(bArr);
        }

        @TargetApi(18)
        private void generateAppRSAPublicPrivateKeys() {
            Calendar calendar = Calendar.getInstance();
            Date time = calendar.getTime();
            calendar.add(1, 25);
            Date time2 = calendar.getTime();
            try {
                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
                KeyPairGeneratorSpec.Builder subject = new KeyPairGeneratorSpec.Builder(applicationContext).setAlias(APP_RSA_KEY_PAIR_SECRET_ALIAS).setStartDate(time).setEndDate(time2).setSerialNumber(BigInteger.valueOf(1L)).setSubject(new X500Principal(String.format("CN=%s, OU=%s", APP_RSA_KEY_PAIR_SECRET_ALIAS, applicationContext.getApplicationInfo().packageName)));
                if (Build.VERSION.SDK_INT >= 19) {
                    subject.setKeySize(2048);
                }
                keyPairGenerator.initialize(subject.build());
                keyPairGenerator.generateKeyPair();
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAuthAESKeyMgr.TAG, e2.getMessage(), e2);
                throw new IllegalArgumentException("Failed to generate RSA Public Private Key pair");
            }
        }
    }
}
