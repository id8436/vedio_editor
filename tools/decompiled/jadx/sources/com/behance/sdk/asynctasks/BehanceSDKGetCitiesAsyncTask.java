package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetCitiesAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetCitiesAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
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
public class BehanceSDKGetCitiesAsyncTask extends AsyncTask<BehanceSDKGetCitiesAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKCityDTO>>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetCitiesAsyncTask.class);
    private IBehanceSDKGetCitiesAsyncTaskListener taskHandler;
    private BehanceSDKGetCitiesAsyncTaskParams taskParams;

    public BehanceSDKGetCitiesAsyncTask(IBehanceSDKGetCitiesAsyncTaskListener iBehanceSDKGetCitiesAsyncTaskListener) {
        this.taskHandler = iBehanceSDKGetCitiesAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKCityDTO>> doInBackground(BehanceSDKGetCitiesAsyncTaskParams... behanceSDKGetCitiesAsyncTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKCityDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        try {
            this.taskParams = behanceSDKGetCitiesAsyncTaskParamsArr[0];
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, this.taskParams.getClientId());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_CITIES_API_URL, map);
            if (this.taskParams.getCountryId() != null && this.taskParams.getCountryId().length() > 0) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_LOCATION_FILTER_COUNTRY, this.taskParams.getCountryId());
            }
            if (this.taskParams.getStateId() != null && this.taskParams.getStateId().length() > 0) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "region", this.taskParams.getStateId());
            }
            if (this.taskParams.getCitySearchStr() != null && this.taskParams.getCitySearchStr().length() > 0) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "query", this.taskParams.getCitySearchStr());
            }
            logger.debug("Get Cities URL - %s", urlFromTemplate);
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(urlFromTemplate, null).getResponseObject();
            logger.debug("Get cities response: %s", responseObject);
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = new JSONObject(responseObject).optJSONArray("results");
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                Object obj = jSONArrayOptJSONArray.get(i);
                if (obj != null) {
                    JSONObject jSONObject = (JSONObject) obj;
                    BehanceSDKCityDTO behanceSDKCityDTO = new BehanceSDKCityDTO();
                    behanceSDKCityDTO.setId(jSONObject.optString("location_id"));
                    behanceSDKCityDTO.setDisplayName(jSONObject.optString("name"));
                    arrayList.add(behanceSDKCityDTO);
                }
            }
            Collections.sort(arrayList);
            behanceSDKAsyncTaskResultWrapper.setResult(arrayList);
        } catch (Exception e2) {
            logger.error(e2, "Problem getting Cities from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem getting Cities from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new Exception(th.getMessage()));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKCityDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetCitiesFailure(this.taskParams, behanceSDKAsyncTaskResultWrapper.getException());
        } else {
            this.taskHandler.onGetCitiesSuccess(this.taskParams, behanceSDKAsyncTaskResultWrapper.getResult());
        }
    }
}
