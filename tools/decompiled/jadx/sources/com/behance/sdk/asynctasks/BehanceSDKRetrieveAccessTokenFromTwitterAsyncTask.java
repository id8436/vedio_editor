package com.behance.sdk.asynctasks;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.behance.sdk.BehanceSDKSocialAccountManager;
import com.behance.sdk.OAuth.TwitterClient;
import com.behance.sdk.asynctask.listeners.IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;
import com.behance.sdk.dto.BehanceSDKSocialAccountDTO;
import com.behance.sdk.enums.BehanceSDKSocialAccountType;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.OAuthProvider;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.exception.OAuthNotAuthorizedException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask extends AsyncTask<BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams, Void, BehanceSDKRetrieveAccessTokenFromTwitterTaskResult> {
    private static final String GET_TWITTER_USERNAME_API = "https://api.twitter.com/1.1/account/settings.json";
    private static final String OAUTH_VERIFIER_FROM_BROWSER = "oauth_verifier";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask.class);
    private OAuthConsumer consumer;
    private Context context;
    private IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener listener;
    private OAuthProvider provider;
    private BehanceSDKRetrieveAccessTokenFromTwitterTaskResult result;
    private BehanceSDKSocialAccountDTO socialAccountDTO;
    private BehanceSDKSocialAccountManager socialAccountManager = BehanceSDKSocialAccountManager.getInstance();

    public BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask(IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener iBehanceSDKRetrieveAccessTokenFromTwitterTaskListener, Context context) {
        this.listener = iBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;
        this.socialAccountDTO = this.socialAccountManager.getAccount(BehanceSDKSocialAccountType.TWITTER, context);
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKRetrieveAccessTokenFromTwitterTaskResult doInBackground(BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams... behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParamsArr) {
        this.result = new BehanceSDKRetrieveAccessTokenFromTwitterTaskResult();
        BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams = behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParamsArr[0];
        String authURL = behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams.getAuthURL();
        String consumerKey = behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams.getConsumerKey();
        String consumerSecret = behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams.getConsumerSecret();
        this.provider = TwitterClient.getInstance(consumerKey, consumerSecret).getOAuthProvider();
        this.consumer = TwitterClient.getInstance(consumerKey, consumerSecret).getOAuthConsumer();
        retrieveAccessTokenFromTwitter(authURL, consumerKey, consumerSecret);
        if (this.consumer.getToken() == null || this.consumer.getToken().isEmpty() || this.consumer.getTokenSecret() == null || this.consumer.getTokenSecret().isEmpty()) {
            this.result.setExceptionOccurred(true);
            this.result.setException(new Exception("Twitter Access token or access secret is empty"));
            return this.result;
        }
        if (this.socialAccountDTO != null) {
            this.socialAccountDTO.setUserAuthToken(this.consumer.getToken());
            this.socialAccountDTO.setAdditionalData(this.consumer.getTokenSecret());
            this.socialAccountDTO.setUserId(retrieveUserNameFromTwitter());
            this.socialAccountManager.updateAccount(this.socialAccountDTO, this.context);
        }
        return this.result;
    }

    private String retrieveUserNameFromTwitter() {
        String responseObject;
        int responseCode;
        try {
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(GET_TWITTER_USERNAME_API, null, null, this.consumer, null);
            responseObject = behanceConnectionResponseInvokeHttpPostRequest.getResponseObject();
            responseCode = behanceConnectionResponseInvokeHttpPostRequest.getResponseCode();
        } catch (Throwable th) {
            logger.error(th, "Problem retrieving user name", new Object[0]);
        }
        if (responseCode == 200) {
            return new JSONObject(responseObject).optString("screen_name");
        }
        logger.error("Unexpected return code while retrieving user name from twitter. [return code - %s]", Integer.valueOf(responseCode));
        return null;
    }

    private void retrieveAccessTokenFromTwitter(String str, String str2, String str3) {
        if (str != null && str.length() > 0) {
            String queryParameter = Uri.parse(str).getQueryParameter("oauth_verifier");
            if (queryParameter != null && queryParameter.length() > 0) {
                try {
                    this.provider.retrieveAccessToken(this.consumer, queryParameter, new String[0]);
                    return;
                } catch (OAuthMessageSignerException e2) {
                    e = e2;
                    this.result.setExceptionOccurred(true);
                    this.result.setException(e);
                    return;
                } catch (OAuthCommunicationException e3) {
                    e = e3;
                    this.result.setExceptionOccurred(true);
                    this.result.setException(e);
                    return;
                } catch (Exception e4) {
                    this.result.setExceptionOccurred(true);
                    this.result.setException(e4);
                    return;
                } catch (OAuthExpectationFailedException e5) {
                    e = e5;
                    this.result.setExceptionOccurred(true);
                    this.result.setException(e);
                    return;
                } catch (OAuthNotAuthorizedException e6) {
                    e = e6;
                    this.result.setExceptionOccurred(true);
                    this.result.setException(e);
                    return;
                }
            }
            this.result.setExceptionOccurred(true);
            this.result.setException(new OAuthNotAuthorizedException((String) null));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult) {
        if (behanceSDKRetrieveAccessTokenFromTwitterTaskResult.isExceptionOccurred()) {
            this.listener.onRetrieveAccessTokenFromTwitterFailure(behanceSDKRetrieveAccessTokenFromTwitterTaskResult);
        } else {
            this.listener.onRetrieveAccessTokenFromTwitterSuccess(behanceSDKRetrieveAccessTokenFromTwitterTaskResult);
        }
    }
}
