package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetTeamsTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetTeamsParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.search.BehanceSDKTeamDTO;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetTeamsAsyncTask extends AsyncTask<BehanceSDKGetTeamsParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKTeamDTO>>> {
    private IBehanceSDKGetTeamsTaskListener taskHandler;

    public BehanceSDKGetTeamsAsyncTask(IBehanceSDKGetTeamsTaskListener iBehanceSDKGetTeamsTaskListener) {
        this.taskHandler = iBehanceSDKGetTeamsTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKTeamDTO>> doInBackground(BehanceSDKGetTeamsParams... behanceSDKGetTeamsParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKTeamDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        try {
            BehanceSDKGetTeamsParams behanceSDKGetTeamsParams = behanceSDKGetTeamsParamsArr[0];
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKGetTeamsParams.getClientId());
            String strAppendQueryStringParam = BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_TEAMS_API_URL, map), BehanceSDKUrlUtil.PARAM_KEY_SORT, "relevance");
            String searchString = behanceSDKGetTeamsParams.getSearchString();
            if (!TextUtils.isEmpty(searchString)) {
                strAppendQueryStringParam = BehanceSDKUrlUtil.appendQueryStringParam(strAppendQueryStringParam, BehanceSDKUrlUtil.PARAM_KEY_SEARCH_FREE_TEXT_QUERY, searchString);
            }
            JSONArray jSONArrayOptJSONArray = new JSONObject(BehanceHttpsConnection.getInstance().invokeHttpGetRequest(strAppendQueryStringParam, behanceSDKGetTeamsParams.getUserAccessToken()).getResponseObject()).optJSONArray(BehanceSDKPublishConstants.KEY_TEAMS);
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i);
                    BehanceSDKTeamDTO behanceSDKTeamDTO = new BehanceSDKTeamDTO();
                    behanceSDKTeamDTO.setId(jSONObject.optInt("id"));
                    behanceSDKTeamDTO.setDisplayName(jSONObject.optString("display_name"));
                    behanceSDKTeamDTO.setName(jSONObject.optString("name"));
                    behanceSDKTeamDTO.setSlug(jSONObject.optString("slug"));
                    behanceSDKTeamDTO.setUrl(jSONObject.optString("url"));
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("images");
                    if (jSONObjectOptJSONObject != null) {
                        behanceSDKTeamDTO.addProfileImage(50, jSONObjectOptJSONObject.optString("50"));
                        behanceSDKTeamDTO.addProfileImage(100, jSONObjectOptJSONObject.optString("100"));
                        behanceSDKTeamDTO.addProfileImage(115, jSONObjectOptJSONObject.optString("115"));
                        behanceSDKTeamDTO.addProfileImage(138, jSONObjectOptJSONObject.optString("138"));
                        behanceSDKTeamDTO.addProfileImage(230, jSONObjectOptJSONObject.optString("230"));
                        behanceSDKTeamDTO.addProfileImage(276, jSONObjectOptJSONObject.optString("276"));
                    }
                    arrayList.add(behanceSDKTeamDTO);
                }
            }
            behanceSDKAsyncTaskResultWrapper.setResult(arrayList);
        } catch (Exception e2) {
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
        } catch (Throwable th) {
            behanceSDKAsyncTaskResultWrapper.setException(new Exception(th));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKTeamDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetTeamsFailure(behanceSDKAsyncTaskResultWrapper.getException());
        } else {
            this.taskHandler.onGetTeamsSuccess(behanceSDKAsyncTaskResultWrapper.getResult());
        }
    }
}
