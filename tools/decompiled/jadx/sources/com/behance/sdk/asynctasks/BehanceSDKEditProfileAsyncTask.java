package com.behance.sdk.asynctasks;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.asynctask.listeners.IBehanceSDKEditProfileAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKEditProfileAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKEditProfileTaskResult;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceMultipartEntity;
import com.behance.sdk.network.BehanceNameValuePair;
import com.behance.sdk.network.HttpPatch;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.ByteArrayBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEditProfileAsyncTask extends AsyncTask<BehanceSDKEditProfileAsyncTaskParams, Void, BehanceSDKEditProfileTaskResult> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKEditProfileAsyncTask.class);
    private IBehanceSDKEditProfileAsyncTaskListener taskHandler;

    public BehanceSDKEditProfileAsyncTask(IBehanceSDKEditProfileAsyncTaskListener iBehanceSDKEditProfileAsyncTaskListener) {
        this.taskHandler = iBehanceSDKEditProfileAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKEditProfileTaskResult doInBackground(BehanceSDKEditProfileAsyncTaskParams... behanceSDKEditProfileAsyncTaskParamsArr) throws Throwable {
        int statusCode;
        int iOptInt;
        BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult = new BehanceSDKEditProfileTaskResult();
        BehanceSDKEditProfileAsyncTaskParams behanceSDKEditProfileAsyncTaskParams = behanceSDKEditProfileAsyncTaskParamsArr[0];
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKEditProfileAsyncTaskParams.getClientId());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.EDIT_USER_PROFILE_API_URL, map);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new BehanceNameValuePair("token_type", "device_token"));
            String strCheckExpiryAndGetAccessToken = BehanceSDKUserManager.getInstance().checkExpiryAndGetAccessToken();
            String firstName = behanceSDKEditProfileAsyncTaskParams.getFirstName();
            if (!TextUtils.isEmpty(firstName)) {
                arrayList.add(new BehanceNameValuePair("first_name", firstName));
            }
            String lastName = behanceSDKEditProfileAsyncTaskParams.getLastName();
            if (!TextUtils.isEmpty(lastName)) {
                arrayList.add(new BehanceNameValuePair("last_name", lastName));
            }
            String occupation = behanceSDKEditProfileAsyncTaskParams.getOccupation();
            if (occupation != null) {
                arrayList.add(new BehanceNameValuePair(BehanceSDKUrlUtil.PARAM_KEY_OCCUPATION, occupation));
            }
            String company = behanceSDKEditProfileAsyncTaskParams.getCompany();
            if (company != null) {
                arrayList.add(new BehanceNameValuePair(BehanceSDKUrlUtil.PARAM_KEY_COMPANY, company));
            }
            String website = behanceSDKEditProfileAsyncTaskParams.getWebsite();
            if (website != null) {
                arrayList.add(new BehanceNameValuePair(BehanceSDKUrlUtil.PARAM_KEY_WEBSITE, website));
            }
            String country = behanceSDKEditProfileAsyncTaskParams.getCountry();
            if (!TextUtils.isEmpty(country)) {
                arrayList.add(new BehanceNameValuePair(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY, country));
            }
            String state = behanceSDKEditProfileAsyncTaskParams.getState();
            if (!TextUtils.isEmpty(state)) {
                arrayList.add(new BehanceNameValuePair("state", state));
            }
            String city = behanceSDKEditProfileAsyncTaskParams.getCity();
            if (!TextUtils.isEmpty(city)) {
                arrayList.add(new BehanceNameValuePair(BehanceSDKUrlUtil.PARAM_KEY_CITY, city));
            }
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(urlFromTemplate, arrayList, (List<BehanceNameValuePair>) null, strCheckExpiryAndGetAccessToken).getResponseObject();
            logger.debug("Update Profile server response - %s", responseObject);
            JSONObject jSONObject = new JSONObject(responseObject);
            int iOptInt2 = jSONObject.optInt("http_code");
            int iOptInt3 = jSONObject.optInt(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);
            logger.debug("Update Profile [HTTP Response code - %s] [Updated - %s]", Integer.valueOf(iOptInt2), Integer.valueOf(iOptInt3));
            if (iOptInt2 == 200) {
                if (iOptInt3 == 1) {
                    behanceSDKEditProfileTaskResult.setProfileUpdateFailed(false);
                }
            } else {
                behanceSDKEditProfileTaskResult.setExceptionOccurred(true);
                behanceSDKEditProfileTaskResult.setProfileUpdateFailed(true);
                behanceSDKEditProfileTaskResult.addException(new Exception("Invalid server response saving user profile"));
            }
            Bitmap profileImageBitmap = behanceSDKEditProfileAsyncTaskParams.getProfileImageBitmap();
            ImageModule image = behanceSDKEditProfileAsyncTaskParams.getImage();
            if (profileImageBitmap != null && image != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                profileImageBitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (Build.VERSION.SDK_INT >= 21) {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArray);
                    BehanceMultipartEntity behanceMultipartEntity = new BehanceMultipartEntity();
                    behanceMultipartEntity.addImagePart("image", behanceSDKEditProfileAsyncTaskParams.getImage().getName(), "application/octet-stream", "binary", byteArrayInputStream);
                    BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPatchRequest = BehanceHttpsConnection.getInstance().invokeHttpPatchRequest(urlFromTemplate, behanceMultipartEntity, null, strCheckExpiryAndGetAccessToken);
                    byteArrayInputStream.close();
                    JSONObject jSONObject2 = new JSONObject(behanceConnectionResponseInvokeHttpPatchRequest.getResponseObject());
                    statusCode = jSONObject2.optInt("http_code");
                    iOptInt = jSONObject2.optInt(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);
                } else {
                    String strAppendQueryStringParam = BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
                    DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                    HttpPatch httpPatch = new HttpPatch(strAppendQueryStringParam);
                    MultipartEntity multipartEntity = new MultipartEntity(HttpMultipartMode.BROWSER_COMPATIBLE);
                    multipartEntity.addPart("image", new ByteArrayBody(byteArray, behanceSDKEditProfileAsyncTaskParams.getImage().getName()));
                    httpPatch.setEntity(multipartEntity);
                    statusCode = defaultHttpClient.execute(httpPatch).getStatusLine().getStatusCode();
                    iOptInt = 1;
                }
                if (statusCode == 200) {
                    if (iOptInt == 1) {
                        behanceSDKEditProfileTaskResult.setProfileAvatarUpdateFailed(false);
                    }
                } else {
                    behanceSDKEditProfileTaskResult.setProfileAvatarUpdateFailed(true);
                    behanceSDKEditProfileTaskResult.setExceptionOccurred(true);
                    behanceSDKEditProfileTaskResult.addException(new Exception("Invalid server response saving user profile avatar"));
                }
            } else {
                behanceSDKEditProfileTaskResult.setProfileAvatarUpdateFailed(false);
            }
        } catch (Exception e2) {
            logger.error(e2, "Unknown problem saving user profile", new Object[0]);
            behanceSDKEditProfileTaskResult.setExceptionOccurred(true);
            behanceSDKEditProfileTaskResult.addException(e2);
        }
        return behanceSDKEditProfileTaskResult;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult) {
        if (behanceSDKEditProfileTaskResult.isExceptionOccurred()) {
            this.taskHandler.onEditProfileTaskFailure(behanceSDKEditProfileTaskResult);
        } else {
            this.taskHandler.onEditProfileTaskSuccess(behanceSDKEditProfileTaskResult);
        }
    }
}
