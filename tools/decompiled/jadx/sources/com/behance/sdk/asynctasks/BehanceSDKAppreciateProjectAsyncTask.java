package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKAppreciateProjectAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKAppreciateProjectAsyncTaskParams;
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
public class BehanceSDKAppreciateProjectAsyncTask extends AsyncTask<BehanceSDKAppreciateProjectAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<Boolean>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKAppreciateProjectAsyncTask.class);
    private BehanceSDKAppreciateProjectAsyncTaskParams appreciateProjectParams;
    private IBehanceSDKAppreciateProjectAsyncTaskListener taskHandler;

    public BehanceSDKAppreciateProjectAsyncTask(IBehanceSDKAppreciateProjectAsyncTaskListener iBehanceSDKAppreciateProjectAsyncTaskListener) {
        this.taskHandler = iBehanceSDKAppreciateProjectAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<Boolean> doInBackground(BehanceSDKAppreciateProjectAsyncTaskParams... behanceSDKAppreciateProjectAsyncTaskParamsArr) {
        int i;
        BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        behanceSDKAsyncTaskResultWrapper.setResult(false);
        this.appreciateProjectParams = behanceSDKAppreciateProjectAsyncTaskParamsArr[0];
        String projectId = this.appreciateProjectParams.getProjectId();
        if (projectId != null) {
            try {
                if (projectId.length() > 0) {
                    HashMap map = new HashMap();
                    map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
                    map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, projectId);
                    String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.APPRECIATE_PROJECT_API_URL, map);
                    logger.debug("Appreciate Project url - %s", urlFromTemplate);
                    BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(urlFromTemplate, this.appreciateProjectParams.getUserAccessToken());
                    String responseObject = behanceConnectionResponseInvokeHttpPostRequest.getResponseObject();
                    logger.debug("Appreciate Project response for [project id - %s ] : %s", projectId, responseObject);
                    int responseCode = behanceConnectionResponseInvokeHttpPostRequest.getResponseCode();
                    if (responseCode == 200) {
                        i = new JSONObject(responseObject).getInt("http_code");
                        if (i == 200) {
                            behanceSDKAsyncTaskResultWrapper.setResult(true);
                        } else if (i == 404) {
                            logger.error("HTTP Response code 404 when trying to appreciate project [Project ID - %s]", projectId);
                            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException("Project not found"));
                            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                            behanceSDKAsyncTaskResultWrapper.setResult(false);
                        } else {
                            logger.error("Unexpected HTTP Response code when trying to appreciate project [Project ID - %s] [Response code - %d]", projectId, Integer.valueOf(i));
                            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException("Invalid server response code " + i));
                            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                            behanceSDKAsyncTaskResultWrapper.setResult(false);
                        }
                    } else {
                        i = responseCode;
                    }
                    logger.debug("Appreciate Project http response status code - %s", Integer.valueOf(i));
                }
            } catch (Exception e2) {
                logger.error(e2, "Problem trying to appreciate project [projectId - %s]", projectId);
                behanceSDKAsyncTaskResultWrapper.setException(e2);
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setResult(false);
            } catch (Throwable th) {
                logger.error(th, "Problem trying to appreciate project [projectId - %s]", projectId);
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
            this.taskHandler.onAppreciateProjectAsyncTaskFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.appreciateProjectParams);
        } else {
            this.taskHandler.onAppreciateProjectAsyncTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult().booleanValue(), this.appreciateProjectParams);
        }
    }
}
