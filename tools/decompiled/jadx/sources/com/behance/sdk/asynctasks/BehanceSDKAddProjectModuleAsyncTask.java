package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.IBehanceSDKADDProjectModuleListener;
import com.behance.sdk.asynctask.params.BehanceSDKAddProjectModuleTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceMultipartEntity;
import com.behance.sdk.network.BehanceRequestCancellationWrapper;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKAddProjectModuleAsyncTask extends AsyncTask<BehanceSDKAddProjectModuleTaskParams, Void, BehanceSDKAsyncTaskResultWrapper> {
    private static final String MODULE_IMAGE_KEY = "image";
    private static final String MODULE_TYPE_IMAGE_VALUE = "image";
    private static final String MODULE_TYPE_KEY = "type";
    private static final String PROJECTID_KEY = "{PROJECTID}";
    private IBehanceSDKADDProjectModuleListener listener;

    public BehanceSDKAddProjectModuleAsyncTask(IBehanceSDKADDProjectModuleListener iBehanceSDKADDProjectModuleListener) {
        this.listener = iBehanceSDKADDProjectModuleListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper doInBackground(BehanceSDKAddProjectModuleTaskParams... behanceSDKAddProjectModuleTaskParamsArr) {
        BehanceSDKAddProjectModuleTaskParams behanceSDKAddProjectModuleTaskParams = behanceSDKAddProjectModuleTaskParamsArr[0];
        BehanceSDKAsyncTaskResultWrapper behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper();
        try {
            HashMap map = new HashMap(1);
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKAddProjectModuleTaskParams.getClientId());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.ADD_PROJECT_MODULE_URL, map);
            String strCheckExpiryAndGetAccessToken = BehanceSDKUserManager.getInstance().checkExpiryAndGetAccessToken();
            if (strCheckExpiryAndGetAccessToken != null) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "access_token", strCheckExpiryAndGetAccessToken);
            }
            String strReplace = urlFromTemplate.replace(PROJECTID_KEY, behanceSDKAddProjectModuleTaskParams.getProjectId());
            BehanceMultipartEntity behanceMultipartEntity = new BehanceMultipartEntity();
            behanceMultipartEntity.addTextPart("type", BehanceMultipartEntity.CONTENT_TYPE_TEXT_ISO_8859, "8bit", "image".getBytes("ISO-8859-1"));
            behanceMultipartEntity.addImagePart("image", behanceSDKAddProjectModuleTaskParams.getImage().getName(), "application/octet-stream", "binary", behanceSDKAddProjectModuleTaskParams.getImage().getAbsolutePath());
            behanceMultipartEntity.setChunked(true);
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(strReplace, behanceMultipartEntity, (BehanceRequestCancellationWrapper) null, strCheckExpiryAndGetAccessToken);
            if (behanceConnectionResponseInvokeHttpPostRequest.getResponseCode() != 201) {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(behanceConnectionResponseInvokeHttpPostRequest.getResponseObject()));
            } else {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(false);
            }
        } catch (Throwable th) {
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper behanceSDKAsyncTaskResultWrapper) {
        if (this.listener != null) {
            if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
                this.listener.onFailure((BehanceSDKException) behanceSDKAsyncTaskResultWrapper.getException());
            } else {
                this.listener.onSuccess();
            }
        }
    }
}
