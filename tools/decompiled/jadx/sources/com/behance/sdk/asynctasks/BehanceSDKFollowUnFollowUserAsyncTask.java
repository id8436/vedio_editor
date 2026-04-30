package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKFollowUserAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKFollowUnFollowUserAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKFollowUnFollowUserAsyncTask extends AsyncTask<BehanceSDKFollowUnFollowUserAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<Boolean>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKFollowUnFollowUserAsyncTask.class);
    private BehanceSDKFollowUnFollowUserAsyncTaskParams followUserParams;
    private IBehanceSDKFollowUserAsyncTaskListener taskHandler;

    public BehanceSDKFollowUnFollowUserAsyncTask(IBehanceSDKFollowUserAsyncTaskListener iBehanceSDKFollowUserAsyncTaskListener) {
        this.taskHandler = iBehanceSDKFollowUserAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<Boolean> doInBackground(BehanceSDKFollowUnFollowUserAsyncTaskParams... behanceSDKFollowUnFollowUserAsyncTaskParamsArr) {
        BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpDeleteRequest;
        int i;
        BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        behanceSDKAsyncTaskResultWrapper.setResult(false);
        this.followUserParams = behanceSDKFollowUnFollowUserAsyncTaskParamsArr[0];
        String strValueOf = String.valueOf(this.followUserParams.getUserDTO().getId());
        if (strValueOf != null) {
            try {
                if (strValueOf.length() > 0) {
                    HashMap map = new HashMap();
                    map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
                    map.put(BehanceSDKUrlUtil.KEY_USER_ID, strValueOf);
                    String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.FOLLOW_USER_API_URL, map);
                    logger.debug("Follow/Unfollow user url - %s", urlFromTemplate);
                    if (this.followUserParams.isFollowUser()) {
                        behanceConnectionResponseInvokeHttpDeleteRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(urlFromTemplate, this.followUserParams.getUserAccessToken());
                    } else {
                        behanceConnectionResponseInvokeHttpDeleteRequest = BehanceHttpsConnection.getInstance().invokeHttpDeleteRequest(urlFromTemplate, this.followUserParams.getUserAccessToken());
                    }
                    String responseObject = behanceConnectionResponseInvokeHttpDeleteRequest.getResponseObject();
                    logger.debug("Follow/UnFollow user response for [userId - %s ] [Follow - %s] : %s", strValueOf, Boolean.valueOf(this.followUserParams.isFollowUser()), responseObject);
                    int responseCode = behanceConnectionResponseInvokeHttpDeleteRequest.getResponseCode();
                    if (responseCode == 200) {
                        i = new JSONObject(responseObject).getInt("http_code");
                        if (i == 200) {
                            behanceSDKAsyncTaskResultWrapper.setResult(true);
                        } else {
                            behanceSDKAsyncTaskResultWrapper.setResult(false);
                        }
                    } else {
                        i = responseCode;
                    }
                    logger.debug("Follow/Unfollow user http response status code - %s", Integer.valueOf(i));
                }
            } catch (Exception e2) {
                logger.error(e2, "Problem trying to follow/unfollow user [userId - %s] [Follow user - %s]", strValueOf, Boolean.valueOf(this.followUserParams.isFollowUser()));
                behanceSDKAsyncTaskResultWrapper.setException(e2);
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setResult(false);
            } catch (Throwable th) {
                logger.error(th, "Problem trying to follow/unfollow user [userId - %s] [Follow user - %s]", strValueOf, Boolean.valueOf(this.followUserParams.isFollowUser()));
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setResult(false);
            }
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onFollowUserAsyncTaskFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.followUserParams);
        } else {
            this.taskHandler.onFollowUserAsyncTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult().booleanValue(), this.followUserParams);
        }
    }
}
