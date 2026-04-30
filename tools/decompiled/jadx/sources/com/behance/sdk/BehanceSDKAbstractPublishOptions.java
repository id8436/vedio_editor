package com.behance.sdk;

import android.app.Activity;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BehanceSDKAbstractPublishOptions {
    private String facebookClientId;
    private Class<? extends Activity> notificationHandlerActivityClass;
    private IBehanceSDKProjectPublishListener publishListener;
    private String twitterConsumerKey;
    private String twitterConsumerSecretKey;
    private boolean facebookShareEnabled = false;
    private boolean twitterShareEnabled = false;

    public Class<? extends Activity> getNotificationHandlerActivityClass() {
        return this.notificationHandlerActivityClass;
    }

    public void setNotificationHandlerActivityClass(Class<? extends Activity> cls) {
        this.notificationHandlerActivityClass = cls;
    }

    public boolean isFacebookShareEnabled() {
        return this.facebookShareEnabled;
    }

    public void setFacebookShareEnabled(boolean z) {
        this.facebookShareEnabled = z;
    }

    public boolean isTwitterShareEnabled() {
        return this.twitterShareEnabled;
    }

    public void setTwitterShareEnabled(boolean z) {
        this.twitterShareEnabled = z;
    }

    public String getFacebookClientId() {
        return this.facebookClientId;
    }

    public void setFacebookClientId(String str) {
        this.facebookClientId = str;
    }

    public String getTwitterConsumerKey() {
        return this.twitterConsumerKey;
    }

    public void setTwitterConsumerKey(String str) {
        this.twitterConsumerKey = str;
    }

    public String getTwitterConsumerSecretKey() {
        return this.twitterConsumerSecretKey;
    }

    public void setTwitterConsumerSecretKey(String str) {
        this.twitterConsumerSecretKey = str;
    }

    public IBehanceSDKProjectPublishListener getPublishListener() {
        return this.publishListener;
    }

    public void setPublishListener(IBehanceSDKProjectPublishListener iBehanceSDKProjectPublishListener) {
        this.publishListener = iBehanceSDKProjectPublishListener;
    }
}
