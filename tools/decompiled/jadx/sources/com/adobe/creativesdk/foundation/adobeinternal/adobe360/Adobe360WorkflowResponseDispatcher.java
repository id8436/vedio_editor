package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.app.Activity;
import android.content.Intent;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSSecondaryAppComplete360WorkflowEvent;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowResponseDispatcher {
    public static void dispatchResponse(Activity activity, Intent intent, Adobe360Message adobe360Message) {
        Adobe360WorkflowActionType actionType = Adobe360Utils.getActionType(adobe360Message);
        int resultCode = Adobe360Utils.getResultCode(adobe360Message);
        new AdobeAnalyticsETSSecondaryAppComplete360WorkflowEvent(adobe360Message.getActionId(), Adobe360Utils.getETSCompleteActionType(adobe360Message), Adobe360Utils.getCallingAppPackageName(adobe360Message)).endAndTrackEvent();
        if (actionType == Adobe360WorkflowActionType.Adobe360WorkflowActionEmbed) {
            activity.finish();
        } else {
            activity.setResult(resultCode, intent);
            activity.finish();
        }
    }
}
