package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.asynctask.listeners.IBehanceSDKSearchTagsTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKSearchTagsAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.BehanceSDKTagDTO;
import com.behance.sdk.dto.parser.BehanceSDKTagParser;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSearchTagsAsyncTask extends AsyncTask<BehanceSDKSearchTagsAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKTagDTO>>> {
    private IBehanceSDKSearchTagsTaskListener listener;

    public BehanceSDKSearchTagsAsyncTask(IBehanceSDKSearchTagsTaskListener iBehanceSDKSearchTagsTaskListener) {
        this.listener = iBehanceSDKSearchTagsTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKTagDTO>> doInBackground(BehanceSDKSearchTagsAsyncTaskParams... behanceSDKSearchTagsAsyncTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKTagDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        BehanceSDKSearchTagsAsyncTaskParams behanceSDKSearchTagsAsyncTaskParams = behanceSDKSearchTagsAsyncTaskParamsArr[0];
        HashMap map = new HashMap();
        map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKSearchTagsAsyncTaskParams.getClientId());
        try {
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpGetRequest = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.SEARCH_TAGS_API_URL, map), "category", behanceSDKSearchTagsAsyncTaskParams.getCategories()), "q", behanceSDKSearchTagsAsyncTaskParams.getTextQuery()), null);
            if (behanceConnectionResponseInvokeHttpGetRequest.getResponseCode() == 200) {
                behanceSDKAsyncTaskResultWrapper.setResult(BehanceSDKTagParser.parse(new JSONObject(behanceConnectionResponseInvokeHttpGetRequest.getResponseObject())));
            } else {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(behanceConnectionResponseInvokeHttpGetRequest.getResponseCode()));
            }
        } catch (IOException | JSONException e2) {
            e2.printStackTrace();
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKTagDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.listener.onSearchTagsFailure(behanceSDKAsyncTaskResultWrapper.getException());
        } else {
            this.listener.onSearchTagsSuccess(behanceSDKAsyncTaskResultWrapper.getResult());
        }
    }
}
