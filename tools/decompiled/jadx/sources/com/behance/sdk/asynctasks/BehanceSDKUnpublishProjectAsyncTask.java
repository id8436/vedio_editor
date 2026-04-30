package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.asynctask.listeners.IBehanceSDKUnpublishProjectTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKUnpublishProjectTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceNameValuePair;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKUnpublishProjectAsyncTask extends AsyncTask<BehanceSDKUnpublishProjectTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<Boolean>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKUnpublishProjectAsyncTask.class);
    private IBehanceSDKUnpublishProjectTaskListener taskHandler;
    private BehanceSDKUnpublishProjectTaskParams taskParams;

    public BehanceSDKUnpublishProjectAsyncTask(IBehanceSDKUnpublishProjectTaskListener iBehanceSDKUnpublishProjectTaskListener) {
        this.taskHandler = iBehanceSDKUnpublishProjectTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<Boolean> doInBackground(BehanceSDKUnpublishProjectTaskParams... behanceSDKUnpublishProjectTaskParamsArr) {
        int i;
        BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        behanceSDKAsyncTaskResultWrapper.setResult(false);
        try {
            this.taskParams = behanceSDKUnpublishProjectTaskParamsArr[0];
            String strValueOf = String.valueOf(this.taskParams.getProjectId());
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
            map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, strValueOf);
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}", map);
            logger.debug("Unpublish Project url - %s", urlFromTemplate);
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(new BehanceNameValuePair(BehanceSDKPublishConstants.KEY_PUBLISHED, "0"));
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPutRequest = BehanceHttpsConnection.getInstance().invokeHttpPutRequest(urlFromTemplate, arrayList, this.taskParams.getUserAccessToken());
            String responseObject = behanceConnectionResponseInvokeHttpPutRequest.getResponseObject();
            logger.debug("Unpublish Project response: %s", responseObject);
            int responseCode = behanceConnectionResponseInvokeHttpPutRequest.getResponseCode();
            if (responseCode == 200) {
                JSONObject jSONObject = new JSONObject(responseObject);
                i = jSONObject.getInt("http_code");
                if (i == 200) {
                    if (jSONObject.getInt(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED) == 1) {
                        behanceSDKAsyncTaskResultWrapper.setResult(true);
                    } else {
                        behanceSDKAsyncTaskResultWrapper.setResult(false);
                    }
                } else {
                    behanceSDKAsyncTaskResultWrapper.setResult(false);
                }
            } else {
                i = responseCode;
            }
            logger.debug("Unpublish Project http response status code - %s", Integer.valueOf(i));
            behanceSDKAsyncTaskResultWrapper.setResult(true);
        } catch (Exception e2) {
            logger.error(e2, "Problem trying to Unpublish Project", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setResult(false);
        } catch (Throwable th) {
            logger.error(th, "Problem trying to Unpublish Project", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setResult(false);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper) {
        if (this.taskHandler != null) {
            if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
                this.taskHandler.onUnpublishProjectTaskFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.taskParams);
            } else {
                this.taskHandler.onUnpublishProjectTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult().booleanValue(), this.taskParams);
            }
        }
    }
}
