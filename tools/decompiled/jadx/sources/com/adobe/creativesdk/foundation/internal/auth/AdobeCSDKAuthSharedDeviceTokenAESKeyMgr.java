package com.adobe.creativesdk.foundation.internal.auth;

import android.content.Context;
import android.content.SharedPreferences;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.Util;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKAuthSharedDeviceTokenAESKeyMgr {
    private static final String DEVICE_TOKEN_SHARED_AES_KEY = "adb_authenticator_shared_aes_devicetoken";
    private static final String DEVICE_TOKEN_SHARED_AES_PREFERENCE = "adb_authenticator_shared_aes_preference";
    private static final boolean ENCRYPT_DEVICE_TOKEN_IN_ACCOUNT_MANAGER = true;
    private static AdobeCSDKAuthSharedDeviceTokenAESKeyMgr _sInstance;
    private boolean bInstanceInitialized;
    private AdobeCommonCipher cipher;
    private String deviceTokenAESKey;

    AdobeCSDKAuthSharedDeviceTokenAESKeyMgr() {
        this.bInstanceInitialized = false;
        this.bInstanceInitialized = false;
    }

    public static AdobeCSDKAuthSharedDeviceTokenAESKeyMgr getInstance() {
        if (_sInstance == null) {
            _sInstance = new AdobeCSDKAuthSharedDeviceTokenAESKeyMgr();
        }
        return _sInstance;
    }

    public String getDeviceTokenSharedAESKey() {
        return this.deviceTokenAESKey;
    }

    private void initializeCipher() {
        try {
            logText("Creating the Cipher Instance of Key");
            printAESKey(this.deviceTokenAESKey);
            this.cipher = new AdobeCommonCipher(Util.convertStringToByteArray(this.deviceTokenAESKey));
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e2.getMessage(), e2);
            logText("Cipher cretion FAILED with messages :  " + e2.getClass().getSimpleName() + "   : " + e2.getMessage());
        }
    }

    public static void logText(String str) {
    }

    public void initializeDeviceTokenAES(Context context) {
        logText("AES initializing the AES");
        if (this.bInstanceInitialized) {
            logText("AESMgr is already initialized - aes key :  " + this.deviceTokenAESKey);
            return;
        }
        this.bInstanceInitialized = true;
        String string = context.getSharedPreferences(DEVICE_TOKEN_SHARED_AES_PREFERENCE, 0).getString(DEVICE_TOKEN_SHARED_AES_KEY, null);
        logText("AES from preferenc is " + string);
        if (string != null) {
            AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(context);
            this.deviceTokenAESKey = AdobeAuthIdentityManagementService.getSharedInstance().getCipher().decrypt(string);
            logText("AES after decrypting is " + this.deviceTokenAESKey);
            printAESKey(this.deviceTokenAESKey);
            initializeCipher();
        }
    }

    private void printAESKey(String str) {
    }

    public void setSharedDeviceTokenAESKey(Context context, String str) {
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(context);
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        logText("Setting new key " + str);
        String strEncrypt = sharedInstance.getCipher().encrypt(str);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(DEVICE_TOKEN_SHARED_AES_PREFERENCE, 0).edit();
        editorEdit.putString(DEVICE_TOKEN_SHARED_AES_KEY, strEncrypt);
        editorEdit.commit();
        this.deviceTokenAESKey = str;
        printAESKey(this.deviceTokenAESKey);
        initializeCipher();
    }

    public void createNewAESKeyForSharedDeviceToken(Context context) {
        try {
            setSharedDeviceTokenAESKey(context, Util.convertByteArrayToString(AdobeCSDKAuthAESKeyMgr.generateNewAESKey_Common()));
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e2.getMessage(), e2);
            logText("Cipher creation FAILED with messages :  " + e2.getClass().getSimpleName() + "   : " + e2.getMessage());
        }
    }

    public boolean isInitializationSuccess() {
        return this.cipher != null;
    }

    public String decryptData(String str) {
        return this.cipher == null ? str : this.cipher.decrypt(str);
    }

    public String encryptData(String str) {
        return this.cipher == null ? str : this.cipher.encrypt(str);
    }
}
