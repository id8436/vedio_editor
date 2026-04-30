package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.OAuth.TwitterClient;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetAuthURLFromTwitterTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKGetAuthUrlFromTwitterTaskResult;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.exception.OAuthNotAuthorizedException;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetAuthURLFromTwitterAsyncTask extends AsyncTask<BehanceSDKGetAuthURLFromTwitterAsyncTaskParams, Void, BehanceSDKGetAuthUrlFromTwitterTaskResult> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetAuthURLFromTwitterAsyncTask.class);
    private IBehanceSDKGetAuthURLFromTwitterTaskListener listener;

    public BehanceSDKGetAuthURLFromTwitterAsyncTask(IBehanceSDKGetAuthURLFromTwitterTaskListener iBehanceSDKGetAuthURLFromTwitterTaskListener) {
        this.listener = iBehanceSDKGetAuthURLFromTwitterTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKGetAuthUrlFromTwitterTaskResult doInBackground(BehanceSDKGetAuthURLFromTwitterAsyncTaskParams... behanceSDKGetAuthURLFromTwitterAsyncTaskParamsArr) {
        BehanceSDKGetAuthUrlFromTwitterTaskResult behanceSDKGetAuthUrlFromTwitterTaskResult = new BehanceSDKGetAuthUrlFromTwitterTaskResult();
        String strRetrieveRequestToken = null;
        BehanceSDKGetAuthURLFromTwitterAsyncTaskParams behanceSDKGetAuthURLFromTwitterAsyncTaskParams = behanceSDKGetAuthURLFromTwitterAsyncTaskParamsArr[0];
        String consumerKey = behanceSDKGetAuthURLFromTwitterAsyncTaskParams.getConsumerKey();
        String consumerSecret = behanceSDKGetAuthURLFromTwitterAsyncTaskParams.getConsumerSecret();
        try {
            strRetrieveRequestToken = TwitterClient.getInstance(consumerKey, consumerSecret).getOAuthProvider().retrieveRequestToken(TwitterClient.getInstance(consumerKey, consumerSecret).getOAuthConsumer(), TwitterClient.TWITTER_OAUTH_CALLBACK_URI, new String[0]);
        } catch (OAuthCommunicationException e2) {
            behanceSDKGetAuthUrlFromTwitterTaskResult.setExceptionOccurred(true);
            behanceSDKGetAuthUrlFromTwitterTaskResult.setException(e2);
        } catch (OAuthNotAuthorizedException e3) {
            behanceSDKGetAuthUrlFromTwitterTaskResult.setExceptionOccurred(true);
            behanceSDKGetAuthUrlFromTwitterTaskResult.setException(e3);
        } catch (OAuthExpectationFailedException e4) {
            behanceSDKGetAuthUrlFromTwitterTaskResult.setExceptionOccurred(true);
            behanceSDKGetAuthUrlFromTwitterTaskResult.setException(e4);
        } catch (Exception e5) {
            behanceSDKGetAuthUrlFromTwitterTaskResult.setExceptionOccurred(true);
            behanceSDKGetAuthUrlFromTwitterTaskResult.setException(e5);
        } catch (OAuthMessageSignerException e6) {
            behanceSDKGetAuthUrlFromTwitterTaskResult.setExceptionOccurred(true);
            behanceSDKGetAuthUrlFromTwitterTaskResult.setException(e6);
        }
        logger.debug("Auth URL returned from twitter is %s", strRetrieveRequestToken);
        behanceSDKGetAuthUrlFromTwitterTaskResult.setAuthURL(strRetrieveRequestToken);
        return behanceSDKGetAuthUrlFromTwitterTaskResult;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKGetAuthUrlFromTwitterTaskResult behanceSDKGetAuthUrlFromTwitterTaskResult) {
        if (behanceSDKGetAuthUrlFromTwitterTaskResult.isExceptionOccurred()) {
            this.listener.onGetAuthURLFromTwitterFailure(behanceSDKGetAuthUrlFromTwitterTaskResult);
        } else {
            this.listener.onGetAuthURLFromTwitterSuccess(behanceSDKGetAuthUrlFromTwitterTaskResult);
        }
    }
}
