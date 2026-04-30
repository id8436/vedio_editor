package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetStatesOfCountryAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetStatesOfCountryAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetStatesOfCountryAsyncTask extends AsyncTask<BehanceSDKGetStatesOfCountryAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKStateDTO>>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetStatesOfCountryAsyncTask.class);
    private String countryId;
    private IBehanceSDKGetStatesOfCountryAsyncTaskListener taskHandler;

    public BehanceSDKGetStatesOfCountryAsyncTask(IBehanceSDKGetStatesOfCountryAsyncTaskListener iBehanceSDKGetStatesOfCountryAsyncTaskListener) {
        this.taskHandler = iBehanceSDKGetStatesOfCountryAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKStateDTO>> doInBackground(BehanceSDKGetStatesOfCountryAsyncTaskParams... behanceSDKGetStatesOfCountryAsyncTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKStateDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        BehanceSDKGetStatesOfCountryAsyncTaskParams behanceSDKGetStatesOfCountryAsyncTaskParams = behanceSDKGetStatesOfCountryAsyncTaskParamsArr[0];
        if (behanceSDKGetStatesOfCountryAsyncTaskParamsArr.length != 1) {
            behanceSDKAsyncTaskResultWrapper.setException(new Exception("Missing country ID"));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            return behanceSDKAsyncTaskResultWrapper;
        }
        try {
            this.countryId = behanceSDKGetStatesOfCountryAsyncTaskParams.getCountryId();
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_COUNTRY_ID, this.countryId);
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKGetStatesOfCountryAsyncTaskParams.getClientId());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_STATES_API_URL, map);
            logger.debug("Get States of Country URL - %s", urlFromTemplate);
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(urlFromTemplate, null).getResponseObject();
            logger.debug("Get States of Country [Country id - %s ] response: %s", this.countryId, responseObject);
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = new JSONObject(responseObject).optJSONArray("results");
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                Object obj = jSONArrayOptJSONArray.get(i);
                if (obj != null) {
                    JSONObject jSONObject = (JSONObject) obj;
                    BehanceSDKStateDTO behanceSDKStateDTO = new BehanceSDKStateDTO();
                    behanceSDKStateDTO.setId(jSONObject.optString("short_name"));
                    behanceSDKStateDTO.setDisplayName(jSONObject.optString("long_name"));
                    arrayList.add(behanceSDKStateDTO);
                }
            }
            Collections.sort(arrayList);
            behanceSDKAsyncTaskResultWrapper.setResult(arrayList);
        } catch (Exception e2) {
            logger.error(e2, "Problem getting States of Country from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem getting States of Country from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new Exception(th.getMessage()));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKStateDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetStatesFailure(this.countryId, behanceSDKAsyncTaskResultWrapper.getException());
        } else {
            this.taskHandler.onGetStatesSuccess(this.countryId, behanceSDKAsyncTaskResultWrapper.getResult());
        }
    }
}
