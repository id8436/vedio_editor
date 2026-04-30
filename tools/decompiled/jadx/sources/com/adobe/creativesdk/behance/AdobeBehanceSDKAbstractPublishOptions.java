package com.adobe.creativesdk.behance;

import android.app.Activity;
import com.behance.sdk.BehanceSDKAbstractPublishOptions;

/* JADX INFO: loaded from: classes.dex */
public class AdobeBehanceSDKAbstractPublishOptions {
    private BehanceSDKAbstractPublishOptions mBehanceSDKAbstractPublishOptions;

    protected BehanceSDKAbstractPublishOptions getBehanceSDKPublishOptions() {
        return this.mBehanceSDKAbstractPublishOptions;
    }

    public AdobeBehanceSDKAbstractPublishOptions(BehanceSDKAbstractPublishOptions behanceSDKAbstractPublishOptions) {
        this.mBehanceSDKAbstractPublishOptions = behanceSDKAbstractPublishOptions;
    }

    public void setTwitterConsumerKey(String str) {
        this.mBehanceSDKAbstractPublishOptions.setTwitterConsumerKey(str);
    }

    public void setTwitterConsumerSecretKey(String str) {
        this.mBehanceSDKAbstractPublishOptions.setTwitterConsumerSecretKey(str);
    }

    public void setFacebookClientID(String str) {
        this.mBehanceSDKAbstractPublishOptions.setFacebookClientId(str);
    }

    public void setFacebookShareEnabled(boolean z) {
        this.mBehanceSDKAbstractPublishOptions.setFacebookShareEnabled(z);
    }

    public void setTwitterShareEnabled(boolean z) {
        this.mBehanceSDKAbstractPublishOptions.setTwitterShareEnabled(z);
    }

    public void setNotificationHandlerActivityClass(Class<? extends Activity> cls) {
        this.mBehanceSDKAbstractPublishOptions.setNotificationHandlerActivityClass(cls);
    }

    public boolean isFacebookEnabled() {
        return this.mBehanceSDKAbstractPublishOptions.isFacebookShareEnabled();
    }

    public boolean isTwitterShareEnabled() {
        return this.mBehanceSDKAbstractPublishOptions.isTwitterShareEnabled();
    }

    public String getFacebookClientID() {
        return this.mBehanceSDKAbstractPublishOptions.getFacebookClientId();
    }

    public String getTwitterConsumerKey() {
        return this.mBehanceSDKAbstractPublishOptions.getTwitterConsumerKey();
    }

    public String getTwitterConsumerSecretKey() {
        return this.mBehanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey();
    }

    public Class<? extends Activity> getNotificationHandlerActivityClass() {
        return this.mBehanceSDKAbstractPublishOptions.getNotificationHandlerActivityClass();
    }

    public IAdobeBehanceProjectPublishListener getPublishListener() {
        return (IAdobeBehanceProjectPublishListener) this.mBehanceSDKAbstractPublishOptions.getPublishListener();
    }

    public void setPublishListener(IAdobeBehanceProjectPublishListener iAdobeBehanceProjectPublishListener) {
        this.mBehanceSDKAbstractPublishOptions.setPublishListener(iAdobeBehanceProjectPublishListener);
    }
}
