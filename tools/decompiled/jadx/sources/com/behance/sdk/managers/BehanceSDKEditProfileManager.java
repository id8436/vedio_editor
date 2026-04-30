package com.behance.sdk.managers;

import com.behance.sdk.IBehanceSDKEditProfileListener;
import com.behance.sdk.IBehanceSDKUserCredentials;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEditProfileManager {
    private static final BehanceSDKEditProfileManager INSTANCE = new BehanceSDKEditProfileManager();
    private IBehanceSDKEditProfileListener editProfileListener;
    private IBehanceSDKUserCredentials userCredentials;

    public static BehanceSDKEditProfileManager getInstance() {
        return INSTANCE;
    }

    public IBehanceSDKUserCredentials getUserCredentials() {
        return this.userCredentials;
    }

    public void setUserCredentials(IBehanceSDKUserCredentials iBehanceSDKUserCredentials) {
        this.userCredentials = iBehanceSDKUserCredentials;
    }

    public void setEditProfileListener(IBehanceSDKEditProfileListener iBehanceSDKEditProfileListener) {
        this.editProfileListener = iBehanceSDKEditProfileListener;
    }

    public void onEditProfileSuccess() {
        this.editProfileListener.onEditProfileSuccess();
    }
}
