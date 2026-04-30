package com.adobe.creativesdk.foundation.adobeinternal.auth;

import android.app.Activity;
import android.content.Context;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthSocialSessionLauncher extends AdobeAuthSessionLauncher {
    private AdobeSocialLoginParams socialLoginParams;

    protected AdobeAuthSocialSessionLauncher() {
    }

    public class Builder extends AdobeAuthSessionLauncher.Builder {
        private AdobeSocialLoginParams socialLoginParams;

        public Builder withSocialLoginParams(AdobeSocialLoginParams adobeSocialLoginParams) {
            this.socialLoginParams = adobeSocialLoginParams;
            return this;
        }

        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher.Builder
        public AdobeAuthSocialSessionLauncher build() {
            AdobeAuthSocialSessionLauncher adobeAuthSocialSessionLauncher = new AdobeAuthSocialSessionLauncher();
            adobeAuthSocialSessionLauncher.socialLoginParams = this.socialLoginParams;
            setParameters(adobeAuthSocialSessionLauncher);
            return adobeAuthSocialSessionLauncher;
        }

        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher.Builder
        public Builder withActivity(Activity activity) {
            setLauncherActivity(activity);
            return this;
        }

        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher.Builder
        public Builder withContext(Context context) {
            setLauncherContext(context);
            return this;
        }

        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher.Builder
        public Builder withRequestCode(int i) {
            setRequestCode(i);
            return this;
        }

        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher.Builder
        @Deprecated
        public Builder withAdditonalScopes(String[] strArr) {
            setAdditionalScopes(strArr);
            return this;
        }

        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher.Builder
        public Builder withIntentFlags(int i) {
            setIntentFlags(i);
            return this;
        }

        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher.Builder
        public Builder withContinuableErrorCode(AdobeAuthErrorCode adobeAuthErrorCode) {
            setContinuableErrorCode(adobeAuthErrorCode);
            return this;
        }
    }

    public AdobeSocialLoginParams getSocialLoginParams() {
        return this.socialLoginParams;
    }
}
