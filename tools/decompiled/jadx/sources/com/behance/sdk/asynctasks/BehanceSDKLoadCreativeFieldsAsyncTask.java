package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.asynctasks.result.BehanceSDKCreativeFieldsTaskResult;
import com.behance.sdk.datamanager.listeners.interfaces.IGetCreativeFieldsAsyncTaskListener;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.enums.BehanceSDKCreativeFieldCategory;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKLoadCreativeFieldsAsyncTask extends AsyncTask<Void, Void, BehanceSDKCreativeFieldsTaskResult<List<BehanceSDKCreativeFieldDTO>>> {
    private static final String FIELDS_JSON_TAG = "fields";
    private static final String ID = "id";
    private static final String NAME = "name";
    private static final String POPULAR_JSON_TAG = "popular";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKLoadCreativeFieldsAsyncTask.class);
    private IBehanceSDKUserCredentials iUserCredentials;
    private IGetCreativeFieldsAsyncTaskListener taskHandler;

    public BehanceSDKLoadCreativeFieldsAsyncTask(IGetCreativeFieldsAsyncTaskListener iGetCreativeFieldsAsyncTaskListener) {
        this.taskHandler = iGetCreativeFieldsAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKCreativeFieldsTaskResult<List<BehanceSDKCreativeFieldDTO>> doInBackground(Void... voidArr) {
        BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO;
        BehanceSDKCreativeFieldsTaskResult<List<BehanceSDKCreativeFieldDTO>> behanceSDKCreativeFieldsTaskResult = new BehanceSDKCreativeFieldsTaskResult<>();
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, this.iUserCredentials.getClientId());
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_CREATIVE_FIELDS_API_URL, map), null).getResponseObject();
            logger.debug("Get creative fields response: %s", responseObject);
            ArrayList arrayList = new ArrayList();
            HashMap map2 = new HashMap();
            JSONObject jSONObject = new JSONObject(responseObject);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(POPULAR_JSON_TAG);
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO2 = new BehanceSDKCreativeFieldDTO();
                String strOptString = jSONObject2.optString("id");
                behanceSDKCreativeFieldDTO2.setId(strOptString);
                behanceSDKCreativeFieldDTO2.setName(jSONObject2.optString("name"));
                behanceSDKCreativeFieldDTO2.setCategory(BehanceSDKCreativeFieldCategory.POPULAR);
                map2.put(strOptString, behanceSDKCreativeFieldDTO2);
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("fields");
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                JSONObject jSONObject3 = jSONArrayOptJSONArray2.getJSONObject(i2);
                String strOptString2 = jSONObject3.optString("id");
                if (map2.containsKey(strOptString2)) {
                    behanceSDKCreativeFieldDTO = (BehanceSDKCreativeFieldDTO) map2.get(strOptString2);
                } else {
                    behanceSDKCreativeFieldDTO = new BehanceSDKCreativeFieldDTO();
                    behanceSDKCreativeFieldDTO.setId(strOptString2);
                    behanceSDKCreativeFieldDTO.setName(jSONObject3.optString("name"));
                }
                arrayList.add(behanceSDKCreativeFieldDTO);
            }
            behanceSDKCreativeFieldsTaskResult.setResult(arrayList);
        } catch (Exception e2) {
            behanceSDKCreativeFieldsTaskResult.setExceptionOccurred(true);
            behanceSDKCreativeFieldsTaskResult.setException(e2);
        }
        return behanceSDKCreativeFieldsTaskResult;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKCreativeFieldsTaskResult<List<BehanceSDKCreativeFieldDTO>> behanceSDKCreativeFieldsTaskResult) {
        if (behanceSDKCreativeFieldsTaskResult.isExceptionOccurred()) {
            this.taskHandler.onLoadCreativeFieldsFailure(behanceSDKCreativeFieldsTaskResult.getException());
        } else {
            this.taskHandler.onLoadCreativeFieldsSuccess(behanceSDKCreativeFieldsTaskResult.getResult());
        }
    }

    public void setUserCredentials(IBehanceSDKUserCredentials iBehanceSDKUserCredentials) {
        this.iUserCredentials = iBehanceSDKUserCredentials;
    }
}
