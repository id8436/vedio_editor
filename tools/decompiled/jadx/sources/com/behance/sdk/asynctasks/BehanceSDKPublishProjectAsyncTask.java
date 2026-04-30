package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.IBehanceSDKProjectPublishListener;
import com.behance.sdk.asynctask.params.BehanceSDKPublishProjectTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceMultipartEntity;
import com.behance.sdk.network.BehanceRequestCancellationWrapper;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPublishProjectAsyncTask extends AsyncTask<BehanceSDKPublishProjectTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<Boolean>> {
    private static final String PROJECTID_KEY = "{PROJECTID}";
    private static final String PUBLISHED = "1";
    private static final String PUBLISHED_KEY = "published";
    private IBehanceSDKProjectPublishListener listener;

    public BehanceSDKPublishProjectAsyncTask(IBehanceSDKProjectPublishListener iBehanceSDKProjectPublishListener) {
        this.listener = iBehanceSDKProjectPublishListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<Boolean> doInBackground(BehanceSDKPublishProjectTaskParams... behanceSDKPublishProjectTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        BehanceSDKPublishProjectTaskParams behanceSDKPublishProjectTaskParams = behanceSDKPublishProjectTaskParamsArr[0];
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKPublishProjectTaskParams.getClientId());
            String strReplace = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}", map).replace(PROJECTID_KEY, behanceSDKPublishProjectTaskParams.getProjectId());
            String strCheckExpiryAndGetAccessToken = BehanceSDKUserManager.getInstance().checkExpiryAndGetAccessToken();
            if (strCheckExpiryAndGetAccessToken != null) {
                strReplace = BehanceSDKUrlUtil.appendQueryStringParam(strReplace, "access_token", strCheckExpiryAndGetAccessToken);
            }
            BehanceMultipartEntity behanceMultipartEntity = new BehanceMultipartEntity();
            behanceMultipartEntity.setBrowserCompatible(true);
            behanceMultipartEntity.addTextPart("published", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", PUBLISHED.getBytes("UTF-8"));
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPutRequest = BehanceHttpsConnection.getInstance().invokeHttpPutRequest(strReplace, behanceMultipartEntity, (BehanceRequestCancellationWrapper) null, strCheckExpiryAndGetAccessToken);
            if (behanceConnectionResponseInvokeHttpPutRequest.getResponseCode() == 200) {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(false);
            } else {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(behanceConnectionResponseInvokeHttpPutRequest.getResponseObject()));
            }
        } catch (Throwable th) {
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper) {
        if (this.listener != null) {
            if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
                this.listener.onFailure((BehanceSDKException) behanceSDKAsyncTaskResultWrapper.getException());
            } else {
                this.listener.onSuccess("12345");
            }
        }
    }
}
