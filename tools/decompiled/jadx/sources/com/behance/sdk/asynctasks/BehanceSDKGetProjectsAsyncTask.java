package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectsAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectsAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.dto.parser.BehanceSDKProjectDTOParser;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.enums.BehanceSDKProjectsSortOption;
import com.behance.sdk.enums.BehanceSDKProjectsTimeSpan;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetProjectsAsyncTask extends AsyncTask<BehanceSDKGetProjectsAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetProjectsAsyncTask.class);
    private IBehanceSDKGetProjectsAsyncTaskListener taskHandler;
    private BehanceSDKGetProjectsAsyncTaskParams taskParams;

    public BehanceSDKGetProjectsAsyncTask(IBehanceSDKGetProjectsAsyncTaskListener iBehanceSDKGetProjectsAsyncTaskListener) {
        this.taskHandler = iBehanceSDKGetProjectsAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> doInBackground(BehanceSDKGetProjectsAsyncTaskParams... behanceSDKGetProjectsAsyncTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/projects?{key_client_id_param}={clientId}", map);
            String userAccessToken = null;
            if (behanceSDKGetProjectsAsyncTaskParamsArr.length == 1) {
                BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams = behanceSDKGetProjectsAsyncTaskParamsArr[0];
                this.taskParams = behanceSDKGetProjectsAsyncTaskParams;
                if (behanceSDKGetProjectsAsyncTaskParams != null) {
                    urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER, Integer.valueOf(behanceSDKGetProjectsAsyncTaskParams.getPageNumber())), BehanceSDKUrlUtil.PARAM_KEY_PAGE_SIZE, Integer.valueOf(behanceSDKGetProjectsAsyncTaskParams.getPageSize()));
                    BehanceSDKProjectsSortOption sortOption = behanceSDKGetProjectsAsyncTaskParams.getSortOption();
                    if (sortOption != null) {
                        urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_SORT, sortOption.toString());
                    }
                    BehanceSDKProjectsTimeSpan timeSpan = behanceSDKGetProjectsAsyncTaskParams.getTimeSpan();
                    if (timeSpan != null) {
                        urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "time", timeSpan.toString());
                    }
                    String fieldId = behanceSDKGetProjectsAsyncTaskParams.getFieldId();
                    if (!TextUtils.isEmpty(fieldId)) {
                        urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_FIELD, fieldId);
                    }
                    String country = behanceSDKGetProjectsAsyncTaskParams.getCountry();
                    if (!TextUtils.isEmpty(country)) {
                        urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_COUNTRY, country);
                    }
                    String state = behanceSDKGetProjectsAsyncTaskParams.getState();
                    if (!TextUtils.isEmpty(state) && !state.equals(BehanceSDKStateDTO.ALL_STATES_NAME)) {
                        urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "state", state);
                    }
                    String city = behanceSDKGetProjectsAsyncTaskParams.getCity();
                    if (!TextUtils.isEmpty(city) && !city.equals(BehanceSDKCityDTO.ALL_CITY_NAME)) {
                        urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_CITY, city);
                    }
                    String searchString = behanceSDKGetProjectsAsyncTaskParams.getSearchString();
                    if (!TextUtils.isEmpty(searchString)) {
                        urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_SEARCH_FREE_TEXT_QUERY, searchString);
                    }
                    userAccessToken = behanceSDKGetProjectsAsyncTaskParams.getUserAccessToken();
                }
            }
            logger.debug("Get Projects async task request url - %s", urlFromTemplate);
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(urlFromTemplate, userAccessToken).getResponseObject();
            logger.debug("Get projects async task response: %s", responseObject);
            behanceSDKAsyncTaskResultWrapper.setResult(new BehanceSDKProjectDTOParser().parseJustProjects(responseObject));
        } catch (Exception e2) {
            logger.error(e2, "Problem getting Projects from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem getting Projects from server", new Object[0]);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetProjectsAsyncTaskFailure(behanceSDKAsyncTaskResultWrapper.getException(), this.taskParams);
        } else {
            this.taskHandler.onGetProjectsAsyncTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult(), this.taskParams);
        }
    }
}
