package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKPostProjectCommentAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKPostProjectCommentAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceNameValuePair;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPostProjectCommentAsyncTask extends AsyncTask<BehanceSDKPostProjectCommentAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<Integer>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKPostProjectCommentAsyncTask.class);
    private BehanceSDKPostProjectCommentAsyncTaskParams postCommentParams;
    private IBehanceSDKPostProjectCommentAsyncTaskListener taskHandler;

    public BehanceSDKPostProjectCommentAsyncTask(IBehanceSDKPostProjectCommentAsyncTaskListener iBehanceSDKPostProjectCommentAsyncTaskListener) {
        this.taskHandler = iBehanceSDKPostProjectCommentAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<Integer> doInBackground(BehanceSDKPostProjectCommentAsyncTaskParams... behanceSDKPostProjectCommentAsyncTaskParamsArr) {
        int i;
        BehanceSDKAsyncTaskResultWrapper<Integer> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        behanceSDKAsyncTaskResultWrapper.setResult(-1);
        this.postCommentParams = behanceSDKPostProjectCommentAsyncTaskParamsArr[0];
        String commentContent = this.postCommentParams.getCommentContent();
        String strValueOf = String.valueOf(this.postCommentParams.getProjectId());
        if (commentContent != null) {
            try {
                if (commentContent.length() > 0) {
                    HashMap map = new HashMap();
                    map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
                    map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, strValueOf);
                    String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/projects/{project_id}/comments?{key_client_id_param}={clientId}", map);
                    logger.debug("Post Project comment url - %s", urlFromTemplate);
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(new BehanceNameValuePair("comment", commentContent));
                    BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(urlFromTemplate, arrayList, this.postCommentParams.getUserAccessToken());
                    String responseObject = behanceConnectionResponseInvokeHttpPostRequest.getResponseObject();
                    if (responseObject.contains("User must be verified")) {
                        this.postCommentParams.setUserVerified(false);
                    }
                    logger.debug("Post Project comment response: %s", responseObject);
                    int responseCode = behanceConnectionResponseInvokeHttpPostRequest.getResponseCode();
                    if (responseCode == 201) {
                        JSONObject jSONObject = new JSONObject(responseObject);
                        i = jSONObject.getInt("http_code");
                        if (i == 201) {
                            behanceSDKAsyncTaskResultWrapper.setResult(Integer.valueOf(jSONObject.optInt(BehanceSDKUrlUtil.KEY_COMMENT_ID)));
                        } else {
                            logger.error("Unexpected HTTP Response code when trying to comment on project [Project ID - %s] [Response code - %d]", strValueOf, Integer.valueOf(i));
                            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException("Invalid server response code " + i));
                            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                            behanceSDKAsyncTaskResultWrapper.setResult(-1);
                        }
                    } else {
                        i = responseCode;
                    }
                    logger.debug("Post WIP commenet http response status code - %s", Integer.valueOf(i));
                }
            } catch (Exception e2) {
                logger.error(e2, "Problem trying to post WIP comment", new Object[0]);
                behanceSDKAsyncTaskResultWrapper.setException(e2);
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setResult(-1);
            } catch (Throwable th) {
                logger.error(th, "Problem trying to post WIP comment", new Object[0]);
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setResult(-1);
            }
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<Integer> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onPostProjectCommentAsyncTaskFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.postCommentParams);
        } else {
            this.taskHandler.onPostProjectCommentAsyncTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult().intValue(), this.postCommentParams);
        }
    }
}
