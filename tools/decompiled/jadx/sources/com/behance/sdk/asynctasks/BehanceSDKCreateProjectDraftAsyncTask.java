package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.behance.sdk.BehanceSDKProjectDraftOptions;
import com.behance.sdk.IBehanceSDKCreateProjectDraftListener;
import com.behance.sdk.asynctask.params.BehanceSDKCreateProjectDraftTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceMultipartEntity;
import com.behance.sdk.network.BehanceRequestCancellationWrapper;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKCreateProjectDraftAsyncTask extends AsyncTask<BehanceSDKCreateProjectDraftTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<String>> {
    private static final String DESCRIPTION = "description";
    private static final String FIELDS_KEY = "fields";
    private static final String LICENSE_KEY = "license";
    private static final String MATURE_CONTENT_KEY = "mature_content";
    private static final String MODULE_IMAGE_KEY = "image";
    public static final String PROJECT = "project";
    public static final String PROJECT_ID = "id";
    private static final String TAGS_KEY = "tags";
    private static final String TITLE_KEY = "title";
    private IBehanceSDKCreateProjectDraftListener listener;

    public BehanceSDKCreateProjectDraftAsyncTask(IBehanceSDKCreateProjectDraftListener iBehanceSDKCreateProjectDraftListener) {
        this.listener = iBehanceSDKCreateProjectDraftListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<String> doInBackground(BehanceSDKCreateProjectDraftTaskParams... behanceSDKCreateProjectDraftTaskParamsArr) {
        String str;
        BehanceMultipartEntity behanceMultipartEntity = null;
        BehanceSDKAsyncTaskResultWrapper<String> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        try {
            BehanceSDKCreateProjectDraftTaskParams behanceSDKCreateProjectDraftTaskParams = behanceSDKCreateProjectDraftTaskParamsArr[0];
            HashMap map = new HashMap(1);
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKCreateProjectDraftTaskParams.getClientId());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.PROJECT_CREATE_URL, map);
            String strCheckExpiryAndGetAccessToken = BehanceSDKUserManager.getInstance().checkExpiryAndGetAccessToken();
            String strAppendQueryStringParam = strCheckExpiryAndGetAccessToken != null ? BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "access_token", strCheckExpiryAndGetAccessToken) : urlFromTemplate;
            BehanceSDKProjectDraftOptions behanceSDKProjectDraftOptions = behanceSDKCreateProjectDraftTaskParams.getBehanceSDKProjectDraftOptions();
            if (behanceSDKProjectDraftOptions != null) {
                behanceMultipartEntity = new BehanceMultipartEntity();
                behanceMultipartEntity.setChunked(true);
                String projectTitle = behanceSDKProjectDraftOptions.getProjectTitle();
                if (!TextUtils.isEmpty(projectTitle)) {
                    behanceMultipartEntity.addTextPart("title", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", projectTitle.getBytes("UTF-8"));
                }
                String projectDescription = behanceSDKProjectDraftOptions.getProjectDescription();
                if (!TextUtils.isEmpty(projectDescription)) {
                    behanceMultipartEntity.addTextPart("description", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", projectDescription.getBytes("UTF-8"));
                }
                String projectTags = behanceSDKProjectDraftOptions.getProjectTags();
                if (!TextUtils.isEmpty(projectTags)) {
                    behanceMultipartEntity.addTextPart("tags", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", projectTags.getBytes("UTF-8"));
                }
                String creativeFields = behanceSDKProjectDraftOptions.getCreativeFields();
                if (!TextUtils.isEmpty(creativeFields)) {
                    behanceMultipartEntity.addTextPart("fields", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", creativeFields.getBytes("UTF-8"));
                }
                if (behanceSDKProjectDraftOptions.isProjectContainsAdultContent()) {
                    str = "1";
                } else {
                    str = "0";
                }
                behanceMultipartEntity.addTextPart("mature_content", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", str.getBytes("UTF-8"));
                BehanceSDKCopyrightOption projectCopyrightSettings = behanceSDKProjectDraftOptions.getProjectCopyrightSettings();
                if (projectCopyrightSettings != null) {
                    behanceMultipartEntity.addTextPart("license", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", projectCopyrightSettings.getValue().getBytes("UTF-8"));
                }
                File coverImage = behanceSDKProjectDraftOptions.getCoverImage();
                if (coverImage != null) {
                    behanceMultipartEntity.addImagePart("image", coverImage.getName(), "application/octet-stream", "binary", coverImage.getAbsolutePath());
                }
            }
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(strAppendQueryStringParam, behanceMultipartEntity, (BehanceRequestCancellationWrapper) null, strCheckExpiryAndGetAccessToken);
            if (behanceConnectionResponseInvokeHttpPostRequest.getResponseCode() != 201) {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(behanceConnectionResponseInvokeHttpPostRequest.getResponseObject()));
            } else {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(false);
                behanceSDKAsyncTaskResultWrapper.setResult(((JSONObject) new JSONObject(behanceConnectionResponseInvokeHttpPostRequest.getResponseObject()).get("project")).optString("id"));
            }
        } catch (Throwable th) {
            behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<String> behanceSDKAsyncTaskResultWrapper) {
        if (this.listener != null) {
            if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
                this.listener.onFailure((BehanceSDKException) behanceSDKAsyncTaskResultWrapper.getException());
            } else {
                this.listener.onSuccess(behanceSDKAsyncTaskResultWrapper.getResult());
            }
        }
    }
}
