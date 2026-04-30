package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKPostUserSettingsOnServerAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.search.BehanceSDKUserSettingsOnServerDTO;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceNameValuePair;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPostUserSettingsOnServerAsyncTask extends AsyncTask<BehanceSDKPostUserSettingsOnServerAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<Boolean>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKPostUserSettingsOnServerAsyncTask.class);
    private BehanceSDKPostUserSettingsOnServerAsyncTaskParams saveSettingsParams;
    private IBehanceSDKPostUserSettingsOnServerAsyncTaskListener taskHandler;

    public BehanceSDKPostUserSettingsOnServerAsyncTask(IBehanceSDKPostUserSettingsOnServerAsyncTaskListener iBehanceSDKPostUserSettingsOnServerAsyncTaskListener) {
        this.taskHandler = iBehanceSDKPostUserSettingsOnServerAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<Boolean> doInBackground(BehanceSDKPostUserSettingsOnServerAsyncTaskParams... behanceSDKPostUserSettingsOnServerAsyncTaskParamsArr) {
        String userAccessToken;
        BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        behanceSDKAsyncTaskResultWrapper.setResult(false);
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_USER_SETTINGS_ON_SERVER_API_URL, map);
            if (behanceSDKPostUserSettingsOnServerAsyncTaskParamsArr.length != 1) {
                userAccessToken = null;
            } else {
                this.saveSettingsParams = behanceSDKPostUserSettingsOnServerAsyncTaskParamsArr[0];
                userAccessToken = this.saveSettingsParams.getUserAccessToken();
            }
            BehanceSDKUserSettingsOnServerDTO settings = this.saveSettingsParams.getSettings();
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(new BehanceNameValuePair("safe", settings.isSafeBrowsingOn() ? "1" : "0"));
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(urlFromTemplate, arrayList, userAccessToken).getResponseObject();
            logger.debug("Save user settings async task response: %s", responseObject);
            if (new JSONObject(responseObject).optInt("http_code") == 200) {
                behanceSDKAsyncTaskResultWrapper.setResult(true);
            } else {
                behanceSDKAsyncTaskResultWrapper.setResult(false);
            }
        } catch (Exception e2) {
            logger.error(e2, "Problem saving user settings on server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem saving user settings on server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onPostUserSettingsOnServerAsyncTaskFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.saveSettingsParams);
        } else {
            this.taskHandler.onPostUserSettingsOnServerAsyncTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult(), this.saveSettingsParams);
        }
    }
}
