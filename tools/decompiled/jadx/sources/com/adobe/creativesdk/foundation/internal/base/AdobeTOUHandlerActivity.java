package com.adobe.creativesdk.foundation.internal.base;

import android.os.Bundle;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;

/* JADX INFO: loaded from: classes.dex */
public class AdobeTOUHandlerActivity extends AdobeCSDKBaseActivity {
    AdobeAuthSessionHelper authSessionHelper = null;
    AdobeAuthSessionHelper.IAdobeAuthStatusCallback authStatusCallback = new AdobeAuthSessionHelper.IAdobeAuthStatusCallback() { // from class: com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity.1
        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.IAdobeAuthStatusCallback
        public void call(AdobeAuthSessionHelper.AdobeAuthStatus adobeAuthStatus, AdobeAuthException adobeAuthException) {
            if (AdobeAuthSessionHelper.AdobeAuthStatus.AdobeAuthContinuableEvent == adobeAuthStatus) {
                AdobeAuthErrorCode errorCode = adobeAuthException.getErrorCode();
                if (errorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION || errorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UPDATED_TOU || errorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION) {
                    AdobeUXAuthManager.getSharedAuthManager().openContinuableAuthenticationEvent(new AdobeAuthSessionLauncher.Builder().withActivity(AdobeTOUHandlerActivity.this).withContinuableErrorCode(errorCode).build());
                }
            }
        }
    };

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.authSessionHelper = new AdobeAuthSessionHelper(this.authStatusCallback);
        this.authSessionHelper.onCreate(null);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.authSessionHelper.onPause();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.authSessionHelper.onResume();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.authSessionHelper.onDestroy();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.authSessionHelper.onStart();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.authSessionHelper.onStop();
    }
}
