package com.behance.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.behance.sdk.dto.BehanceSDKSocialAccountDTO;
import com.behance.sdk.enums.BehanceSDKSocialAccountType;
import com.facebook.login.r;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKSocialAccountManager {
    private static final String SHARED_PREFERENCES_FILE_NAME = "BEHANCE_SDK_SOCIAL_ACCOUNTS_SHARED_PREFERENES_KEY";
    private static final String SP_KEY_ACCOUNT_CLIENT_ID = "SP_KEY_ACCOUNT_CLIENT_ID";
    private static final String SP_KEY_ACCOUNT_CLIENT_SECRET = "SP_KEY_ACCOUNT_CLIENT_SECRET";
    private static final String SP_KEY_ACCOUNT_DISPLAY_NAME_RES_ID = "SP_KEY_ACCOUNT_DISPLAY_NAME_RES_ID";
    private static final String SP_KEY_ADDITIONAL_DATA = "SP_KEY_ADDITIONAL_DATA";
    private static final String SP_KEY_SHARE_ENABLED_LAST_TIME = "SP_KEY_SHARE_ENABLED_LAST_TIME";
    private static final String SP_KEY_USER_AUTHENTICATED = "SP_KEY_USER_AUTHENTICATED";
    private static final String SP_KEY_USER_AUTH_TOKEN = "SP_KEY_USER_AUTH_TOKEN";
    private static final String SP_KEY_USER_AUTH_TOKEN_EXPIRY_TIME = "SP_KEY_USER_AUTH_TOKEN_EXPIRY_TIME";
    private static final String SP_KEY_USER_ID = "SP_KEY_USER_ID";
    private static BehanceSDKSocialAccountManager instance;

    public static BehanceSDKSocialAccountManager getInstance() {
        if (instance == null) {
            instance = new BehanceSDKSocialAccountManager();
        }
        return instance;
    }

    private BehanceSDKSocialAccountManager() {
    }

    public boolean addAccount(BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO, Context context) {
        if (behanceSDKSocialAccountDTO == null) {
            return false;
        }
        BehanceSDKSocialAccountDTO account = getAccount(behanceSDKSocialAccountDTO.getAccountType(), context);
        if (account != null) {
            return areAccountsSame(account, behanceSDKSocialAccountDTO) || saveAccountToStorage(behanceSDKSocialAccountDTO, context);
        }
        return saveAccountToStorage(behanceSDKSocialAccountDTO, context);
    }

    public boolean updateAccount(BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO, Context context) {
        return addAccount(behanceSDKSocialAccountDTO, context);
    }

    private boolean areAccountsSame(BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO, BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO2) {
        if (behanceSDKSocialAccountDTO.getAccountClientId() != null && behanceSDKSocialAccountDTO2.getAccountClientId() == null) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getAccountClientId() == null && behanceSDKSocialAccountDTO2.getAccountClientId() != null) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getAccountClientId() != null && !behanceSDKSocialAccountDTO.getAccountClientId().equals(behanceSDKSocialAccountDTO2.getAccountClientId())) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getAccountClientSecret() != null && behanceSDKSocialAccountDTO2.getAccountClientSecret() == null) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getAccountClientSecret() == null && behanceSDKSocialAccountDTO2.getAccountClientSecret() != null) {
            return false;
        }
        if ((behanceSDKSocialAccountDTO.getAccountClientSecret() != null && !behanceSDKSocialAccountDTO.getAccountClientSecret().equals(behanceSDKSocialAccountDTO2.getAccountClientSecret())) || behanceSDKSocialAccountDTO.getAccountDisplayNameResourceId() != behanceSDKSocialAccountDTO2.getAccountDisplayNameResourceId()) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getAdditionalData() != null && behanceSDKSocialAccountDTO2.getAdditionalData() == null) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getAdditionalData() == null && behanceSDKSocialAccountDTO2.getAdditionalData() != null) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getAdditionalData() != null && !behanceSDKSocialAccountDTO.getAdditionalData().equals(behanceSDKSocialAccountDTO2.getAdditionalData())) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getUserAuthToken() != null && behanceSDKSocialAccountDTO2.getUserAuthToken() == null) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getUserAuthToken() == null && behanceSDKSocialAccountDTO2.getUserAuthToken() != null) {
            return false;
        }
        if ((behanceSDKSocialAccountDTO.getUserAuthToken() != null && !behanceSDKSocialAccountDTO.getUserAuthToken().equals(behanceSDKSocialAccountDTO2.getUserAuthToken())) || behanceSDKSocialAccountDTO.getUserAuthTokenExpiryTime() != behanceSDKSocialAccountDTO2.getUserAuthTokenExpiryTime()) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getUserId() != null && behanceSDKSocialAccountDTO2.getUserId() == null) {
            return false;
        }
        if (behanceSDKSocialAccountDTO.getUserId() != null || behanceSDKSocialAccountDTO2.getUserId() == null) {
            return (behanceSDKSocialAccountDTO.getUserId() == null || behanceSDKSocialAccountDTO.getUserId().equals(behanceSDKSocialAccountDTO2.getUserId())) && behanceSDKSocialAccountDTO.isSharingEnabledLastTime() == behanceSDKSocialAccountDTO2.isSharingEnabledLastTime() && behanceSDKSocialAccountDTO.isUserAuthenticated() == behanceSDKSocialAccountDTO2.isUserAuthenticated();
        }
        return false;
    }

    public BehanceSDKSocialAccountDTO getAccount(BehanceSDKSocialAccountType behanceSDKSocialAccountType, Context context) {
        return readAccountFromStorage(behanceSDKSocialAccountType, context);
    }

    public boolean removeAccount(BehanceSDKSocialAccountType behanceSDKSocialAccountType, Context context) {
        if (behanceSDKSocialAccountType == BehanceSDKSocialAccountType.FACEBOOK && getAccount(BehanceSDKSocialAccountType.FACEBOOK, context) != null) {
            r.a().b();
        }
        return removeAccountFromStorage(behanceSDKSocialAccountType, context);
    }

    public boolean revokeAccountAccess(BehanceSDKSocialAccountType behanceSDKSocialAccountType, Context context) {
        return removeAccount(behanceSDKSocialAccountType, context);
    }

    private SharedPreferences getSharedPreference(BehanceSDKSocialAccountType behanceSDKSocialAccountType, Context context) {
        return context.getSharedPreferences("BEHANCE_SDK_SOCIAL_ACCOUNTS_SHARED_PREFERENES_KEY_" + behanceSDKSocialAccountType.name(), 0);
    }

    private SharedPreferences getExistingAccountSharedPreference(BehanceSDKSocialAccountType behanceSDKSocialAccountType, Context context) {
        SharedPreferences sharedPreference = getSharedPreference(behanceSDKSocialAccountType, context);
        if (sharedPreference.contains(SP_KEY_ACCOUNT_CLIENT_ID)) {
            return sharedPreference;
        }
        return null;
    }

    private BehanceSDKSocialAccountDTO readAccountFromStorage(BehanceSDKSocialAccountType behanceSDKSocialAccountType, Context context) {
        SharedPreferences existingAccountSharedPreference = getExistingAccountSharedPreference(behanceSDKSocialAccountType, context);
        if (existingAccountSharedPreference == null) {
            return null;
        }
        BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO = new BehanceSDKSocialAccountDTO();
        behanceSDKSocialAccountDTO.setAccountClientId(existingAccountSharedPreference.getString(SP_KEY_ACCOUNT_CLIENT_ID, null));
        behanceSDKSocialAccountDTO.setAccountClientSecret(existingAccountSharedPreference.getString(SP_KEY_ACCOUNT_CLIENT_SECRET, null));
        behanceSDKSocialAccountDTO.setAccountDisplayNameResourceId(existingAccountSharedPreference.getInt(SP_KEY_ACCOUNT_DISPLAY_NAME_RES_ID, -1));
        behanceSDKSocialAccountDTO.setAccountType(behanceSDKSocialAccountType);
        behanceSDKSocialAccountDTO.setUserAuthToken(existingAccountSharedPreference.getString(SP_KEY_USER_AUTH_TOKEN, null));
        behanceSDKSocialAccountDTO.setUserAuthTokenExpiryTime(existingAccountSharedPreference.getLong(SP_KEY_USER_AUTH_TOKEN_EXPIRY_TIME, 0L));
        behanceSDKSocialAccountDTO.setUserId(existingAccountSharedPreference.getString(SP_KEY_USER_ID, null));
        behanceSDKSocialAccountDTO.setAdditionalData(existingAccountSharedPreference.getString(SP_KEY_ADDITIONAL_DATA, null));
        behanceSDKSocialAccountDTO.setSharingEnabledLastTime(existingAccountSharedPreference.getBoolean(SP_KEY_SHARE_ENABLED_LAST_TIME, false));
        behanceSDKSocialAccountDTO.setUserAuthenticated(existingAccountSharedPreference.getBoolean(SP_KEY_USER_AUTHENTICATED, false));
        return behanceSDKSocialAccountDTO;
    }

    private boolean saveAccountToStorage(BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO, Context context) {
        SharedPreferences.Editor editorEdit = getSharedPreference(behanceSDKSocialAccountDTO.getAccountType(), context).edit();
        editorEdit.putString(SP_KEY_ACCOUNT_CLIENT_ID, behanceSDKSocialAccountDTO.getAccountClientId());
        editorEdit.putString(SP_KEY_ACCOUNT_CLIENT_SECRET, behanceSDKSocialAccountDTO.getAccountClientSecret());
        editorEdit.putInt(SP_KEY_ACCOUNT_DISPLAY_NAME_RES_ID, behanceSDKSocialAccountDTO.getAccountDisplayNameResourceId());
        editorEdit.putString(SP_KEY_USER_AUTH_TOKEN, behanceSDKSocialAccountDTO.getUserAuthToken());
        editorEdit.putLong(SP_KEY_USER_AUTH_TOKEN_EXPIRY_TIME, behanceSDKSocialAccountDTO.getUserAuthTokenExpiryTime());
        editorEdit.putString(SP_KEY_USER_ID, behanceSDKSocialAccountDTO.getUserId());
        editorEdit.putString(SP_KEY_ADDITIONAL_DATA, behanceSDKSocialAccountDTO.getAdditionalData());
        editorEdit.putBoolean(SP_KEY_SHARE_ENABLED_LAST_TIME, behanceSDKSocialAccountDTO.isSharingEnabledLastTime());
        editorEdit.putBoolean(SP_KEY_USER_AUTHENTICATED, behanceSDKSocialAccountDTO.isUserAuthenticated());
        return editorEdit.commit();
    }

    private boolean removeAccountFromStorage(BehanceSDKSocialAccountType behanceSDKSocialAccountType, Context context) {
        SharedPreferences.Editor editorEdit = getSharedPreference(behanceSDKSocialAccountType, context).edit();
        editorEdit.clear();
        return editorEdit.commit();
    }
}
