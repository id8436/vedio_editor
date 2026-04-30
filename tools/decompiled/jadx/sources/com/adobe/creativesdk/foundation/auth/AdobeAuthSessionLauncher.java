package com.adobe.creativesdk.foundation.auth;

import android.app.Activity;
import android.content.Context;
import com.adobe.creativesdk.foundation.adobeinternal.auth.IAuthPostLoginWorkCallback;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthSessionLauncher {
    private IAuthPostLoginWorkCallback postLoginWorkCallback;
    private String redirectURI;
    private Activity launcherActivity = null;
    private Context launcherContext = null;
    private int requestCode = 2002;
    private int defaultIntentFlags = 0;
    private String[] scopesList = null;
    private AdobeAuthErrorCode continuableErrorCode = null;

    protected AdobeAuthSessionLauncher() {
    }

    public class Builder {
        AdobeAuthErrorCode continuableErrorCode;
        String[] scopesList;
        Activity launcherActivity = null;
        Context launcherContext = null;
        int requestCode = 2002;
        int defaultIntentFlags = 0;
        String redirectURI = null;
        IAuthPostLoginWorkCallback callback = null;

        public Builder withActivity(Activity activity) {
            this.launcherActivity = activity;
            this.launcherContext = null;
            return this;
        }

        public Builder withContext(Context context) {
            this.launcherContext = context;
            this.launcherActivity = null;
            return this;
        }

        public Builder withRequestCode(int i) {
            this.requestCode = i;
            return this;
        }

        public Builder withPostLoginWorkCallback(IAuthPostLoginWorkCallback iAuthPostLoginWorkCallback) {
            this.callback = iAuthPostLoginWorkCallback;
            return this;
        }

        @Deprecated
        public Builder withAdditonalScopes(String[] strArr) {
            this.scopesList = strArr;
            return this;
        }

        public Builder withIntentFlags(int i) {
            this.defaultIntentFlags = i;
            return this;
        }

        public Builder withContinuableErrorCode(AdobeAuthErrorCode adobeAuthErrorCode) {
            this.continuableErrorCode = adobeAuthErrorCode;
            return this;
        }

        @Deprecated
        public Builder withRedirectURI(String str) {
            this.redirectURI = str;
            return this;
        }

        public AdobeAuthSessionLauncher build() {
            if (this.launcherContext == null && this.launcherActivity == null) {
                throw new IllegalArgumentException("activity or context must be defined");
            }
            AdobeAuthSessionLauncher adobeAuthSessionLauncher = new AdobeAuthSessionLauncher();
            setParameters(adobeAuthSessionLauncher);
            return adobeAuthSessionLauncher;
        }

        protected void setParameters(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
            adobeAuthSessionLauncher.defaultIntentFlags = this.defaultIntentFlags;
            adobeAuthSessionLauncher.requestCode = this.requestCode;
            adobeAuthSessionLauncher.launcherActivity = this.launcherActivity;
            adobeAuthSessionLauncher.launcherContext = this.launcherContext;
            adobeAuthSessionLauncher.scopesList = this.scopesList;
            adobeAuthSessionLauncher.continuableErrorCode = this.continuableErrorCode;
            adobeAuthSessionLauncher.redirectURI = this.redirectURI;
            adobeAuthSessionLauncher.postLoginWorkCallback = this.callback;
        }

        protected void setRequestCode(int i) {
            this.requestCode = i;
        }

        protected void setAdditionalScopes(String[] strArr) {
            this.scopesList = strArr;
        }

        protected void setIntentFlags(int i) {
            this.defaultIntentFlags = i;
        }

        protected void setContinuableErrorCode(AdobeAuthErrorCode adobeAuthErrorCode) {
            this.continuableErrorCode = adobeAuthErrorCode;
        }

        protected void setLauncherActivity(Activity activity) {
            this.launcherActivity = activity;
            this.launcherContext = null;
        }

        protected void setLauncherContext(Context context) {
            this.launcherContext = context;
            this.launcherActivity = null;
        }
    }

    public Context getLauncherActivity() {
        return this.launcherActivity;
    }

    public Context getLauncherContext() {
        return this.launcherContext;
    }

    public int getRequestCode() {
        return this.requestCode;
    }

    public int getIntentFlags() {
        return this.defaultIntentFlags;
    }

    public IAuthPostLoginWorkCallback getPostLoginWorkCallback() {
        return this.postLoginWorkCallback;
    }

    public AdobeAuthErrorCode getContinuableErrorCode() {
        return this.continuableErrorCode;
    }

    @Deprecated
    public String[] getScopesList() {
        return this.scopesList;
    }

    @Deprecated
    public String getRedirectURI() {
        return this.redirectURI;
    }
}
