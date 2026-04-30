package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetUserProjectsListAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetUserProjectsListAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.parser.BehanceSDKProjectDTOParser;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.exception.BehanceSDKHTTPStatusCodeNotOKException;
import com.behance.sdk.exception.BehanceSDKProjectParseException;
import com.behance.sdk.exception.BehanceSDKUserNotAuthenticatedException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetUserProjectsListAsyncTask extends AsyncTask<BehanceSDKGetUserProjectsListAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetUserProjectsListAsyncTask.class);
    private IBehanceSDKGetUserProjectsListAsyncTaskListener taskHandler;
    private BehanceSDKGetUserProjectsListAsyncTaskParams taskParams;

    public BehanceSDKGetUserProjectsListAsyncTask(IBehanceSDKGetUserProjectsListAsyncTaskListener iBehanceSDKGetUserProjectsListAsyncTaskListener) {
        this.taskHandler = iBehanceSDKGetUserProjectsListAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> doInBackground(BehanceSDKGetUserProjectsListAsyncTaskParams... behanceSDKGetUserProjectsListAsyncTaskParamsArr) {
        boolean z;
        int pageNumber;
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        if (behanceSDKGetUserProjectsListAsyncTaskParamsArr.length != 1) {
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException("User Id is required"));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        } else {
            this.taskParams = behanceSDKGetUserProjectsListAsyncTaskParamsArr[0];
            String strValueOf = String.valueOf(this.taskParams.getUserId());
            try {
                if (this.taskParams.getPageNumber() > 0) {
                    pageNumber = this.taskParams.getPageNumber();
                    z = false;
                } else {
                    z = true;
                    pageNumber = 1;
                }
                ArrayList arrayList = new ArrayList();
                while (true) {
                    List<BehanceSDKProjectDTO> userProjects = getUserProjects(strValueOf, pageNumber, this.taskParams.isIncludePrivateProjects(), behanceSDKAsyncTaskResultWrapper);
                    if (userProjects != null) {
                        arrayList.addAll(userProjects);
                    }
                    if (!z || userProjects == null || userProjects.size() < 24 || behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
                        break;
                    }
                    pageNumber++;
                }
                behanceSDKAsyncTaskResultWrapper.setResult(arrayList);
            } catch (Exception e2) {
                logger.error(e2, "Unknown problem fetching Project List for User [User ID - %s]", strValueOf);
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setException(e2);
            } catch (Throwable th) {
                logger.error(th, "Unknown problem fetching Project List for User [User ID - %s]", strValueOf);
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            }
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    private List<BehanceSDKProjectDTO> getUserProjects(String str, int i, boolean z, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper) throws JSONException, IOException, BehanceSDKProjectParseException, BehanceSDKHTTPStatusCodeNotOKException, BehanceSDKUserNotAuthenticatedException {
        HashMap map = new HashMap();
        map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        map.put(BehanceSDKUrlUtil.KEY_USER_ID, str);
        String strAppendQueryStringParam = BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_USER_PROJECTS_API_URL, map), BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER, Integer.valueOf(i)), BehanceSDKUrlUtil.PARAM_KEY_PAGE_SIZE, 24);
        logger.debug("Get user projects URL - %s", strAppendQueryStringParam);
        String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(strAppendQueryStringParam, this.taskParams.getUserAccessToken()).getResponseObject();
        logger.debug("Get user projects response: %s", responseObject);
        int i2 = new JSONObject(responseObject).getInt("http_code");
        if (i2 == 200) {
            return new BehanceSDKProjectDTOParser().parseJustProjects(responseObject, z);
        }
        logger.error("Unexpected HTTP Response code when trying to fetch User Projects. [User ID - %s] [Response code - %d]", str, Integer.valueOf(i2));
        behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(BehanceSDKHTTPStatusCodeNotOKException.GET_USER_PROJECT_LIST_GET_PROJECTS_UNEXPECTED_RESPONSE_CODE, "Invalid server response code " + i2));
        behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetUserProjectsListFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.taskParams);
        } else {
            this.taskHandler.onGetUserProjectsListSuccess(behanceSDKAsyncTaskResultWrapper.getResult(), this.taskParams);
        }
    }
}
