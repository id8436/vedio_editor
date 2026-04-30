package com.google.android.gms.common;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompatExtras;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzm;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzic;
import java.io.InputStream;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Scanner;

/* JADX INFO: loaded from: classes.dex */
public final class GooglePlayServicesUtil {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";

    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 7327000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    public static boolean zzOV = false;
    public static boolean zzOW = false;
    private static int zzOX = -1;
    private static final Object zznu = new Object();
    private static String zzOY = null;
    private static Integer zzOZ = null;

    /* JADX INFO: loaded from: classes2.dex */
    class zza extends Handler {
        private final Context zzoh;

        zza(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.zzoh = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.zzoh);
                    if (GooglePlayServicesUtil.isUserRecoverableError(iIsGooglePlayServicesAvailable)) {
                        GooglePlayServicesUtil.zza(iIsGooglePlayServicesAvailable, this.zzoh);
                    }
                    break;
                default:
                    Log.w("GooglePlayServicesUtil", "Don't know how to handle this message: " + message.what);
                    break;
            }
        }
    }

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zza(i, activity, null, i2, onCancelListener);
    }

    protected static int getErrorNotificationId(int i) {
        switch (i) {
            case 1:
            case 3:
            case 18:
                return 10436;
            default:
                return 39789;
        }
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        Intent intentZzar = zzar(i);
        if (intentZzar == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, intentZzar, 268435456);
    }

    @Deprecated
    public static String getErrorString(int i) {
        switch (i) {
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            case 12:
            case 13:
            case 14:
            case 15:
            case 17:
            default:
                return "UNKNOWN_ERROR_CODE";
            case 16:
                return "API_UNAVAILABLE";
            case 18:
                return "SERVICE_UPDATING";
        }
    }

    @Deprecated
    public static String getOpenSourceSoftwareLicenseInfo(Context context) {
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(new Uri.Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("oss_notice").build());
            try {
                String next = new Scanner(inputStreamOpenInputStream).useDelimiter("\\A").next();
                if (inputStreamOpenInputStream == null) {
                    return next;
                }
                inputStreamOpenInputStream.close();
                return next;
            } catch (NoSuchElementException e2) {
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                return null;
            } catch (Throwable th) {
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            return null;
        }
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011e  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18, types: [int] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.pm.PackageManager] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.content.pm.PackageManager] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.common.zzc] */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.google.android.gms.common.zzc] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a1 -> B:39:0x00cd). Please report as a decompilation issue!!! */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int isGooglePlayServicesAvailable(android.content.Context r9) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.GooglePlayServicesUtil.isGooglePlayServicesAvailable(android.content.Context):int");
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 9:
                return true;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            default:
                return false;
        }
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, onCancelListener);
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, Fragment fragment, int i2, DialogInterface.OnCancelListener onCancelListener) {
        boolean z = false;
        Dialog dialogZza = zza(i, activity, fragment, i2, onCancelListener);
        if (dialogZza == null) {
            return false;
        }
        try {
            z = activity instanceof FragmentActivity;
        } catch (NoClassDefFoundError e2) {
        }
        if (z) {
            SupportErrorDialogFragment.newInstance(dialogZza, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), GMS_ERROR_DIALOG);
        } else {
            if (!zzic.zzne()) {
                throw new RuntimeException("This Activity does not support Fragments.");
            }
            ErrorDialogFragment.newInstance(dialogZza, onCancelListener).show(activity.getFragmentManager(), GMS_ERROR_DIALOG);
        }
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        if (zzhs.zzV(context) && i == 2) {
            i = 42;
        }
        if (zze(context, i) || zzf(context, i)) {
            zzP(context);
        } else {
            zza(i, context);
        }
    }

    @Deprecated
    public static void zzM(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int iIsGooglePlayServicesAvailable = isGooglePlayServicesAvailable(context);
        if (iIsGooglePlayServicesAvailable != 0) {
            Intent intentZzar = zzar(iIsGooglePlayServicesAvailable);
            Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + iIsGooglePlayServicesAvailable);
            if (intentZzar != null) {
                throw new GooglePlayServicesRepairableException(iIsGooglePlayServicesAvailable, "Google Play Services not available", intentZzar);
            }
            throw new GooglePlayServicesNotAvailableException(iIsGooglePlayServicesAvailable);
        }
    }

    private static void zzO(Context context) {
        Integer num;
        synchronized (zznu) {
            if (zzOY == null) {
                zzOY = context.getPackageName();
                try {
                    Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                    if (bundle != null) {
                        zzOZ = Integer.valueOf(bundle.getInt("com.google.android.gms.version"));
                    } else {
                        zzOZ = null;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.wtf("GooglePlayServicesUtil", "This should never happen.", e2);
                }
            } else if (!zzOY.equals(context.getPackageName())) {
                throw new IllegalArgumentException("isGooglePlayServicesAvailable should only be called with Context from your application's package. A previous call used package '" + zzOY + "' and this call used package '" + context.getPackageName() + "'.");
            }
            num = zzOZ;
        }
        if (num == null) {
            throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
        if (num.intValue() != 7327000) {
            throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 7327000 but found " + num + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
    }

    private static void zzP(Context context) {
        zza zzaVar = new zza(context);
        zzaVar.sendMessageDelayed(zzaVar.obtainMessage(1), 120000L);
    }

    @Deprecated
    public static void zzQ(Context context) {
        try {
            ((NotificationManager) context.getSystemService("notification")).cancel(10436);
        } catch (SecurityException e2) {
        }
    }

    private static String zzR(Context context) {
        ApplicationInfo applicationInfo;
        String str = context.getApplicationInfo().name;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e2) {
            applicationInfo = null;
        }
        return applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo).toString() : packageName;
    }

    private static Dialog zza(int i, Activity activity, Fragment fragment, int i2, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        if (zzhs.zzV(activity) && i == 2) {
            i = 42;
        }
        if (zzic.zznh()) {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            if ("Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId))) {
                builder = new AlertDialog.Builder(activity, 5);
            }
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(zzf.zzh(activity, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Intent intentZzar = zzar(i);
        zzg zzgVar = fragment == null ? new zzg(activity, intentZzar, i2) : new zzg(fragment, intentZzar, i2);
        String strZzi = zzf.zzi(activity, i);
        if (strZzi != null) {
            builder.setPositiveButton(strZzi, zzgVar);
        }
        String strZzg = zzf.zzg(activity, i);
        if (strZzg != null) {
            builder.setTitle(strZzg);
        }
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(int i, Context context) {
        zza(i, context, (String) null);
    }

    private static void zza(int i, Context context, String str) {
        Notification notificationBuild;
        Resources resources = context.getResources();
        String strZzj = zzf.zzj(context, i);
        String string = resources.getString(com.google.android.gms.R.string.common_google_play_services_error_notification_requested_by_msg, zzR(context));
        PendingIntent errorPendingIntent = getErrorPendingIntent(i, context, 0);
        if (zzhs.zzV(context)) {
            zzv.zzP(zzic.zzni());
            notificationBuild = new Notification.Builder(context).setSmallIcon(com.google.android.gms.R.drawable.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new Notification.BigTextStyle().bigText(strZzj + " " + string)).addAction(com.google.android.gms.R.drawable.common_full_open_on_phone, resources.getString(com.google.android.gms.R.string.common_open_on_phone), errorPendingIntent).build();
        } else {
            Notification notification = new Notification(R.drawable.stat_sys_warning, resources.getString(com.google.android.gms.R.string.common_google_play_services_notification_ticker), System.currentTimeMillis());
            notification.flags |= 16;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.flags |= 256;
            } else if (Build.VERSION.SDK_INT >= 19) {
                notification.extras.putBoolean(NotificationCompatExtras.EXTRA_LOCAL_ONLY, true);
            }
            notification.setLatestEventInfo(context, strZzj, string, errorPendingIntent);
            notificationBuild = notification;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (str != null) {
            notificationManager.notify(str, getErrorNotificationId(i), notificationBuild);
        } else {
            notificationManager.notify(getErrorNotificationId(i), notificationBuild);
        }
    }

    public static boolean zza(Context context, int i, String str) {
        if (zzic.zznk()) {
            try {
                ((AppOpsManager) context.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e2) {
                return false;
            }
        }
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i);
        if (str == null || packagesForUid == null) {
            return false;
        }
        for (String str2 : packagesForUid) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public static Intent zzar(int i) {
        switch (i) {
            case 1:
            case 2:
            case 18:
                return zzm.zzbQ("com.google.android.gms");
            case 3:
                return zzm.zzbO("com.google.android.gms");
            case 42:
                return zzm.zzmk();
            default:
                return null;
        }
    }

    public static boolean zzb(PackageManager packageManager) {
        synchronized (zznu) {
            if (zzOX == -1) {
                try {
                    if (zzc.zzkA().zza(packageManager.getPackageInfo("com.google.android.gms", 64), zzb.zzON[1]) != null) {
                        zzOX = 1;
                    } else {
                        zzOX = 0;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    zzOX = 0;
                }
            }
        }
        return zzOX != 0;
    }

    @Deprecated
    public static boolean zzb(PackageManager packageManager, String str) {
        return zzc.zzkA().zzb(packageManager, str);
    }

    public static boolean zzc(PackageManager packageManager) {
        return zzb(packageManager) || !zzkz();
    }

    public static boolean zzd(Context context, int i) {
        return zza(context, i, "com.google.android.gms") && zzb(context.getPackageManager(), "com.google.android.gms");
    }

    @Deprecated
    public static boolean zze(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zzh(context, "com.google.android.gms");
        }
        return false;
    }

    @Deprecated
    public static boolean zzf(Context context, int i) {
        if (i == 9) {
            return zzh(context, GOOGLE_PLAY_STORE_PACKAGE);
        }
        return false;
    }

    public static boolean zzh(Context context, String str) {
        if (zzic.zznm()) {
            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
        } else {
            try {
                if (context.getPackageManager().getApplicationInfo(str, 8192).enabled) {
                    return true;
                }
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
        return false;
    }

    public static boolean zzkz() {
        return zzOV ? zzOW : "user".equals(Build.TYPE);
    }
}
