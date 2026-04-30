package com.adobe.premiereclip.util;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CloudUtil {

    public interface Listener {
        void onCloudError();

        void onCloudInit();

        void onNewCloud();
    }

    public static void initCloud(Context context, final Listener listener) {
        final AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        AdobeCloudManager.getSharedCloudManager().refreshClouds(new IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>>() { // from class: com.adobe.premiereclip.util.CloudUtil.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobeCloud> arrayList) {
                Log.d("CloudUtil", "refreshcloud complete!!!!");
                if (defaultCloud != null) {
                    if (AdobeCloudManager.getSharedCloudManager().getMatchingCloud(defaultCloud) != null) {
                        listener.onCloudInit();
                        return;
                    } else {
                        listener.onNewCloud();
                        return;
                    }
                }
                listener.onNewCloud();
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.premiereclip.util.CloudUtil.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                listener.onCloudError();
            }
        }, new Handler());
    }

    public static boolean isAuthenticated() {
        try {
            return AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID() != null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
