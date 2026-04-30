package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKDeleteProjectCommentAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKDeleteProjectCommentAsyncTaskParams;
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
public class BehanceSDKDeleteProjectCommentAsyncTask extends AsyncTask<BehanceSDKDeleteProjectCommentAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<Boolean>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKDeleteProjectCommentAsyncTask.class);
    private IBehanceSDKDeleteProjectCommentAsyncTaskListener taskHandler;
    private BehanceSDKDeleteProjectCommentAsyncTaskParams taskParams;

    public BehanceSDKDeleteProjectCommentAsyncTask(IBehanceSDKDeleteProjectCommentAsyncTaskListener iBehanceSDKDeleteProjectCommentAsyncTaskListener) {
        this.taskHandler = iBehanceSDKDeleteProjectCommentAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<Boolean> doInBackground(BehanceSDKDeleteProjectCommentAsyncTaskParams... behanceSDKDeleteProjectCommentAsyncTaskParamsArr) {
        int i;
        BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        behanceSDKAsyncTaskResultWrapper.setResult(false);
        this.taskParams = behanceSDKDeleteProjectCommentAsyncTaskParamsArr[0];
        String strValueOf = String.valueOf(this.taskParams.getCommentId());
        String strValueOf2 = String.valueOf(this.taskParams.getProjectId());
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
            map.put(BehanceSDKUrlUtil.KEY_COMMENT_ID, strValueOf);
            map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, strValueOf2);
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.DELETE_PROJECT_COMMENT_API_URL, map);
            logger.debug("Delete Project Comment url - %s", urlFromTemplate);
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpDeleteRequest = BehanceHttpsConnection.getInstance().invokeHttpDeleteRequest(urlFromTemplate, this.taskParams.getUserAccessToken());
            String responseObject = behanceConnectionResponseInvokeHttpDeleteRequest.getResponseObject();
            logger.debug("Delete Project Comment response: %s", responseObject);
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
            logger.debug("Delete Project Comment http response status code - %s", Integer.valueOf(i));
        } catch (Exception e2) {
            logger.error(e2, "Problem trying to Delete Project Comment", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setResult(false);
        } catch (Throwable th) {
            logger.error(th, "Problem trying to Delete Project Comment", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setResult(false);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onDeleteProjectCommentAsyncTaskFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.taskParams);
        } else {
            this.taskHandler.onDeleteProjectCommentAsyncTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult().booleanValue(), this.taskParams);
        }
    }
}
