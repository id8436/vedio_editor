package com.adobe.creativesdk.foundation.internal.auth;

import android.content.Context;
import android.content.SharedPreferences;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.behance.sdk.util.BehanceSDKConstants;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthKeychain {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN = "AccessToken";
    public static final String ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN_EXPIRATION = "AccessTokenExpiration";
    public static final String ADOBE_AUTH_KEYCHAIN_ACCOUNT_TYPE = "AccountType";
    public static final String ADOBE_AUTH_KEYCHAIN_ADOBE_ID = "AdobeID";
    public static final String ADOBE_AUTH_KEYCHAIN_CLIENT_SCOPE = "ClientScope";
    public static final String ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_ERROR_CODE = "ContinuableEventErrorCode";
    public static final String ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_JUMP_URL = "ContinuableEventJumpURL";
    public static final String ADOBE_AUTH_KEYCHAIN_CONTINUATION_TOKEN = "ContinuationToken";
    public static final String ADOBE_AUTH_KEYCHAIN_COUNTRY_CODE = "CountryCode";
    public static final String ADOBE_AUTH_KEYCHAIN_DEVICE_TOKEN = "DeviceToken";
    public static final String ADOBE_AUTH_KEYCHAIN_DEVICE_TOKEN_EXPIRATION = "DeviceTokenExpiration";
    public static final String ADOBE_AUTH_KEYCHAIN_DISPLAY_NAME = "DisplayName";
    public static final String ADOBE_AUTH_KEYCHAIN_EMAIL = "Email";
    public static final String ADOBE_AUTH_KEYCHAIN_EMAIL_VERIFIED = "EmailVerified";
    public static final String ADOBE_AUTH_KEYCHAIN_ENTERPRISE_INFO = "EnterpriseInfo";
    public static final String ADOBE_AUTH_KEYCHAIN_ENTITLEMENTS = "Entitlements";
    public static final String ADOBE_AUTH_KEYCHAIN_ENVIRONMENT_INDICATOR = "EnvironmentIndicator";
    public static final String ADOBE_AUTH_KEYCHAIN_FIRST_NAME = "FirstName";
    public static final String ADOBE_AUTH_KEYCHAIN_KEYCHAIN_VERSION = "KeychainVersion";
    public static final String ADOBE_AUTH_KEYCHAIN_LAST_NAME = "LastName";
    public static final String ADOBE_AUTH_KEYCHAIN_LICENSE_STATUS = "LicenseStatus";
    public static final String ADOBE_AUTH_KEYCHAIN_MIGRATED = "KeyChainMigrated";
    public static final String ADOBE_AUTH_KEYCHAIN_REFRESH_TOKEN = "RefreshToken";
    public static final String ADOBE_AUTH_KEYCHAIN_REFRESH_TOKEN_EXPIRATION = "RefreshTokenExpiration";
    public static final String ADOBE_AUTH_KEYCHAIN_SERVICE_CODE = "ServiceCode";
    public static final String ADOBE_AUTH_KEYCHAIN_SERVICE_LEVEL = "ServiceLevel";
    public static final String ADOBE_AUTH_KEYCHAIN_UUID = "UUID";
    public static final String ADOBE_AUTH_KEYCHAIN_VERSION = "KeychainVersion";
    public static final String ADOBE_AUTH_SHARED_KEYCHAIN_CONTINUATION_TOKEN = "ContinuationToken";
    public static final String ADOBE_AUTH_SHARED_KEYCHAIN_DEVICE_TOKEN = "DeviceToken";
    public static final String ADOBE_AUTH_SHARED_KEYCHAIN_REFRESH_TOKEN = "RefreshToken";
    public static final int AUTH_KEYCHAIN_VERSION = 10;
    public static final String CLIENT_ID = "ClientId";
    public static final String CLIENT_SECRET = "ClientSecret";
    public static final String CLIENT_STATE = "ClientState";
    public static final String DEVICE_ID = "DeviceId";
    public static final String DEVICE_NAME = "DeviceName";
    public static final String IDP_FLOW = "idpFlow";
    private static AdobeAuthKeychain sharedKeychain;
    protected Context context;
    private String groupID;
    private AdobeAuthIdentityManagementService ims;
    protected SharedPreferences migratedSharedPreferences;
    private AdobeAuthKeychainMigrationStatusValue migrationStatusValue = AdobeAuthKeychainMigrationStatusValue.Undefined;
    protected SharedPreferences sharedPreferences;

    enum AdobeAuthKeychainMigrationStatusValue {
        Undefined,
        NotMigrated,
        Migrated
    }

    static {
        $assertionsDisabled = !AdobeAuthKeychain.class.desiredAssertionStatus();
    }

    private AdobeAuthKeychainMigrationStatusValue getMigrationStatusValue() {
        if (this.migrationStatusValue == AdobeAuthKeychainMigrationStatusValue.Undefined) {
            this.migrationStatusValue = AdobeAuthKeychainMigrationStatusValue.values()[this.sharedPreferences.getInt(ADOBE_AUTH_KEYCHAIN_MIGRATED, AdobeAuthKeychainMigrationStatusValue.NotMigrated.ordinal())];
        }
        return this.migrationStatusValue;
    }

    private void migratePreferences() {
        Map<String, ?> all = this.sharedPreferences.getAll();
        if (all.size() > 0) {
            SharedPreferences.Editor editorEdit = this.migratedSharedPreferences.edit();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof String) {
                    editorEdit.putString(entry.getKey(), internalFindKey(entry.getKey()));
                } else if (value instanceof Integer) {
                    editorEdit.putInt(entry.getKey(), ((Integer) value).intValue());
                }
            }
            editorEdit.apply();
        }
        SharedPreferences.Editor editorEdit2 = this.sharedPreferences.edit();
        this.migrationStatusValue = AdobeAuthKeychainMigrationStatusValue.Migrated;
        editorEdit2.putInt(ADOBE_AUTH_KEYCHAIN_MIGRATED, this.migrationStatusValue.ordinal());
        editorEdit2.apply();
    }

    public AdobeAuthKeychain(AdobeAuthIdentityManagementService adobeAuthIdentityManagementService) {
        setGroupID("");
        this.context = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        this.ims = adobeAuthIdentityManagementService;
        if (!$assertionsDisabled && this.context == null) {
            throw new AssertionError();
        }
        this.sharedPreferences = this.context.getSharedPreferences("Foundation", 0);
        if (!$assertionsDisabled && this.sharedPreferences == null) {
            throw new AssertionError();
        }
        if (Integer.valueOf(this.sharedPreferences.getInt("KeychainVersion", 0)).intValue() < 10) {
            SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
            editorEdit.remove(ADOBE_AUTH_KEYCHAIN_ENVIRONMENT_INDICATOR);
            resetTokens();
            editorEdit.putInt("KeychainVersion", 10);
            editorEdit.apply();
            AdobeCSDKAuthAESKeyMgr.getInstance().deleteFoundationAuthAESKey();
        }
        this.migratedSharedPreferences = this.context.getSharedPreferences("FoundationMigrated", 0);
        if (!$assertionsDisabled && this.migratedSharedPreferences == null) {
            throw new AssertionError();
        }
        if (getMigrationStatusValue() == AdobeAuthKeychainMigrationStatusValue.NotMigrated) {
            migratePreferences();
        }
    }

    public static AdobeAuthKeychain getSharedKeychain() {
        return sharedKeychain;
    }

    public static void setSharedKeychain(AdobeAuthKeychain adobeAuthKeychain) {
        sharedKeychain = adobeAuthKeychain;
    }

    public void deleteKey(String str) {
        if (getMigrationStatusValue() == AdobeAuthKeychainMigrationStatusValue.NotMigrated) {
            SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
            editorEdit.remove(str);
            editorEdit.apply();
        } else {
            SharedPreferences.Editor editorEdit2 = this.migratedSharedPreferences.edit();
            editorEdit2.remove(str);
            editorEdit2.apply();
        }
    }

    public void resetTokens() {
        deleteKey(ADOBE_AUTH_KEYCHAIN_ADOBE_ID);
        deleteKey(ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN);
        deleteKey(ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN_EXPIRATION);
        deleteKey("ContinuationToken");
        deleteKey("DeviceToken");
        deleteKey(ADOBE_AUTH_KEYCHAIN_DEVICE_TOKEN_EXPIRATION);
        deleteKey(ADOBE_AUTH_KEYCHAIN_DISPLAY_NAME);
        deleteKey("Email");
        deleteKey(ADOBE_AUTH_KEYCHAIN_EMAIL_VERIFIED);
        deleteKey(ADOBE_AUTH_KEYCHAIN_ENTITLEMENTS);
        deleteKey(ADOBE_AUTH_KEYCHAIN_FIRST_NAME);
        deleteKey(ADOBE_AUTH_KEYCHAIN_LAST_NAME);
        deleteKey("RefreshToken");
        deleteKey(ADOBE_AUTH_KEYCHAIN_REFRESH_TOKEN_EXPIRATION);
        deleteKey(ADOBE_AUTH_KEYCHAIN_ENTERPRISE_INFO);
        deleteKey(ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_JUMP_URL);
        deleteKey(ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_ERROR_CODE);
        deleteKey(ADOBE_AUTH_KEYCHAIN_SERVICE_LEVEL);
        deleteKey(ADOBE_AUTH_KEYCHAIN_SERVICE_CODE);
        deleteKey(IDP_FLOW);
    }

    public String getGroupID() {
        return this.groupID;
    }

    public void setGroupID(String str) {
        this.groupID = str;
    }

    public String findKey(String str) {
        if (!hasEnvironmentChanged()) {
            return internalFindKey(str);
        }
        resetTokens();
        return null;
    }

    private String internalFindKey(String str) {
        if (this.migrationStatusValue == AdobeAuthKeychainMigrationStatusValue.NotMigrated) {
            return this.ims.getCipher().decrypt(this.sharedPreferences.getString(str, null));
        }
        return this.migratedSharedPreferences.getString(str, null);
    }

    public void updateOrAddKey(String str, Object obj) {
        hasEnvironmentChanged();
        internalUpdateOrAdd(str, obj);
    }

    private void internalUpdateOrAdd(String str, AdobeAuthIMSEnvironment adobeAuthIMSEnvironment) {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.putInt(str, adobeAuthIMSEnvironment.ordinal());
        editorEdit.apply();
    }

    private void internalUpdateOrAdd(String str, Object obj) {
        String string;
        if (obj instanceof Date) {
            string = Long.toString(((Date) obj).getTime());
        } else {
            string = obj != null ? obj.toString() : null;
        }
        if (getMigrationStatusValue() == AdobeAuthKeychainMigrationStatusValue.NotMigrated) {
            String strEncrypt = this.ims.getCipher().encrypt(string);
            SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
            editorEdit.putString(str, strEncrypt);
            editorEdit.apply();
            return;
        }
        SharedPreferences.Editor editorEdit2 = this.migratedSharedPreferences.edit();
        editorEdit2.putString(str, string);
        editorEdit2.apply();
    }

    public String getContiuableEventJumpURL() {
        return findKey(ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_JUMP_URL);
    }

    public String getContiuableEventErrorCode() {
        return findKey(ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_ERROR_CODE);
    }

    public String getAdobeID() {
        return findKey(ADOBE_AUTH_KEYCHAIN_ADOBE_ID);
    }

    public String getClientScope() {
        return findKey(ADOBE_AUTH_KEYCHAIN_CLIENT_SCOPE);
    }

    public String getAccessToken() {
        return findKey(ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN);
    }

    public String getDeviceToken() {
        return findKey("DeviceToken");
    }

    public String getRefreshToken() {
        return findKey("RefreshToken");
    }

    public String getContinuationToken() {
        return findKey("ContinuationToken");
    }

    public Date getAccessTokenExpiration() {
        return convertStringtoDate(findKey(ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN_EXPIRATION));
    }

    private Date convertStringtoDate(String str) {
        if (str == null) {
            return null;
        }
        try {
            Long lValueOf = Long.valueOf(str.trim());
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(lValueOf.longValue());
            return calendar.getTime();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e2.getMessage(), e2);
            return null;
        }
    }

    public Date getDeviceTokenExpiration() {
        return convertStringtoDate(findKey(ADOBE_AUTH_KEYCHAIN_DEVICE_TOKEN_EXPIRATION));
    }

    public Date getRefreshTokenExpiration() {
        return convertStringtoDate(findKey(ADOBE_AUTH_KEYCHAIN_REFRESH_TOKEN_EXPIRATION));
    }

    public String getDisplayName() {
        return findKey(ADOBE_AUTH_KEYCHAIN_DISPLAY_NAME);
    }

    public String getFirstName() {
        return findKey(ADOBE_AUTH_KEYCHAIN_FIRST_NAME);
    }

    public String getLastName() {
        return findKey(ADOBE_AUTH_KEYCHAIN_LAST_NAME);
    }

    public String getEmailAddress() {
        return findKey("Email");
    }

    public String getEmailVerified() {
        return findKey(ADOBE_AUTH_KEYCHAIN_EMAIL_VERIFIED);
    }

    public String getCountrycode() {
        return findKey(ADOBE_AUTH_KEYCHAIN_COUNTRY_CODE);
    }

    public String getLicenseStatus() {
        return findKey(ADOBE_AUTH_KEYCHAIN_LICENSE_STATUS);
    }

    public String getAccountType() {
        return findKey(ADOBE_AUTH_KEYCHAIN_ACCOUNT_TYPE);
    }

    public String getEnterpriseInfo() {
        return findKey(ADOBE_AUTH_KEYCHAIN_ENTERPRISE_INFO);
    }

    String getServiceLevel() {
        return findKey(ADOBE_AUTH_KEYCHAIN_SERVICE_LEVEL);
    }

    String getServiceCodes() {
        return findKey(ADOBE_AUTH_KEYCHAIN_SERVICE_CODE);
    }

    public Set<String> getEntitlements() {
        String strFindKey = findKey(ADOBE_AUTH_KEYCHAIN_ENTITLEMENTS);
        ArrayList arrayList = new ArrayList();
        if (strFindKey == null) {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(strFindKey, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return new HashSet(arrayList);
    }

    public AdobeAuthIMSEnvironment getLastEnvironment() {
        int i = this.sharedPreferences.getInt(ADOBE_AUTH_KEYCHAIN_ENVIRONMENT_INDICATOR, -1);
        return i == -1 ? AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentProductionUS : AdobeAuthIMSEnvironment.values()[i];
    }

    private boolean hasEnvironmentChanged() {
        int i = this.sharedPreferences.getInt(ADOBE_AUTH_KEYCHAIN_ENVIRONMENT_INDICATOR, -1);
        if (i != -1) {
            if (i != this.ims.getEnvironment().ordinal() && AdobeAuthIMSEnvironment.AdobeAuthIdentityManagementServiceUndefined != this.ims.getEnvironment()) {
                internalUpdateOrAdd(ADOBE_AUTH_KEYCHAIN_ENVIRONMENT_INDICATOR, this.ims.getEnvironment());
                return true;
            }
            return false;
        }
        internalUpdateOrAdd(ADOBE_AUTH_KEYCHAIN_ENVIRONMENT_INDICATOR, this.ims.getEnvironment());
        return true;
    }
}
