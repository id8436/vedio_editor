package com.adobe.creativeapps.settings.utils;

import android.content.Context;
import android.util.Log;
import com.adobe.creativesdk.behance.AdobeUXBehanceWorkflow;
import com.adobe.creativesdk.behance.IAdobeBehanceSDKGetUserProfileListener;
import com.behance.sdk.BehanceSDKUserProfile;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSource {
    private static BehanceSource instance = new BehanceSource();

    public interface IBehanceAccountDetailsUpdate {
        void behanceDetailsUpdated(BehanceSDKUserProfile behanceSDKUserProfile, Exception exc);
    }

    public static BehanceSource getInstance() {
        if (instance == null) {
            instance = new BehanceSource();
        }
        return instance;
    }

    public final void getBehanceAccountDetails(final IBehanceAccountDetailsUpdate iBehanceAccountDetailsUpdate, Context context) {
        try {
            AdobeUXBehanceWorkflow.getBehanceUserProfile(new IAdobeBehanceSDKGetUserProfileListener() { // from class: com.adobe.creativeapps.settings.utils.BehanceSource.1
                @Override // com.adobe.creativesdk.behance.IAdobeBehanceSDKGetUserProfileListener, com.behance.sdk.IBehanceSDKGetUserProfileListener
                public void onGetUserProfileSuccess(BehanceSDKUserProfile behanceSDKUserProfile) {
                    iBehanceAccountDetailsUpdate.behanceDetailsUpdated(behanceSDKUserProfile, null);
                }

                @Override // com.adobe.creativesdk.behance.IAdobeBehanceSDKGetUserProfileListener, com.behance.sdk.IBehanceSDKGetUserProfileListener
                public void onEditProfileFailure(Exception exc) {
                    Log.e("BehanceSource", "Exception in behance", exc);
                    iBehanceAccountDetailsUpdate.behanceDetailsUpdated(null, exc);
                }
            }, context);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
