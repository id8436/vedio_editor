package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectCommentsAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectCommentsAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.project.BehanceSDKProjectCommentDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.exception.BehanceSDKException;
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
public class BehanceSDKGetProjectCommentsAsyncTask extends AsyncTask<BehanceSDKGetProjectCommentsAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectCommentDTO>>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetProjectCommentsAsyncTask.class);
    private IBehanceSDKGetProjectCommentsAsyncTaskListener taskHandler;
    private BehanceSDKGetProjectCommentsAsyncTaskParams taskParams;

    public BehanceSDKGetProjectCommentsAsyncTask(IBehanceSDKGetProjectCommentsAsyncTaskListener iBehanceSDKGetProjectCommentsAsyncTaskListener) {
        this.taskHandler = iBehanceSDKGetProjectCommentsAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectCommentDTO>> doInBackground(BehanceSDKGetProjectCommentsAsyncTaskParams... behanceSDKGetProjectCommentsAsyncTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectCommentDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        if (behanceSDKGetProjectCommentsAsyncTaskParamsArr.length != 1) {
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException("Project Id is required"));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            return behanceSDKAsyncTaskResultWrapper;
        }
        try {
            this.taskParams = behanceSDKGetProjectCommentsAsyncTaskParamsArr[0];
            String projectId = this.taskParams.getProjectId();
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
            map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, projectId);
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/projects/{project_id}/comments?{key_client_id_param}={clientId}", map);
            if (this.taskParams.getPageNumber() > 0) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER, Integer.valueOf(this.taskParams.getPageNumber())), BehanceSDKUrlUtil.PARAM_KEY_PAGE_SIZE, Integer.valueOf(this.taskParams.getPageSize()));
            }
            logger.debug("Get project comments url - %s", urlFromTemplate);
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(urlFromTemplate, this.taskParams.getUserAccessToken()).getResponseObject();
            logger.debug("Get project comments response: %s", responseObject);
            JSONArray jSONArray = new JSONObject(responseObject).getJSONArray("comments");
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    BehanceSDKProjectCommentDTO behanceSDKProjectCommentDTO = new BehanceSDKProjectCommentDTO();
                    behanceSDKProjectCommentDTO.setId(jSONObject.getString("id"));
                    behanceSDKProjectCommentDTO.setContent(jSONObject.getString("comment"));
                    behanceSDKProjectCommentDTO.setCreatedDate(jSONObject.getLong("created_on"));
                    JSONObject jSONObject2 = jSONObject.getJSONObject("user");
                    BehanceSDKUserDTO behanceSDKUserDTO = new BehanceSDKUserDTO();
                    behanceSDKUserDTO.setId(jSONObject2.getInt("id"));
                    behanceSDKUserDTO.setFirstName(jSONObject2.getString("first_name"));
                    behanceSDKUserDTO.setLastName(jSONObject2.getString("last_name"));
                    JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("images");
                    if (jSONObjectOptJSONObject != null) {
                        behanceSDKUserDTO.addImage(50, jSONObjectOptJSONObject.optString("50"));
                        behanceSDKUserDTO.addImage(115, jSONObjectOptJSONObject.optString("115"));
                        behanceSDKUserDTO.addImage(138, jSONObjectOptJSONObject.optString("138"));
                    }
                    behanceSDKProjectCommentDTO.setUser(behanceSDKUserDTO);
                    arrayList.add(behanceSDKProjectCommentDTO);
                }
            }
            behanceSDKAsyncTaskResultWrapper.setResult(arrayList);
        } catch (Exception e2) {
            logger.error(e2, "Problem getting Project comments from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(e2));
        } catch (Throwable th) {
            logger.error(th, "Problem getting Project comments from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectCommentDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetProjectCommentsFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.taskParams);
        } else {
            this.taskHandler.onGetProjectCommentsSuccess(behanceSDKAsyncTaskResultWrapper.getResult(), this.taskParams);
        }
    }
}
