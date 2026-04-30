package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetTextEditorConfigTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetTextEditorConfigParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.enums.BehanceSDKPreferenceTypeLong;
import com.behance.sdk.exception.BehanceSDKUserNotAuthenticatedException;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKPublishTextUtils;
import com.behance.sdk.util.BehanceSDKSharedPreferencesManager;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.IOException;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetTextEditorConfigAsyncTask extends AsyncTask<BehanceSDKGetTextEditorConfigParams, Void, BehanceSDKAsyncTaskResultWrapper<Boolean>> {
    private IBehanceSDKGetTextEditorConfigTaskListener listener;

    public BehanceSDKGetTextEditorConfigAsyncTask(IBehanceSDKGetTextEditorConfigTaskListener iBehanceSDKGetTextEditorConfigTaskListener) {
        this.listener = iBehanceSDKGetTextEditorConfigTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<Boolean> doInBackground(BehanceSDKGetTextEditorConfigParams... behanceSDKGetTextEditorConfigParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        BehanceSDKGetTextEditorConfigParams behanceSDKGetTextEditorConfigParams = behanceSDKGetTextEditorConfigParamsArr[0];
        if (behanceSDKGetTextEditorConfigParams != null) {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKGetTextEditorConfigParams.getClientId());
            try {
                BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpGetRequest = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_TEXT_EDITOR_CONFIG_API_URL, map), behanceSDKGetTextEditorConfigParams.getUserAccessToken());
                if (behanceConnectionResponseInvokeHttpGetRequest != null && behanceConnectionResponseInvokeHttpGetRequest.getResponseCode() == 200) {
                    JSONObject jSONObject = new JSONObject(behanceConnectionResponseInvokeHttpGetRequest.getResponseObject());
                    BehanceSDKSharedPreferencesManager behanceSDKSharedPreferencesManager = BehanceSDKSharedPreferencesManager.getInstance(behanceSDKGetTextEditorConfigParams.getContext());
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("config");
                    long j = Long.parseLong(jSONObjectOptJSONObject.optString("CBSTR").replace("cb=", ""));
                    if (behanceSDKSharedPreferencesManager.getLongPreference(BehanceSDKPreferenceTypeLong.CURRENT_CBSTR_VERSION, 0L) != j) {
                        BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpGetRequest2 = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(jSONObject.optJSONObject("scripts").optString("text_editor"), null);
                        if (behanceConnectionResponseInvokeHttpGetRequest2.getResponseCode() == 200) {
                            BehanceSDKPublishTextUtils.writeFileToDisk(behanceSDKGetTextEditorConfigParams.getContext(), BehanceSDKPublishTextUtils.TEXT_EDITOR_FILE_NAME_JAVASCRIPT, behanceConnectionResponseInvokeHttpGetRequest2.getResponseObject());
                            BehanceSDKPublishTextUtils.writeFileToDisk(behanceSDKGetTextEditorConfigParams.getContext(), BehanceSDKPublishTextUtils.TEXT_EDITOR_FILE_NAME_CONFIG, jSONObjectOptJSONObject.toString());
                            behanceSDKSharedPreferencesManager.savePreference(BehanceSDKPreferenceTypeLong.CURRENT_CBSTR_VERSION, j);
                            behanceSDKAsyncTaskResultWrapper.setResult(true);
                        } else {
                            behanceSDKAsyncTaskResultWrapper.setException(new Exception("Text editor js download failed"));
                            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                        }
                    } else {
                        behanceSDKAsyncTaskResultWrapper.setResult(false);
                    }
                }
            } catch (BehanceSDKUserNotAuthenticatedException | IOException | JSONException e2) {
                e2.printStackTrace();
                behanceSDKAsyncTaskResultWrapper.setException(e2);
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            }
        } else {
            behanceSDKAsyncTaskResultWrapper.setException(new Exception("null params"));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<Boolean> behanceSDKAsyncTaskResultWrapper) {
        if (this.listener != null) {
            if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
                this.listener.onGetConfigFailure(behanceSDKAsyncTaskResultWrapper.getException());
                return;
            } else {
                this.listener.onGetConfigSuccess(behanceSDKAsyncTaskResultWrapper.getResult());
                return;
            }
        }
        super.onPostExecute(behanceSDKAsyncTaskResultWrapper);
    }
}
