package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.zza;
import com.google.android.gms.internal.zzha;
import com.google.android.gms.internal.zzr;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;
import org.apache.http.HttpHeaders;

/* JADX INFO: loaded from: classes.dex */
public final class GoogleAuthUtil {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    public static final String KEY_REQUEST_ACTIONS = "request_visible_actions";

    @Deprecated
    public static final String KEY_REQUEST_VISIBLE_ACTIVITIES = "request_visible_actions";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    private static final ComponentName zzKA;
    private static final ComponentName zzKB;

    static {
        KEY_CALLER_UID = Build.VERSION.SDK_INT >= 11 ? "callerUid" : "callerUid";
        KEY_ANDROID_PACKAGE_NAME = Build.VERSION.SDK_INT >= 14 ? "androidPackageName" : "androidPackageName";
        zzKA = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
        zzKB = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
    }

    private GoogleAuthUtil() {
    }

    public static void clearToken(Context context, String str) throws GoogleAuthException, IOException {
        Context applicationContext = context.getApplicationContext();
        zzv.zzbJ("Calling this from your main thread can lead to deadlock");
        zzM(applicationContext);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        zza zzaVar = new zza();
        zzk zzkVarZzU = zzk.zzU(applicationContext);
        try {
            if (!zzkVarZzU.zza(zzKA, zzaVar, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service with the given context.");
            }
            try {
                Bundle bundleZza = zzr.zza.zza(zzaVar.zzku()).zza(str, bundle);
                String string = bundleZza.getString(zzha.zzLz);
                if (bundleZza.getBoolean("booleanResult")) {
                } else {
                    throw new GoogleAuthException(string);
                }
            } catch (RemoteException e2) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", e2);
                throw new IOException("remote exception");
            } catch (InterruptedException e3) {
                throw new GoogleAuthException("Interrupted");
            }
        } finally {
            zzkVarZzU.zzb(zzKA, zzaVar, "GoogleAuthUtil");
        }
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int i, String str) throws GoogleAuthException, IOException {
        zzv.zzh(str, "accountName must be provided");
        zzv.zzbJ("Calling this from your main thread can lead to deadlock");
        Context applicationContext = context.getApplicationContext();
        zzM(applicationContext);
        zza zzaVar = new zza();
        zzk zzkVarZzU = zzk.zzU(applicationContext);
        try {
            if (!zzkVarZzU.zza(zzKA, zzaVar, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service with the given context.");
            }
            try {
                try {
                    return zzr.zza.zza(zzaVar.zzku()).zza(new AccountChangeEventsRequest().setAccountName(str).setEventIndex(i)).getEvents();
                } catch (RemoteException e2) {
                    Log.i("GoogleAuthUtil", "GMS remote exception ", e2);
                    throw new IOException("remote exception");
                }
            } catch (InterruptedException e3) {
                throw new GoogleAuthException("Interrupted");
            }
        } finally {
            zzkVarZzU.zzb(zzKA, zzaVar, "GoogleAuthUtil");
        }
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException, IOException {
        zzv.zzh(str, "accountName must be provided");
        zzv.zzbJ("Calling this from your main thread can lead to deadlock");
        zzM(context.getApplicationContext());
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str) throws IOException, GoogleAuthException {
        return getToken(context, account, str, new Bundle());
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) throws IOException, GoogleAuthException {
        return zza(context, account, str, bundle, null);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) throws IOException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) throws IOException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2, bundle);
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle) throws IOException, GoogleAuthException {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBoolean("handle_notification", true);
        return zza(context, account, str, bundle);
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle, Intent intent) throws IOException, GoogleAuthException {
        zzh(intent);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putParcelable("callback_intent", intent);
        bundle.putBoolean("handle_notification", true);
        return zza(context, account, str, bundle);
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle, String str2, Bundle bundle2) throws IOException, GoogleAuthException {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("Authority cannot be empty or null.");
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        ContentResolver.validateSyncExtrasBundle(bundle2);
        bundle.putString("authority", str2);
        bundle.putBundle("sync_extras", bundle2);
        bundle.putBoolean("handle_notification", true);
        return zza(context, account, str, bundle);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle) throws IOException, GoogleAuthException {
        return getTokenWithNotification(context, new Account(str, "com.google"), str2, bundle);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle, Intent intent) throws IOException, GoogleAuthException {
        return getTokenWithNotification(context, new Account(str, "com.google"), str2, bundle, intent);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle, String str3, Bundle bundle2) throws IOException, GoogleAuthException {
        return getTokenWithNotification(context, new Account(str, "com.google"), str2, bundle, str3, bundle2);
    }

    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    private static void zzM(Context context) throws GoogleAuthException {
        try {
            GooglePlayServicesUtil.zzM(context);
        } catch (GooglePlayServicesNotAvailableException e2) {
            throw new GoogleAuthException(e2.getMessage());
        } catch (GooglePlayServicesRepairableException e3) {
            throw new GooglePlayServicesAvailabilityException(e3.getConnectionStatusCode(), e3.getMessage(), e3.getIntent());
        }
    }

    private static String zza(Context context, Account account, String str, Bundle bundle) throws IOException, GoogleAuthException {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            return getToken(context, account, str, bundle);
        } catch (GooglePlayServicesAvailabilityException e2) {
            GooglePlayServicesUtil.showErrorNotification(e2.getConnectionStatusCode(), context);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        } catch (UserRecoverableAuthException e3) {
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
    }

    public static String zza(Context context, Account account, String str, Bundle bundle, Boolean bool) throws IOException, GoogleAuthException {
        return zzb(context, account, str, bundle, bool).getString("authtoken");
    }

    public static Bundle zzb(Context context, Account account, String str, Bundle bundle, Boolean bool) throws GoogleAuthException, IOException {
        Context applicationContext = context.getApplicationContext();
        zzv.zzbJ("Calling this from your main thread can lead to deadlock");
        zzM(applicationContext);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        if (TextUtils.isEmpty(bundle2.getString(KEY_ANDROID_PACKAGE_NAME))) {
            bundle2.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        if (bool != null) {
            bundle2.putBoolean("UseCache", bool.booleanValue());
        }
        zza zzaVar = new zza();
        zzk zzkVarZzU = zzk.zzU(applicationContext);
        try {
            if (!zzkVarZzU.zza(zzKA, zzaVar, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service with the given context.");
            }
            try {
                Bundle bundleZza = zzr.zza.zza(zzaVar.zzku()).zza(account, str, bundle2);
                if (bundleZza == null) {
                    Log.w("GoogleAuthUtil", "Binder call returned null.");
                    throw new GoogleAuthException("ServiceUnavailable");
                }
                if (!TextUtils.isEmpty(bundleZza.getString("authtoken"))) {
                    return bundleZza;
                }
                String string = bundleZza.getString(AdobeNotification.Error);
                Intent intent = (Intent) bundleZza.getParcelable("userRecoveryIntent");
                if (zzbh(string)) {
                    throw new UserRecoverableAuthException(string, intent);
                }
                if (zzbg(string)) {
                    throw new IOException(string);
                }
                throw new GoogleAuthException(string);
            } catch (RemoteException e2) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", e2);
                throw new IOException("remote exception");
            } catch (InterruptedException e3) {
                throw new GoogleAuthException("Interrupted");
            }
        } finally {
            zzkVarZzU.zzb(zzKA, zzaVar, "GoogleAuthUtil");
        }
    }

    private static boolean zzbg(String str) {
        return "NetworkError".equals(str) || "ServiceUnavailable".equals(str) || HttpHeaders.TIMEOUT.equals(str);
    }

    private static boolean zzbh(String str) {
        return "BadAuthentication".equals(str) || "CaptchaRequired".equals(str) || "DeviceManagementRequiredOrSyncDisabled".equals(str) || "NeedPermission".equals(str) || "NeedsBrowser".equals(str) || "UserCancel".equals(str) || "AppDownloadRequired".equals(str) || zzha.DM_SYNC_DISABLED.zzjQ().equals(str) || zzha.DM_ADMIN_BLOCKED.zzjQ().equals(str) || zzha.DM_ADMIN_PENDING_APPROVAL.zzjQ().equals(str) || zzha.DM_STALE_SYNC_REQUIRED.zzjQ().equals(str) || zzha.DM_DEACTIVATED.zzjQ().equals(str) || zzha.DM_REQUIRED.zzjQ().equals(str) || zzha.THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.zzjQ().equals(str);
    }

    private static void zzh(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }
}
