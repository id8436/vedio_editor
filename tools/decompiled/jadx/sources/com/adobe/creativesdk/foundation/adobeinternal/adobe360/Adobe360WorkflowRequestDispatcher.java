package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAppNotFound360WorkflowEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSPrimaryAppStart360WorkflowEvent;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowRequestDispatcher {
    private static boolean isAppInstalled(Context context, String str) {
        try {
            context.getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    private static String getSubtype(Intent intent) {
        try {
            return (String) intent.getBundleExtra("360#action").getSerializable("action_sub_type");
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowRequestDispatcher", null, e2);
            return null;
        }
    }

    public static boolean isAppInstalled(Context context, Adobe360WorkflowAction adobe360WorkflowAction) {
        try {
            return isAppInstalled(context, adobe360WorkflowAction.getApplicationPackageName());
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowRequestDispatcher", null, e2);
            return false;
        }
    }

    public static void dispatchRequest(final Activity activity, final Intent intent, final int i, Adobe360Message adobe360Message) {
        Adobe360WorkflowActionType actionType = Adobe360Utils.getActionType(adobe360Message);
        String packageName = intent.getComponent().getPackageName();
        if (isAppInstalled(activity, packageName)) {
            new AdobeAnalyticsETSPrimaryAppStart360WorkflowEvent(adobe360Message.getActionId(), Adobe360Utils.getETSStartActionType(adobe360Message.getActionType()), getSubtype(intent), intent.getComponent().getClassName(), packageName).endAndTrackEvent();
            if (actionType == Adobe360WorkflowActionType.Adobe360WorkflowActionEmbed || actionType == Adobe360WorkflowActionType.Adobe360WorkflowActionEmbedN) {
                activity.runOnUiThread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestDispatcher.1
                    @Override // java.lang.Runnable
                    public void run() {
                        activity.startActivity(intent);
                    }
                });
                return;
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestDispatcher.2
                    @Override // java.lang.Runnable
                    public void run() {
                        activity.startActivityForResult(intent, i);
                    }
                });
                return;
            }
        }
        new AdobeAnalyticsETSAppNotFound360WorkflowEvent(packageName).endAndTrackEvent();
        final Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("market://details?id=" + packageName));
        activity.runOnUiThread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestDispatcher.3
            @Override // java.lang.Runnable
            public void run() {
                activity.startActivity(intent2);
            }
        });
    }
}
