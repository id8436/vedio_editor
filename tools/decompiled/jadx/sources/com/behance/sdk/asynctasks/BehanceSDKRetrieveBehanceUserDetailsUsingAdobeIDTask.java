package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;
import com.behance.sdk.asynctask.params.BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;
import com.behance.sdk.dto.parser.BehanceUserDTOParser;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask extends AsyncTask<BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams, Void, BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse> {
    private static final String COM_ADOBE_AUTH_LINKING_STATUS = "com.adobe.auth.linking-status";
    private static final String COM_ADOBE_AUTH_LINKING_WORKFLOW_URL = "com.adobe.auth.linking-workflow-url";
    private static final String NOT_LINKED = "not-linked";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask.class);
    private IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler caller;

    public BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask(IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler iBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler) {
        this.caller = iBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse doInBackground(BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams... behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParamsArr) {
        List<String> list;
        BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse = new BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse();
        BehanceSDKUserManager behanceSDKUserManager = BehanceSDKUserManager.getInstance();
        String adobeUserId = behanceSDKUserManager.getAdobeUserId();
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_USER_ID, adobeUserId);
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_BEHANCE_USER_PROFILE_WITH_IMS_TOKEN_API_URL, map);
            logger.debug("Get user detail URL: %s", urlFromTemplate);
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpGetRequest = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(urlFromTemplate, behanceSDKUserManager.getAccessToken());
            String responseObject = behanceConnectionResponseInvokeHttpGetRequest.getResponseObject();
            logger.debug("Get user detail response: %s", responseObject);
            JSONObject jSONObject = new JSONObject(responseObject);
            int i = jSONObject.getInt("http_code");
            if (i == 200) {
                behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.setUserDTO(new BehanceUserDTOParser().parse(jSONObject.optJSONObject("user")));
            } else if (i == 403) {
                logger.error("HTTP 403 Response received when trying to fetch User Details. [User ID - %s] [Response code - %d]", adobeUserId, Integer.valueOf(i));
                Map<String, List<String>> headers = behanceConnectionResponseInvokeHttpGetRequest.getHeaders();
                List<String> list2 = null;
                if (headers != null) {
                    list2 = headers.get(COM_ADOBE_AUTH_LINKING_STATUS);
                }
                if (list2 != null && list2.get(0).equalsIgnoreCase(NOT_LINKED) && (list = headers.get(COM_ADOBE_AUTH_LINKING_WORKFLOW_URL)) != null && list.get(0) != null) {
                    behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.setException(new BehanceSDKException("User Account Not Linked " + i + list.get(0)));
                    logger.debug("Link URL for the account is. [URL - %s]", list.get(0));
                    return behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;
                }
                logger.error("Header Values for the link status/link-url is empty", new Object[0]);
                behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.setException(new BehanceSDKException("Header Values for the link status/link-url is empty"));
            } else {
                logger.error("Unexpected HTTP Response code when trying to fetch User Details. [User ID - %s] [Response code - %d]", adobeUserId, Integer.valueOf(i));
                behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.setException(new BehanceSDKException("Invalid server response code " + i));
            }
        } catch (Exception e2) {
            logger.error(e2, "Problem retrieving Behance User details using Adobe ID from server", new Object[0]);
            logger.error(e2);
            behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem retrieving Behance User details using Adobe ID from server", new Object[0]);
            behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.setException(new BehanceSDKException(th));
        }
        return behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        super.onCancelled();
        cancel(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse) {
        if (behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.getException() == null) {
            logger.debug("RetrieveBehanceUserDetailsUsingAdobeIDTask onPost executed. Caller success is being invoked.", new Object[0]);
            this.caller.onRetrieveBehanceUserDetailsSuccess(behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.getUserDTO());
        } else {
            logger.debug("RetrieveBehanceUserDetailsUsingAdobeIDTask onPost executed. Caller failure is being invoked.", new Object[0]);
            this.caller.onRetrieveBehanceUserDetailsFailure(behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.getException());
        }
    }
}
