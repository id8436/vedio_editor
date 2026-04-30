package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.behance.sdk.IBehanceSDKSearchProjectListener;
import com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams;
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
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSearchProjectsAsyncTask extends AsyncTask<BehanceSDKSearchProjectsTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKSearchProjectsAsyncTask.class);
    private IBehanceSDKSearchProjectListener taskHandler;
    private BehanceSDKSearchProjectsTaskParams taskParams;

    public BehanceSDKSearchProjectsAsyncTask(IBehanceSDKSearchProjectListener iBehanceSDKSearchProjectListener) {
        this.taskHandler = iBehanceSDKSearchProjectListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> doInBackground(BehanceSDKSearchProjectsTaskParams... behanceSDKSearchProjectsTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKProjectDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        try {
            if (behanceSDKSearchProjectsTaskParamsArr.length == 1 && behanceSDKSearchProjectsTaskParamsArr[0] != null) {
                BehanceSDKSearchProjectsTaskParams behanceSDKSearchProjectsTaskParams = behanceSDKSearchProjectsTaskParamsArr[0];
                this.taskParams = behanceSDKSearchProjectsTaskParams;
                HashMap map = new HashMap();
                map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKSearchProjectsTaskParams.getClientId());
                String strAppendQueryStringParam = BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/projects?{key_client_id_param}={clientId}", map), BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER, Integer.valueOf(behanceSDKSearchProjectsTaskParams.getPageNumber())), BehanceSDKUrlUtil.PARAM_KEY_PAGE_SIZE, Integer.valueOf(behanceSDKSearchProjectsTaskParams.getPageSize()));
                BehanceSDKProjectsSortOption sortOption = behanceSDKSearchProjectsTaskParams.getSortOption();
                if (sortOption == null) {
                    sortOption = BehanceSDKProjectsSortOption.FEATURED_DATE;
                }
                String strAppendQueryStringParam2 = BehanceSDKUrlUtil.appendQueryStringParam(strAppendQueryStringParam, BehanceSDKUrlUtil.PARAM_KEY_SORT, sortOption.toString());
                BehanceSDKProjectsTimeSpan timeSpan = behanceSDKSearchProjectsTaskParams.getTimeSpan();
                if (timeSpan != null) {
                    strAppendQueryStringParam2 = BehanceSDKUrlUtil.appendQueryStringParam(strAppendQueryStringParam2, "time", timeSpan.toString());
                }
                String fieldId = behanceSDKSearchProjectsTaskParams.getFieldId();
                if (!TextUtils.isEmpty(fieldId)) {
                    strAppendQueryStringParam2 = BehanceSDKUrlUtil.appendQueryStringParam(strAppendQueryStringParam2, BehanceSDKUrlUtil.PARAM_KEY_FIELD, fieldId);
                }
                String country = behanceSDKSearchProjectsTaskParams.getCountry();
                if (!TextUtils.isEmpty(country)) {
                    strAppendQueryStringParam2 = BehanceSDKUrlUtil.appendQueryStringParam(strAppendQueryStringParam2, BehanceSDKUrlUtil.PARAM_KEY_COUNTRY, country);
                }
                String state = behanceSDKSearchProjectsTaskParams.getState();
                if (!TextUtils.isEmpty(state) && !state.equals(BehanceSDKStateDTO.ALL_STATES_NAME)) {
                    strAppendQueryStringParam2 = BehanceSDKUrlUtil.appendQueryStringParam(strAppendQueryStringParam2, "state", state);
                }
                String city = behanceSDKSearchProjectsTaskParams.getCity();
                if (!TextUtils.isEmpty(city) && !city.equals(BehanceSDKCityDTO.ALL_CITY_NAME)) {
                    strAppendQueryStringParam2 = BehanceSDKUrlUtil.appendQueryStringParam(strAppendQueryStringParam2, BehanceSDKUrlUtil.PARAM_KEY_CITY, city);
                }
                String searchString = behanceSDKSearchProjectsTaskParams.getSearchString();
                if (!TextUtils.isEmpty(searchString)) {
                    strAppendQueryStringParam2 = BehanceSDKUrlUtil.appendQueryStringParam(strAppendQueryStringParam2, "q", searchString);
                }
                String strCheckExpiryAndGetAccessToken = BehanceSDKUserManager.getInstance().checkExpiryAndGetAccessToken();
                logger.debug("Get Projects async task request url - %s", strAppendQueryStringParam2);
                String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(strAppendQueryStringParam2, strCheckExpiryAndGetAccessToken).getResponseObject();
                logger.debug("Get projects async task response: %s", responseObject);
                behanceSDKAsyncTaskResultWrapper.setResult(new BehanceSDKProjectDTOParser().parseJustProjects(responseObject));
            } else {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException("BehanceSDKSearchProjectsTaskParams cannot be null"));
            }
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
            this.taskHandler.onSearchProjectsFailure(behanceSDKAsyncTaskResultWrapper.getException());
        } else {
            this.taskHandler.onSearchProjectsSuccess(behanceSDKAsyncTaskResultWrapper.getResult());
        }
    }
}
