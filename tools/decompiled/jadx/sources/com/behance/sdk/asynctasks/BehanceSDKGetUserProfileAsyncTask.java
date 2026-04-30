package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.behance.sdk.BehanceSDKUserProfile;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetUserProfileAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetUserProfileTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKGetUserProfileTaskResult;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetUserProfileAsyncTask extends AsyncTask<BehanceSDKGetUserProfileTaskParams, Void, BehanceSDKGetUserProfileTaskResult> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetUserProfileAsyncTask.class);
    private BehanceSDKGetUserProfileTaskParams getUserProfileTaskParams;
    private IBehanceSDKGetUserProfileAsyncTaskListener listener;

    public BehanceSDKGetUserProfileAsyncTask(IBehanceSDKGetUserProfileAsyncTaskListener iBehanceSDKGetUserProfileAsyncTaskListener) {
        this.listener = iBehanceSDKGetUserProfileAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKGetUserProfileTaskResult doInBackground(BehanceSDKGetUserProfileTaskParams... behanceSDKGetUserProfileTaskParamsArr) {
        BehanceSDKGetUserProfileTaskResult behanceSDKGetUserProfileTaskResult = new BehanceSDKGetUserProfileTaskResult();
        if (behanceSDKGetUserProfileTaskParamsArr.length != 1) {
            behanceSDKGetUserProfileTaskResult.setExceptionOccurred(true);
            return behanceSDKGetUserProfileTaskResult;
        }
        this.getUserProfileTaskParams = behanceSDKGetUserProfileTaskParamsArr[0];
        String strValueOf = String.valueOf(this.getUserProfileTaskParams.getUserId());
        try {
            String clientId = this.getUserProfileTaskParams.getClientId();
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, clientId);
            map.put(BehanceSDKUrlUtil.KEY_USER_ID, strValueOf);
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_USER_BASIC_DETAILS_API_URL, map);
            logger.debug("Get user details URL: %s", urlFromTemplate);
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(urlFromTemplate, BehanceSDKUserManager.getInstance().checkExpiryAndGetAccessToken()).getResponseObject();
            logger.debug("Get user details response: %s", responseObject);
            int i = new JSONObject(responseObject).getInt("http_code");
            if (i == 200) {
                JSONObject jSONObjectOptJSONObject = new JSONObject(responseObject).optJSONObject("user");
                if (jSONObjectOptJSONObject != null) {
                    BehanceSDKUserProfile behanceSDKUserProfile = new BehanceSDKUserProfile();
                    behanceSDKUserProfile.setFirstName(jSONObjectOptJSONObject.optString("first_name"));
                    behanceSDKUserProfile.setLastName(jSONObjectOptJSONObject.optString("last_name"));
                    behanceSDKUserProfile.setCompany(jSONObjectOptJSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_COMPANY));
                    behanceSDKUserProfile.setOccupation(jSONObjectOptJSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_OCCUPATION));
                    behanceSDKUserProfile.setWebsite(jSONObjectOptJSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_WEBSITE));
                    BehanceSDKCountryDTO countryDTO = getCountryDTO(jSONObjectOptJSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY));
                    behanceSDKUserProfile.setCountry(countryDTO);
                    if (countryDTO != null) {
                        if (BehanceSDKCountryDTO.COUNTRY_CODES_FOR_LOAD_STATES.contains(countryDTO.getId())) {
                            behanceSDKUserProfile.setState(getStateDTO(jSONObjectOptJSONObject.optString("state")));
                        }
                        BehanceSDKCityDTO behanceSDKCityDTO = new BehanceSDKCityDTO();
                        behanceSDKCityDTO.setDisplayName(jSONObjectOptJSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_CITY));
                        behanceSDKUserProfile.setCity(behanceSDKCityDTO);
                    }
                    behanceSDKUserProfile.setProfileImageUrl(getProfileImage(jSONObjectOptJSONObject.optJSONObject("images")));
                    behanceSDKGetUserProfileTaskResult.setBehanceUserProfile(behanceSDKUserProfile);
                } else {
                    logger.error("Unexpected HTTP Response code when trying to fetch User details. [User ID - %s] [Response code - %d]", strValueOf, Integer.valueOf(i));
                    behanceSDKGetUserProfileTaskResult.setException(new Exception("Invalid server response code " + i));
                    behanceSDKGetUserProfileTaskResult.setExceptionOccurred(true);
                }
            } else if (i == 404) {
                logger.error("HTTP Response code 404 when trying to fetch User details. [User ID - %s]", strValueOf);
                behanceSDKGetUserProfileTaskResult.setException(new Exception("User not found"));
                behanceSDKGetUserProfileTaskResult.setExceptionOccurred(true);
            } else {
                logger.error("Unexpected HTTP Response code when trying to fetch User details. [User ID - %s] [Response code - %d]", strValueOf, Integer.valueOf(i));
                behanceSDKGetUserProfileTaskResult.setException(new Exception("Invalid server response code " + i));
                behanceSDKGetUserProfileTaskResult.setExceptionOccurred(true);
            }
        } catch (Exception e2) {
            logger.error(e2, "Unknown problem fetching User details [User ID - %s]", strValueOf);
            behanceSDKGetUserProfileTaskResult.setExceptionOccurred(true);
            behanceSDKGetUserProfileTaskResult.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Unknown problem fetching User details [User ID - %s]", strValueOf);
            behanceSDKGetUserProfileTaskResult.setException(new Exception(th.getMessage()));
            behanceSDKGetUserProfileTaskResult.setExceptionOccurred(true);
        }
        return behanceSDKGetUserProfileTaskResult;
    }

    private BehanceSDKCityDTO getCityDTO(String str, String str2, String str3, String str4) {
        JSONArray jSONArrayOptJSONArray;
        int i;
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, str4);
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_CITIES_API_URL, map);
            if (!TextUtils.isEmpty(str2)) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_LOCATION_FILTER_COUNTRY, str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "region", str3);
            }
            if (!TextUtils.isEmpty(str)) {
                urlFromTemplate = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "query", str);
            }
            logger.debug("Get Cities URL - %s", urlFromTemplate);
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(urlFromTemplate, null).getResponseObject();
            logger.debug("Get cities response: %s", responseObject);
            jSONArrayOptJSONArray = new JSONObject(responseObject).optJSONArray("results");
        } catch (Throwable th) {
            logger.debug(th, "Problem getting Cities from server", new Object[0]);
        }
        for (i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            Object obj = jSONArrayOptJSONArray.get(i);
            if (obj != null) {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.optString("name").equalsIgnoreCase(str)) {
                    BehanceSDKCityDTO behanceSDKCityDTO = new BehanceSDKCityDTO();
                    behanceSDKCityDTO.setId(jSONObject.optString("location_id"));
                    behanceSDKCityDTO.setDisplayName(str);
                    return behanceSDKCityDTO;
                }
                return null;
            }
        }
        return null;
    }

    private BehanceSDKStateDTO getStateDTO(String str) {
        BehanceSDKStateDTO behanceSDKStateDTO = new BehanceSDKStateDTO();
        behanceSDKStateDTO.setDisplayName(str);
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(BehanceSDKConstants.REGIONS_JSON_STRING).optJSONArray("results");
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArrayOptJSONArray.length()) {
                    break;
                }
                Object obj = jSONArrayOptJSONArray.get(i2);
                if (obj != null) {
                    JSONObject jSONObject = (JSONObject) obj;
                    if (jSONObject.optString("long_name").equalsIgnoreCase(str)) {
                        behanceSDKStateDTO.setId(jSONObject.optString("short_name"));
                        return behanceSDKStateDTO;
                    }
                }
                i = i2 + 1;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return behanceSDKStateDTO;
    }

    private BehanceSDKCountryDTO getCountryDTO(String str) {
        BehanceSDKCountryDTO behanceSDKCountryDTO = new BehanceSDKCountryDTO();
        behanceSDKCountryDTO.setDisplayName(str);
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(BehanceSDKConstants.COUNTRIES_JSON_STRING).optJSONArray("results");
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArrayOptJSONArray.length()) {
                    break;
                }
                Object obj = jSONArrayOptJSONArray.get(i2);
                if (obj != null) {
                    JSONObject jSONObject = (JSONObject) obj;
                    if (jSONObject.optString("long_name").equalsIgnoreCase(str)) {
                        behanceSDKCountryDTO.setId(jSONObject.optString("short_name"));
                        return behanceSDKCountryDTO;
                    }
                }
                i = i2 + 1;
            }
        } catch (JSONException e2) {
            logger.error(e2);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0010, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getProfileImage(org.json.JSONObject r3) {
        /*
            r2 = this;
            java.lang.String r0 = "276"
            boolean r0 = r3.has(r0)     // Catch: org.json.JSONException -> L77
            if (r0 == 0) goto L11
            java.lang.String r0 = "276"
            java.lang.String r0 = r3.getString(r0)     // Catch: org.json.JSONException -> L77
        L10:
            return r0
        L11:
            java.lang.String r0 = "138"
            boolean r0 = r3.has(r0)     // Catch: org.json.JSONException -> L77
            if (r0 == 0) goto L22
            java.lang.String r0 = "138"
            java.lang.String r0 = r3.getString(r0)     // Catch: org.json.JSONException -> L77
            goto L10
        L22:
            java.lang.String r0 = "129"
            boolean r0 = r3.has(r0)     // Catch: org.json.JSONException -> L77
            if (r0 == 0) goto L33
            java.lang.String r0 = "129"
            java.lang.String r0 = r3.getString(r0)     // Catch: org.json.JSONException -> L77
            goto L10
        L33:
            java.lang.String r0 = "115"
            boolean r0 = r3.has(r0)     // Catch: org.json.JSONException -> L77
            if (r0 == 0) goto L44
            java.lang.String r0 = "115"
            java.lang.String r0 = r3.getString(r0)     // Catch: org.json.JSONException -> L77
            goto L10
        L44:
            java.lang.String r0 = "78"
            boolean r0 = r3.has(r0)     // Catch: org.json.JSONException -> L77
            if (r0 == 0) goto L55
            java.lang.String r0 = "78"
            java.lang.String r0 = r3.getString(r0)     // Catch: org.json.JSONException -> L77
            goto L10
        L55:
            java.lang.String r0 = "50"
            boolean r0 = r3.has(r0)     // Catch: org.json.JSONException -> L77
            if (r0 == 0) goto L66
            java.lang.String r0 = "50"
            java.lang.String r0 = r3.getString(r0)     // Catch: org.json.JSONException -> L77
            goto L10
        L66:
            java.lang.String r0 = "32"
            boolean r0 = r3.has(r0)     // Catch: org.json.JSONException -> L77
            if (r0 == 0) goto L7d
            java.lang.String r0 = "32"
            java.lang.String r0 = r3.getString(r0)     // Catch: org.json.JSONException -> L77
            goto L10
        L77:
            r0 = move-exception
            com.behance.sdk.logger.ILogger r1 = com.behance.sdk.asynctasks.BehanceSDKGetUserProfileAsyncTask.logger
            r1.error(r0)
        L7d:
            r0 = 0
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.behance.sdk.asynctasks.BehanceSDKGetUserProfileAsyncTask.getProfileImage(org.json.JSONObject):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKGetUserProfileTaskResult behanceSDKGetUserProfileTaskResult) {
        if (behanceSDKGetUserProfileTaskResult.isExceptionOccurred()) {
            this.listener.onGetUserProfileFailure(behanceSDKGetUserProfileTaskResult.getException(), this.getUserProfileTaskParams);
        } else {
            this.listener.onGetUserProfileSuccess(behanceSDKGetUserProfileTaskResult, this.getUserProfileTaskParams);
        }
    }
}
