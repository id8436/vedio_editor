package com.behance.sdk.ui.activities;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.behance.sdk.R;
import com.behance.sdk.asynctasks.result.BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.fragments.BehanceSDKLoginToTwitterFragment;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKLoginToTwitterActivity extends FragmentActivity implements BehanceSDKLoginToTwitterFragment.Callbacks {
    public static final int TWITTER_ACTIVITY_LOGIN_FAILED = 0;
    public static final int TWITTER_ACTIVITY_LOGIN_SUCCESSFULL = 1;
    public static final int TWITTER_ACTIVITY_NO_NETWORK_CONNECTIVITY = 2;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKLoginToTwitterActivity.class);

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bsdk_activity_login_user_to_social_client);
        if (bundle == null) {
            Bundle bundle2 = new Bundle();
            BehanceSDKLoginToTwitterFragment behanceSDKLoginToTwitterFragment = new BehanceSDKLoginToTwitterFragment();
            behanceSDKLoginToTwitterFragment.setArguments(bundle2);
            getSupportFragmentManager().beginTransaction().add(R.id.bsdkLoginUserToSocialClientFragmentContainer, behanceSDKLoginToTwitterFragment, BehanceSDKLoginToTwitterFragment.FRAGMENT_TAG_LOGIN_TO_SOCIAL_CLIENT).commit();
            behanceSDKLoginToTwitterFragment.setCallbacks(this);
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKLoginToTwitterFragment.Callbacks
    public void onTwitterAuthenticationSuccess(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult) {
        setResult(1);
        finish();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKLoginToTwitterFragment.Callbacks
    public void onTwitterAuthenticationFailure(Exception exc) {
        logger.error("Error while Authenticating User on Twitter. [error: %s]", exc.getMessage());
        setResult(0);
        finish();
    }
}
