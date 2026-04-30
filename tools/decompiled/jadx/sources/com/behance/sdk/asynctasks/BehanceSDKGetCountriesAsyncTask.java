package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetCountriesAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKAbstractTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
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
public class BehanceSDKGetCountriesAsyncTask extends AsyncTask<BehanceSDKAbstractTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKCountryDTO>>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetCountriesAsyncTask.class);
    private IBehanceSDKGetCountriesAsyncTaskListener taskHandler;

    public BehanceSDKGetCountriesAsyncTask(IBehanceSDKGetCountriesAsyncTaskListener iBehanceSDKGetCountriesAsyncTaskListener) {
        this.taskHandler = iBehanceSDKGetCountriesAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKCountryDTO>> doInBackground(BehanceSDKAbstractTaskParams... behanceSDKAbstractTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKCountryDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        BehanceSDKAbstractTaskParams behanceSDKAbstractTaskParams = behanceSDKAbstractTaskParamsArr[0];
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKAbstractTaskParams.getClientId());
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_COUNTRIES_API_URL, map), null).getResponseObject();
            logger.debug("Get Countries response: %s", responseObject);
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = new JSONObject(responseObject).optJSONArray("results");
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                Object obj = jSONArrayOptJSONArray.get(i);
                if (obj != null) {
                    JSONObject jSONObject = (JSONObject) obj;
                    BehanceSDKCountryDTO behanceSDKCountryDTO = new BehanceSDKCountryDTO();
                    behanceSDKCountryDTO.setId(jSONObject.optString("short_name"));
                    behanceSDKCountryDTO.setDisplayName(jSONObject.optString("long_name"));
                    arrayList.add(behanceSDKCountryDTO);
                }
            }
            Collections.sort(arrayList);
            behanceSDKAsyncTaskResultWrapper.setResult(arrayList);
        } catch (Exception e2) {
            logger.error(e2, "Problem getting Countries from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem getting Countries from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new Exception(th.getMessage()));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKCountryDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetCountriesFailure(behanceSDKAsyncTaskResultWrapper.getException());
        } else {
            this.taskHandler.onGetCountriesSuccess(behanceSDKAsyncTaskResultWrapper.getResult());
        }
    }
}
