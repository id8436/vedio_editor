package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.parser.BehanceSDKProjectDTOParser;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.enums.BehanceSDKCuratedGalleryType;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.exception.BehanceSDKHTTPStatusCodeNotOKException;
import com.behance.sdk.exception.BehanceSDKProjectParseException;
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
public class BehanceSDKGetCuratedGalleryProjectsAsyncTask extends AsyncTask<BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetCuratedGalleryProjectsAsyncTask.class);
    private IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener taskHandler;
    private BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams taskParams;

    public BehanceSDKGetCuratedGalleryProjectsAsyncTask(IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener iBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener) {
        this.taskHandler = iBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> doInBackground(BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams... behanceSDKGetCuratedGalleryProjectsAsyncTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        this.taskParams = behanceSDKGetCuratedGalleryProjectsAsyncTaskParamsArr[0];
        String strValueOf = String.valueOf(this.taskParams.getCuratedGalleryId());
        try {
            behanceSDKAsyncTaskResultWrapper.setResult(getCuratedGalleryProjects(strValueOf, this.taskParams.getPageNumber(), this.taskParams.getPageSize(), this.taskParams.getGalleryType(), behanceSDKAsyncTaskResultWrapper));
        } catch (Exception e2) {
            logger.error(e2, "Unknown problem fetching Projects of Curated Gallery [Gallery ID - %s]", strValueOf);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem fetching Projects of Curated Gallery", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    private List<BehanceSDKProjectDTO> getCuratedGalleryProjects(String str, int i, int i2, BehanceSDKCuratedGalleryType behanceSDKCuratedGalleryType, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper) throws JSONException, IOException, BehanceSDKProjectParseException, BehanceSDKHTTPStatusCodeNotOKException {
        ArrayList arrayList = new ArrayList();
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
            map.put(BehanceSDKUrlUtil.KEY_SITE_ID, str);
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/projects?{key_client_id_param}={clientId}", map);
            if (behanceSDKCuratedGalleryType == BehanceSDKCuratedGalleryType.ORGANIZATION) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "network", str);
            } else if (behanceSDKCuratedGalleryType == BehanceSDKCuratedGalleryType.SERVED_SITE) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_SERVED_FIELD, str);
            }
            String strAppendQueryStringParam = BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER, Integer.valueOf(i)), BehanceSDKUrlUtil.PARAM_KEY_PAGE_SIZE, Integer.valueOf(i2));
            logger.debug("Get Projects of Curated Gallery url - %s", strAppendQueryStringParam);
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(strAppendQueryStringParam, this.taskParams.getUserAccessToken()).getResponseObject();
            logger.debug("Get Projects of Curated Gallery response: %s", responseObject);
            int iOptInt = new JSONObject(responseObject).optInt("http_code");
            if (iOptInt == 200) {
                List<BehanceSDKProjectDTO> justProjects = new BehanceSDKProjectDTOParser().parseJustProjects(responseObject);
                if (justProjects != null) {
                    arrayList.addAll(justProjects);
                }
            } else if (iOptInt == 404) {
                logger.error("HTTP Response code 404 when trying to  fetch Projects of Curated Gallery. [Gallery ID - %s]", str);
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException("Curated Gallery not found"));
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            } else {
                logger.error("Unexpected HTTP Response code when trying to fetch Projects of Curated Gallery. [Gallery ID - %s] [Response code - %d]", str, Integer.valueOf(iOptInt));
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException("Invalid server response code " + iOptInt));
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            }
        } catch (Exception e2) {
            logger.error("Unexpected HTTP Response code when trying to fetch Projects of Curated Gallery", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(e2.getMessage()));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetCuratedGalleryProjectsFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.taskParams);
        } else {
            this.taskHandler.onGetCuratedGalleryProjectsSuccess(behanceSDKAsyncTaskResultWrapper.getResult(), this.taskParams);
        }
    }
}
