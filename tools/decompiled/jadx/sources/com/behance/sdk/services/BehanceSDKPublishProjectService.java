package com.behance.sdk.services;

import android.app.Activity;
import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.customextractor.Constants;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKSocialAccountManager;
import com.behance.sdk.R;
import com.behance.sdk.asynctasks.result.BehanceSDKPublishProjectTaskResult;
import com.behance.sdk.dto.BehanceSDKPublishProjectServiceParamsDTO;
import com.behance.sdk.dto.BehanceSDKPublishedProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKPublishProjectStatusDTO;
import com.behance.sdk.enums.BehanceSDKPublishProjectProgressState;
import com.behance.sdk.enums.BehanceSDKSocialAccountType;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceMultipartEntity;
import com.behance.sdk.network.BehanceMultipartEntityWrapper;
import com.behance.sdk.network.BehanceRequestCancellationWrapper;
import com.behance.sdk.project.modules.EmbedModule;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.project.modules.ProjectModule;
import com.behance.sdk.project.modules.ProjectModuleTypes;
import com.behance.sdk.services.binders.BehanceSDKPublishProjectBinder;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.at;
import com.facebook.s;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.basic.DefaultOAuthConsumer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectService extends IntentService {
    private static final String DESCRIPTION = "description";
    private static final String FIELDS_KEY = "fields";
    public static final String INTENT_EXTRA_PARAMS = "INTENT_EXTRA_PARAMS";
    private static final String LICENSE_KEY = "license";
    private static final String MATURE_CONTENT_KEY = "mature_content";
    private static final String MODULE_EMBED_KEY = "html";
    private static final String MODULE_IMAGE_KEY = "image";
    private static final String MODULE_TYPE_EMBED_VALUE = "embed";
    private static final String MODULE_TYPE_IMAGE_VALUE = "image";
    private static final String MODULE_TYPE_KEY = "type";
    private static final String PROJECTID_KEY = "{project_id}";
    private static final String PUBLISHED = "1";
    private static final String PUBLISHED_KEY = "published";
    private static final String TAGS_KEY = "tags";
    private static final String TITLE_KEY = "title";
    private static final String TWITTER_UPDATE_API_URL = "https://api.twitter.com/1.1/statuses/update.json?status=";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKPublishProjectService.class);
    private String activePublishRequestId;
    private BehanceSDK behanceSDK;
    private BehanceSDKPublishProjectBinder projectBinder;
    private BehanceSDKUserManager sdkUserManager;

    public BehanceSDKPublishProjectService() {
        super("Behance Publish Project Service");
    }

    @Override // android.app.IntentService, android.app.Service
    public IBinder onBind(Intent intent) {
        if (this.projectBinder == null) {
            this.projectBinder = new BehanceSDKPublishProjectBinder();
        }
        return this.projectBinder;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isActiveUploadCancelled() {
        if (this.projectBinder != null) {
            return this.projectBinder.isUploadCancelled(this.activePublishRequestId);
        }
        return false;
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        String string;
        this.activePublishRequestId = String.valueOf(System.currentTimeMillis());
        this.sdkUserManager = BehanceSDKUserManager.getInstance();
        this.behanceSDK = BehanceSDK.getInstance();
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this);
        builder.setSmallIcon(R.drawable.bsdk_anim_list_publish_in_progress_indicator);
        if (this.behanceSDK.useBehanceTheme()) {
            builder.setContentTitle(getString(R.string.bsdk_publish_project_service_in_progress_notification_title));
        } else {
            builder.setContentTitle(getString(this.behanceSDK.getBehanceSDKCustomResourcesOptions().getAppTitle()));
            int appColor = this.behanceSDK.getBehanceSDKCustomResourcesOptions().getAppColor();
            if (appColor != 0) {
                builder.setColor(getResources().getColor(appColor));
            }
        }
        builder.setContentText(getString(R.string.bsdk_publish_project_service_in_progress_notification_text));
        builder.setStyle(new NotificationCompat.BigTextStyle().bigText(getString(R.string.bsdk_publish_project_service_in_progress_notification_text)));
        builder.setProgress(0, 0, true);
        startForeground(BehanceSDKConstants.NOTIFICATION_ID_PUBLISH_PROJECT_IN_PROGRESS, builder.build());
        Serializable serializableExtra = intent.getSerializableExtra("INTENT_EXTRA_PARAMS");
        if (serializableExtra instanceof BehanceSDKPublishProjectServiceParamsDTO) {
            BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO = (BehanceSDKPublishProjectServiceParamsDTO) serializableExtra;
            BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO = new BehanceSDKPublishProjectStatusDTO();
            if (isActiveUploadCancelled()) {
                broadcastUploadCancelledStatusUpdate();
                return;
            }
            BehanceSDKPublishProjectTaskResult behanceSDKPublishProjectTaskResultPublishProjectOnServer = publishProjectOnServer(behanceSDKPublishProjectServiceParamsDTO, behanceSDKPublishProjectStatusDTO);
            BehanceSDKPublishedProjectDTO publishedProject = behanceSDKPublishProjectTaskResultPublishProjectOnServer.getPublishedProject();
            Class<? extends Activity> notificationHandlerActivity = behanceSDKPublishProjectServiceParamsDTO.getNotificationHandlerActivity();
            if (publishedProject != null && behanceSDKPublishProjectTaskResultPublishProjectOnServer.getStatus() == BehanceSDKPublishProjectTaskResult.PublishStatus.SUCCESS) {
                if (!isActiveUploadCancelled() && behanceSDKPublishProjectServiceParamsDTO.isShareOnFacebook()) {
                    publishOnFacebook(publishedProject, behanceSDKPublishProjectServiceParamsDTO, behanceSDKPublishProjectStatusDTO);
                }
                if (!isActiveUploadCancelled() && behanceSDKPublishProjectServiceParamsDTO.isShareOnTwitter()) {
                    publishOnTwitter(behanceSDKPublishProjectServiceParamsDTO, behanceSDKPublishProjectStatusDTO);
                }
                if (isActiveUploadCancelled()) {
                    handleCancelAfterSuccessfulUpload(publishedProject, behanceSDKPublishProjectServiceParamsDTO);
                    return;
                }
                if (this.behanceSDK.useBehanceTheme()) {
                    builder.setContentTitle(getString(R.string.bsdk_publish_project_service_success_notification_title));
                    builder.setContentText(getString(R.string.bsdk_publish_project_service_success_notification_text));
                } else {
                    builder.setContentTitle(getString(this.behanceSDK.getBehanceSDKCustomResourcesOptions().getAppTitle()));
                    builder.setContentText(getString(R.string.bsdk_publish_project_service_success_notification_text_behance));
                }
                builder.setTicker(getString(R.string.bsdk_publish_project_service_success_notification_ticker));
                builder.setStyle(new NotificationCompat.BigTextStyle().bigText(getString(R.string.bsdk_publish_project_service_success_notification_text)));
                if (notificationHandlerActivity != null) {
                    Intent intentCreateNotifyIntent = createNotifyIntent(notificationHandlerActivity);
                    intentCreateNotifyIntent.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_BOOL_EXTRA_PUBLISHED_PROJECT_SUCCESSFULLY", true);
                    intentCreateNotifyIntent.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_ID", publishedProject.getProjectId());
                    intentCreateNotifyIntent.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_TITLE", publishedProject.getProjectTitle());
                    builder.setContentIntent(createPendingIntent(intentCreateNotifyIntent));
                }
                behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.PUBLISH_SUCCESSFUL);
                behanceSDKPublishProjectStatusDTO.setProgressPercentage(getProgressPercentage(BehanceSDKPublishProjectProgressState.PUBLISH_SUCCESSFUL, behanceSDKPublishProjectServiceParamsDTO));
                broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
            } else if (!isActiveUploadCancelled()) {
                if (this.behanceSDK.useBehanceTheme()) {
                    builder.setContentTitle(getString(R.string.bsdk_publish_project_service_failure_notification_title));
                } else {
                    builder.setContentTitle(getString(this.behanceSDK.getBehanceSDKCustomResourcesOptions().getAppTitle()));
                }
                builder.setTicker(getString(R.string.bsdk_publish_project_service_failure_notification_ticker));
                String string2 = "";
                String reasonPhrase = behanceSDKPublishProjectTaskResultPublishProjectOnServer.getReasonPhrase();
                if (reasonPhrase != null) {
                    try {
                        string2 = new JSONObject(reasonPhrase).getString("message");
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                if (string2.equals("")) {
                    string = getString(R.string.bsdk_publish_project_service_unknown_failure_notification_msg);
                } else {
                    string = getString(R.string.bsdk_publish_project_service_failure_notification_msg, new Object[]{string2});
                }
                builder.setContentText(string);
                builder.setStyle(new NotificationCompat.BigTextStyle().bigText(string));
                if (notificationHandlerActivity != null) {
                    Intent intentCreateNotifyIntent2 = createNotifyIntent(notificationHandlerActivity);
                    intentCreateNotifyIntent2.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_BOOL_EXTRA_PUBLISHED_PROJECT_SUCCESSFULLY", false);
                    intentCreateNotifyIntent2.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_ID", publishedProject.getProjectId());
                    intentCreateNotifyIntent2.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_TITLE", publishedProject.getProjectTitle());
                    intentCreateNotifyIntent2.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISH_PROJECT_FAILURE_MSG", string);
                    builder.setContentIntent(createPendingIntent(intentCreateNotifyIntent2));
                }
            } else {
                return;
            }
            if (!isActiveUploadCancelled()) {
                if (this.behanceSDK.useBehanceTheme()) {
                    builder.setSmallIcon(R.drawable.bsdk_icon_notification_publish_progress);
                } else {
                    builder.setSmallIcon(this.behanceSDK.getBehanceSDKCustomResourcesOptions().getAppSmallIcon());
                }
                builder.setProgress(0, 0, false);
                builder.setAutoCancel(true);
                ((NotificationManager) getSystemService("notification")).notify(2002, builder.build());
            }
        }
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.projectBinder = null;
    }

    private PendingIntent createPendingIntent(Intent intent) {
        return PendingIntent.getActivity(this, 0, intent, Constants.SAMPLE_FLAG_DECODE_ONLY);
    }

    private Intent createNotifyIntent(Class<? extends Activity> cls) {
        Intent intent = new Intent(this, cls);
        intent.setFlags(268435456);
        return intent;
    }

    private BehanceSDKPublishProjectTaskResult publishProjectOnServer(BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO, BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO) {
        String str;
        String strCheckExpiryAndGetAccessToken;
        BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest;
        String str2;
        File file;
        BehanceSDKPublishProjectTaskResult behanceSDKPublishProjectTaskResult = new BehanceSDKPublishProjectTaskResult();
        BehanceSDKPublishedProjectDTO behanceSDKPublishedProjectDTO = new BehanceSDKPublishedProjectDTO();
        String projectTitle = behanceSDKPublishProjectServiceParamsDTO.getProjectTitle();
        behanceSDKPublishedProjectDTO.setProjectTitle(projectTitle);
        behanceSDKPublishProjectTaskResult.setPublishedProject(behanceSDKPublishedProjectDTO);
        List<ProjectModule> projectModules = behanceSDKPublishProjectServiceParamsDTO.getProjectModules();
        behanceSDKPublishProjectStatusDTO.setProjectTitle(projectTitle);
        behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.PUBLISH_STARTED);
        behanceSDKPublishProjectStatusDTO.setProgressPercentage(getProgressPercentage(BehanceSDKPublishProjectProgressState.PUBLISH_STARTED, behanceSDKPublishProjectServiceParamsDTO));
        broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
        HashMap map = new HashMap();
        map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKPublishProjectServiceParamsDTO.getAppClientId());
        try {
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.PROJECT_CREATE_URL, map);
            strCheckExpiryAndGetAccessToken = BehanceSDKUserManager.getInstance().checkExpiryAndGetAccessToken();
            String strAppendQueryStringParam = strCheckExpiryAndGetAccessToken != null ? BehanceSDKUrlUtil.appendQueryStringParam(urlFromTemplate, "access_token", strCheckExpiryAndGetAccessToken) : urlFromTemplate;
            BehanceMultipartEntity behanceMultipartEntity = new BehanceMultipartEntity();
            behanceMultipartEntity.setChunked(true);
            behanceMultipartEntity.addImagePart("image", behanceSDKPublishProjectServiceParamsDTO.getProjectCoverImageFileName(), "application/octet-stream", "binary", new ByteArrayInputStream(behanceSDKPublishProjectServiceParamsDTO.getProjectCoverImageByteArray()));
            behanceMultipartEntity.addTextPart("title", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", projectTitle.getBytes("UTF-8"));
            behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(strAppendQueryStringParam, behanceMultipartEntity, (BehanceRequestCancellationWrapper) null, strCheckExpiryAndGetAccessToken);
        } catch (Throwable th) {
            th = th;
            str = null;
        }
        if (behanceConnectionResponseInvokeHttpPostRequest.getResponseCode() != 201) {
            behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.PUBLISH_FAILED);
            behanceSDKPublishProjectStatusDTO.setReasonPhrase(behanceConnectionResponseInvokeHttpPostRequest.getResponseObject());
            broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
            cleanupCreativeCloudResources(projectModules);
            behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.CREATION_FAILED);
            behanceSDKPublishProjectTaskResult.setReasonPhrase(behanceConnectionResponseInvokeHttpPostRequest.getResponseObject());
            return behanceSDKPublishProjectTaskResult;
        }
        JSONObject jSONObject = (JSONObject) new JSONObject(behanceConnectionResponseInvokeHttpPostRequest.getResponseObject()).get("project");
        String strOptString = jSONObject.optString("id");
        try {
            behanceSDKPublishedProjectDTO.setProjectId(strOptString);
            String strOptString2 = jSONObject.optString("url");
            behanceSDKPublishedProjectDTO.setProjectUrl(strOptString2);
            behanceSDKPublishProjectStatusDTO.setProjectId(strOptString);
            behanceSDKPublishProjectStatusDTO.setProjectUrl(strOptString2);
        } catch (Throwable th2) {
            th = th2;
            str = strOptString;
            logger.error(th, "Problem publishing project", new Object[0]);
            cleanupCreativeCloudResources(projectModules);
            if (isActiveUploadCancelled()) {
                handleCancelAfterSuccessfulUpload(behanceSDKPublishedProjectDTO, behanceSDKPublishProjectServiceParamsDTO);
                behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.CANCELLED);
                return behanceSDKPublishProjectTaskResult;
            }
            if (!TextUtils.isEmpty(str)) {
                deleteProject(str, behanceSDKPublishProjectServiceParamsDTO, map);
            }
            behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.PUBLISH_FAILED);
            behanceSDKPublishProjectStatusDTO.setException(th);
            broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
            behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.EXCEPTION);
            behanceSDKPublishProjectTaskResult.setException(th);
        }
        if (isActiveUploadCancelled()) {
            handleCancelAfterSuccessfulUpload(behanceSDKPublishedProjectDTO, behanceSDKPublishProjectServiceParamsDTO);
            behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.CANCELLED);
            return behanceSDKPublishProjectTaskResult;
        }
        behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.PROJECT_DRAFT_CREATION_SUCCESSFUL);
        behanceSDKPublishProjectStatusDTO.setProgressPercentage(getProgressPercentage(BehanceSDKPublishProjectProgressState.PROJECT_DRAFT_CREATION_SUCCESSFUL, behanceSDKPublishProjectServiceParamsDTO));
        broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("covers");
        if (jSONObjectOptJSONObject != null) {
            String strOptString3 = jSONObjectOptJSONObject.optString("202");
            String strOptString4 = jSONObjectOptJSONObject.optString("404");
            behanceSDKPublishedProjectDTO.setProjectImageUrl(strOptString3);
            if (strOptString4 != null && strOptString4.length() > 0) {
                behanceSDKPublishProjectStatusDTO.setProjectCoverImageUrl(strOptString4);
            } else {
                behanceSDKPublishProjectStatusDTO.setProjectCoverImageUrl(strOptString3);
            }
        }
        String strReplace = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.ADD_PROJECT_MODULE_URL, map).replace(PROJECTID_KEY, strOptString);
        String strAppendQueryStringParam2 = strCheckExpiryAndGetAccessToken != null ? BehanceSDKUrlUtil.appendQueryStringParam(strReplace, "access_token", strCheckExpiryAndGetAccessToken) : strReplace;
        int i = 0;
        for (ProjectModule projectModule : projectModules) {
            if (isActiveUploadCancelled()) {
                handleCancelAfterSuccessfulUpload(behanceSDKPublishedProjectDTO, behanceSDKPublishProjectServiceParamsDTO);
                behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.CANCELLED);
                return behanceSDKPublishProjectTaskResult;
            }
            i++;
            ProjectModuleTypes type = projectModule.getType();
            BehanceMultipartEntity behanceMultipartEntity2 = new BehanceMultipartEntity();
            behanceMultipartEntity2.setChunked(true);
            if (type == ProjectModuleTypes.IMAGE || type == ProjectModuleTypes.CREATIVECLOUD_ASSET) {
                behanceMultipartEntity2.addTextPart("type", BehanceMultipartEntity.CONTENT_TYPE_TEXT_UTF8, "8bit", new String("image").getBytes("ISO-8859-1"));
                File fileForUpload = ((ImageModule) projectModule).getFileForUpload();
                behanceMultipartEntity2.addImagePart("image", fileForUpload.getName(), "application/octet-stream", "binary", fileForUpload.getAbsolutePath());
                file = fileForUpload;
            } else {
                if (type == ProjectModuleTypes.EMBED) {
                    behanceMultipartEntity2.addTextPart("type", BehanceMultipartEntity.CONTENT_TYPE_TEXT_ISO_8859, "8bit", new String("embed").getBytes("ISO-8859-1"));
                    behanceMultipartEntity2.addTextPart("html", BehanceMultipartEntity.CONTENT_TYPE_APPLICATION_XHTML, "8bit", ((EmbedModule) projectModule).getEmbedContent().getBytes("ISO-8859-1"));
                }
                file = null;
            }
            BehanceRequestCancellationWrapper behanceRequestCancellationWrapper = new BehanceRequestCancellationWrapper();
            behanceMultipartEntity2.setBehanceHttpEntityWrapperCallback(new ProjectModuleUploadEntityWrapperCallback(behanceSDKPublishProjectServiceParamsDTO, behanceSDKPublishProjectStatusDTO, behanceRequestCancellationWrapper, i));
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest2 = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(strAppendQueryStringParam2, behanceMultipartEntity2, behanceRequestCancellationWrapper, strCheckExpiryAndGetAccessToken);
            if (type == ProjectModuleTypes.IMAGE && !file.equals(((ImageModule) projectModule).getFile())) {
                file.delete();
            } else if (type == ProjectModuleTypes.CREATIVECLOUD_ASSET) {
                projectModule.deleteFromFileSystem();
            }
            if (isActiveUploadCancelled()) {
                handleCancelAfterSuccessfulUpload(behanceSDKPublishedProjectDTO, behanceSDKPublishProjectServiceParamsDTO);
                behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.CANCELLED);
                return behanceSDKPublishProjectTaskResult;
            }
            if (behanceConnectionResponseInvokeHttpPostRequest2.getResponseCode() != 201) {
                deleteProject(strOptString, behanceSDKPublishProjectServiceParamsDTO, map);
                cleanupCreativeCloudResources(projectModules);
                behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.PUBLISH_FAILED);
                behanceSDKPublishProjectStatusDTO.setReasonPhrase(behanceConnectionResponseInvokeHttpPostRequest2.getResponseObject());
                broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
                behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.MODULE_ADD_FAILED);
                behanceSDKPublishProjectTaskResult.setFailedMoudle(projectModule);
                behanceSDKPublishProjectTaskResult.setReasonPhrase(behanceConnectionResponseInvokeHttpPostRequest2.getResponseObject());
                return behanceSDKPublishProjectTaskResult;
            }
        }
        String strReplace2 = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}", map).replace(PROJECTID_KEY, strOptString);
        String strAppendQueryStringParam3 = strCheckExpiryAndGetAccessToken != null ? BehanceSDKUrlUtil.appendQueryStringParam(strReplace2, "access_token", strCheckExpiryAndGetAccessToken) : strReplace2;
        BehanceMultipartEntity behanceMultipartEntity3 = new BehanceMultipartEntity();
        behanceMultipartEntity3.setBrowserCompatible(true);
        behanceMultipartEntity3.addTextPart("title", null, null, projectTitle.getBytes());
        String projectCreativeFields = behanceSDKPublishProjectServiceParamsDTO.getProjectCreativeFields();
        if (!TextUtils.isEmpty(projectCreativeFields)) {
            behanceMultipartEntity3.addTextPart("fields", null, null, projectCreativeFields.getBytes());
        }
        String projectTags = behanceSDKPublishProjectServiceParamsDTO.getProjectTags();
        if (!TextUtils.isEmpty(projectTags)) {
            behanceMultipartEntity3.addTextPart("tags", null, null, projectTags.getBytes());
        }
        behanceMultipartEntity3.addTextPart("description", null, null, behanceSDKPublishProjectServiceParamsDTO.getProjectDescription().getBytes());
        behanceMultipartEntity3.addTextPart("license", null, null, behanceSDKPublishProjectServiceParamsDTO.getProjectCopyright().getBytes());
        if (behanceSDKPublishProjectServiceParamsDTO.isProjectContainsAdultContent()) {
            str2 = PUBLISHED;
        } else {
            str2 = "0";
        }
        behanceMultipartEntity3.addTextPart("mature_content", null, null, str2.getBytes());
        behanceMultipartEntity3.addTextPart("published", null, null, PUBLISHED.getBytes());
        BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPutRequest = BehanceHttpsConnection.getInstance().invokeHttpPutRequest(strAppendQueryStringParam3, behanceMultipartEntity3, (BehanceRequestCancellationWrapper) null, strCheckExpiryAndGetAccessToken);
        if (behanceConnectionResponseInvokeHttpPutRequest.getResponseCode() == 200) {
            behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.SUCCESS);
            behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.MODULES_UPLOAD_SUCCESSFUL);
            behanceSDKPublishProjectStatusDTO.setProgressPercentage(getProgressPercentage(BehanceSDKPublishProjectProgressState.MODULES_UPLOAD_SUCCESSFUL, behanceSDKPublishProjectServiceParamsDTO));
            broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
        } else {
            deleteProject(strOptString, behanceSDKPublishProjectServiceParamsDTO, map);
            behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.PUBLISH_FAILED);
            behanceSDKPublishProjectStatusDTO.setReasonPhrase(behanceConnectionResponseInvokeHttpPutRequest.getResponseObject());
            broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
            behanceSDKPublishProjectTaskResult.setStatus(BehanceSDKPublishProjectTaskResult.PublishStatus.PUBLISH_FAILED);
            behanceSDKPublishProjectTaskResult.setReasonPhrase(behanceConnectionResponseInvokeHttpPutRequest.getResponseObject());
        }
        return behanceSDKPublishProjectTaskResult;
    }

    private void cleanupCreativeCloudResources(List<ProjectModule> list) {
        for (ProjectModule projectModule : list) {
            if (projectModule.getType() == ProjectModuleTypes.CREATIVECLOUD_ASSET) {
                projectModule.deleteFromFileSystem();
            }
        }
    }

    private void publishOnFacebook(BehanceSDKPublishedProjectDTO behanceSDKPublishedProjectDTO, BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO, BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO) {
        try {
            AccessToken accessTokenA = AccessToken.a();
            if (accessTokenA != null) {
                Bundle bundle = new Bundle();
                bundle.putString("name", behanceSDKPublishedProjectDTO.getProjectTitle());
                bundle.putString("link", behanceSDKPublishedProjectDTO.getProjectUrl());
                String projectImageUrl = behanceSDKPublishedProjectDTO.getProjectImageUrl();
                if (projectImageUrl != null && projectImageUrl.length() > 0) {
                    bundle.putString("picture", projectImageUrl);
                }
                s sVarA = new GraphRequest(accessTokenA, "me/feed", bundle, at.POST, null).i().a();
                if (sVarA != null) {
                    logger.debug("Problem sharing Project on Facebook [Message - %s]", sVarA.toString());
                    String strE = sVarA.e();
                    logger.error("Problem sharing Project on Facebook [Message - %s]", strE);
                    behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.SHARE_ON_FACEBOOK_FAILED);
                    behanceSDKPublishProjectStatusDTO.setReasonPhrase(strE);
                } else {
                    logger.debug("Successfully shared Project on Facebook", new Object[0]);
                    behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.SHARE_ON_FACEBOOK_SUCCESSFUL);
                }
            }
        } catch (Throwable th) {
            logger.error(th, "Problem sharing Project on Facebook", new Object[0]);
            behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.SHARE_ON_FACEBOOK_FAILED);
            behanceSDKPublishProjectStatusDTO.setException(th);
        }
        behanceSDKPublishProjectStatusDTO.setProgressPercentage(getProgressPercentage(behanceSDKPublishProjectStatusDTO.getProgressState(), behanceSDKPublishProjectServiceParamsDTO));
        broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
    }

    private void publishOnTwitter(BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO, BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO) {
        try {
            OAuthConsumer defaultOAuthConsumer = new DefaultOAuthConsumer(behanceSDKPublishProjectServiceParamsDTO.getTwitterConsumerKey(), behanceSDKPublishProjectServiceParamsDTO.getTwitterConsumerSecret());
            defaultOAuthConsumer.setTokenWithSecret(behanceSDKPublishProjectServiceParamsDTO.getTwitterUserAccessToken(), behanceSDKPublishProjectServiceParamsDTO.getTwitterUserAccessTokenSecret());
            String str = "https://api.twitter.com/1.1/statuses/update.json?status=" + URLEncoder.encode(getString(R.string.bsdk_publish_project_service_publish_on_twitter_msg, new Object[]{behanceSDKPublishProjectStatusDTO.getProjectUrl()}), "UTF-8");
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(str, null, null, defaultOAuthConsumer, behanceSDKPublishProjectServiceParamsDTO.getTwitterUserAccessToken());
            logger.debug("Share on Twitter URL is [URL - %s]", str);
            int responseCode = behanceConnectionResponseInvokeHttpPostRequest.getResponseCode();
            if (responseCode == 200) {
                logger.debug("Successfully shared Project on Twitter", new Object[0]);
                behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.SHARE_ON_TWITTER_SUCCESSFUL);
            } else if (responseCode == 401) {
                String responseObject = behanceConnectionResponseInvokeHttpPostRequest.getResponseObject();
                logger.error("Twitter User token has been revoked. [Error code - %s - message - %s]", Integer.valueOf(responseCode), responseObject);
                unlinkTwitterAccount();
                behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.SHARE_ON_TWITTER_FAILED);
                behanceSDKPublishProjectStatusDTO.setReasonPhrase(responseObject);
            } else {
                String responseObject2 = behanceConnectionResponseInvokeHttpPostRequest.getResponseObject();
                logger.error("Error sharing Project on Twitter. [Error code - %s - message - %s]", Integer.valueOf(responseCode), responseObject2);
                behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.SHARE_ON_TWITTER_FAILED);
                behanceSDKPublishProjectStatusDTO.setReasonPhrase(responseObject2);
            }
        } catch (Throwable th) {
            logger.error(th, "Error sharing Project on Twitter", new Object[0]);
            behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.SHARE_ON_TWITTER_FAILED);
            behanceSDKPublishProjectStatusDTO.setException(th);
        }
        behanceSDKPublishProjectStatusDTO.setProgressPercentage(getProgressPercentage(behanceSDKPublishProjectStatusDTO.getProgressState(), behanceSDKPublishProjectServiceParamsDTO));
        broadcastProgressUpdate(behanceSDKPublishProjectStatusDTO);
    }

    private void unlinkTwitterAccount() {
        BehanceSDKSocialAccountManager behanceSDKSocialAccountManager = BehanceSDKSocialAccountManager.getInstance();
        if (behanceSDKSocialAccountManager.getAccount(BehanceSDKSocialAccountType.TWITTER, this) != null) {
            behanceSDKSocialAccountManager.removeAccount(BehanceSDKSocialAccountType.TWITTER, this);
        }
    }

    private void broadcastUploadCancelledStatusUpdate() {
        logger.debug("Publish Project cancelled. Broadcasting message", new Object[0]);
        BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO = new BehanceSDKPublishProjectStatusDTO();
        behanceSDKPublishProjectStatusDTO.setPublishRequestId(this.activePublishRequestId);
        behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.CANCEL_PUBLISH_SUCCESSFUL);
        behanceSDKPublishProjectStatusDTO.setProgressPercentage(getProgressPercentage(BehanceSDKPublishProjectProgressState.CANCEL_PUBLISH_SUCCESSFUL, null));
        Intent intent = new Intent(BehanceSDKPublishProjectStatusDTO.INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST);
        intent.putExtra(BehanceSDKPublishProjectStatusDTO.INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA, behanceSDKPublishProjectStatusDTO);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastProgressUpdate(BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO) {
        if (!isActiveUploadCancelled()) {
            if (behanceSDKPublishProjectStatusDTO.getProgressState() == BehanceSDKPublishProjectProgressState.PUBLISH_SUCCESSFUL) {
                AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypePublishSuccess, AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetBehanceProject);
            } else if (behanceSDKPublishProjectStatusDTO.getProgressState() == BehanceSDKPublishProjectProgressState.PUBLISH_FAILED) {
                AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypePublishFailure, AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetBehanceProject);
            }
            Intent intent = new Intent(BehanceSDKPublishProjectStatusDTO.INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST);
            intent.putExtra(BehanceSDKPublishProjectStatusDTO.INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA, behanceSDKPublishProjectStatusDTO);
            behanceSDKPublishProjectStatusDTO.setPublishRequestId(this.activePublishRequestId);
            LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
        }
    }

    private void deleteProject(String str, BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO, Map<String, String> map) {
        try {
            String strReplace = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}", map).replace(PROJECTID_KEY, str);
            String strCheckExpiryAndGetAccessToken = this.sdkUserManager.checkExpiryAndGetAccessToken();
            if (strCheckExpiryAndGetAccessToken != null) {
                strReplace = BehanceSDKUrlUtil.appendQueryStringParam(strReplace, "access_token", strCheckExpiryAndGetAccessToken);
            }
            BehanceHttpsConnection.getInstance().invokeHttpDeleteRequest(strReplace, strCheckExpiryAndGetAccessToken);
        } catch (Throwable th) {
            logger.error(th, "Problem deleting project", new Object[0]);
        }
    }

    private void handleCancelAfterSuccessfulUpload(BehanceSDKPublishedProjectDTO behanceSDKPublishedProjectDTO, BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO) {
        BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO = new BehanceSDKPublishProjectStatusDTO();
        behanceSDKPublishProjectStatusDTO.setPublishRequestId(this.activePublishRequestId);
        behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.CANCEL_PUBLISH_SUCCESSFUL);
        behanceSDKPublishProjectStatusDTO.setProgressPercentage(getProgressPercentage(BehanceSDKPublishProjectProgressState.CANCEL_PUBLISH_SUCCESSFUL, behanceSDKPublishProjectServiceParamsDTO));
        try {
            cleanupCreativeCloudResources(behanceSDKPublishProjectServiceParamsDTO.getProjectModules());
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, behanceSDKPublishProjectServiceParamsDTO.getAppClientId());
            String strReplace = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}", map).replace(PROJECTID_KEY, behanceSDKPublishedProjectDTO.getProjectId());
            String strCheckExpiryAndGetAccessToken = this.sdkUserManager.checkExpiryAndGetAccessToken();
            if (strCheckExpiryAndGetAccessToken != null) {
                strReplace = BehanceSDKUrlUtil.appendQueryStringParam(strReplace, "access_token", strCheckExpiryAndGetAccessToken);
            }
            BehanceHttpsConnection.getInstance().invokeHttpDeleteRequest(strReplace, strCheckExpiryAndGetAccessToken);
        } catch (Throwable th) {
            logger.error(th, "Problem deleting project after cancel request", new Object[0]);
            behanceSDKPublishProjectStatusDTO.setProgressState(BehanceSDKPublishProjectProgressState.CANCEL_PUBLISH_FAILED);
            behanceSDKPublishProjectStatusDTO.setException(th);
        }
        Intent intent = new Intent(BehanceSDKPublishProjectStatusDTO.INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST);
        intent.putExtra(BehanceSDKPublishProjectStatusDTO.INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA, behanceSDKPublishProjectStatusDTO);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int convertModuleUploadProgressPercentage(BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO, int i, int i2) {
        int progressPercentage = getProgressPercentage(BehanceSDKPublishProjectProgressState.PROJECT_DRAFT_CREATION_SUCCESSFUL, behanceSDKPublishProjectServiceParamsDTO);
        int progressPercentage2 = (getProgressPercentage(BehanceSDKPublishProjectProgressState.MODULES_UPLOAD_SUCCESSFUL, behanceSDKPublishProjectServiceParamsDTO) - progressPercentage) / behanceSDKPublishProjectServiceParamsDTO.getProjectModules().size();
        return progressPercentage + ((i - 1) * progressPercentage2) + ((progressPercentage2 * i2) / 100);
    }

    private int getProgressPercentage(BehanceSDKPublishProjectProgressState behanceSDKPublishProjectProgressState, BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO) {
        switch (behanceSDKPublishProjectProgressState) {
            case PUBLISH_STARTED:
                return 10;
            case PROJECT_DRAFT_CREATION_SUCCESSFUL:
                return 20;
            case MODULES_UPLOAD_SUCCESSFUL:
                if (behanceSDKPublishProjectServiceParamsDTO.isShareOnFacebook() && behanceSDKPublishProjectServiceParamsDTO.isShareOnTwitter()) {
                    return 70;
                }
                return (behanceSDKPublishProjectServiceParamsDTO.isShareOnFacebook() || behanceSDKPublishProjectServiceParamsDTO.isShareOnTwitter()) ? 80 : 90;
            case SHARE_ON_FACEBOOK_SUCCESSFUL:
            case SHARE_ON_FACEBOOK_FAILED:
                return behanceSDKPublishProjectServiceParamsDTO.isShareOnTwitter() ? 80 : 90;
            case SHARE_ON_TWITTER_SUCCESSFUL:
            case SHARE_ON_TWITTER_FAILED:
                return 90;
            case PUBLISH_FAILED:
            case CANCEL_PUBLISH_SUCCESSFUL:
            case CANCEL_PUBLISH_FAILED:
            case PUBLISH_SUCCESSFUL:
                return 100;
            default:
                return 0;
        }
    }

    class ProjectModuleUploadEntityWrapperCallback implements BehanceMultipartEntityWrapper {
        private final BehanceRequestCancellationWrapper cancellationWrapper;
        private int lastBroadcastedProgressPercentage;
        private final BehanceSDKPublishProjectServiceParamsDTO serviceParams;
        private final BehanceSDKPublishProjectStatusDTO statusDTO;
        private final int uploadedModulesCount;

        private ProjectModuleUploadEntityWrapperCallback(BehanceSDKPublishProjectServiceParamsDTO behanceSDKPublishProjectServiceParamsDTO, BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO, BehanceRequestCancellationWrapper behanceRequestCancellationWrapper, int i) {
            this.lastBroadcastedProgressPercentage = 0;
            this.serviceParams = behanceSDKPublishProjectServiceParamsDTO;
            this.uploadedModulesCount = i;
            this.cancellationWrapper = behanceRequestCancellationWrapper;
            this.statusDTO = behanceSDKPublishProjectStatusDTO;
        }

        @Override // com.behance.sdk.network.BehanceMultipartEntityWrapper
        public void onUploadProgressUpdate(float f2) {
            int i = (int) f2;
            if (i % 10 == 0 && this.lastBroadcastedProgressPercentage != i) {
                this.lastBroadcastedProgressPercentage = i;
                if (i < 100) {
                    this.statusDTO.setProgressState(BehanceSDKPublishProjectProgressState.MODULES_UPLOAD_IN_PROGRESS);
                    this.statusDTO.setProgressPercentage(BehanceSDKPublishProjectService.this.convertModuleUploadProgressPercentage(this.serviceParams, this.uploadedModulesCount, this.lastBroadcastedProgressPercentage));
                    BehanceSDKPublishProjectService.this.broadcastProgressUpdate(this.statusDTO);
                    if (BehanceSDKPublishProjectService.this.isActiveUploadCancelled()) {
                        this.cancellationWrapper.setCancelled();
                    }
                }
            }
        }
    }
}
