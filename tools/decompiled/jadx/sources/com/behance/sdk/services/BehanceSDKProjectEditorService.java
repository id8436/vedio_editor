package com.behance.sdk.services;

import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.support.v4.util.ArrayMap;
import com.adobe.customextractor.Constants;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.IBehanceSDKProjectPublishListener;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKPublishedProjectDTO;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleCaptionable;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleCollection;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleEmbed;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleEmbedTransformed;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleImage;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleText;
import com.behance.sdk.dto.editor.BehanceSDKEditorProjectDTO;
import com.behance.sdk.dto.editor.BehanceSDKModulePrepareDTO;
import com.behance.sdk.dto.editor.BehanceSDKProjectPublishDTO;
import com.behance.sdk.dto.parser.BehanceSDKProjectDTOParser;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.exception.BehanceSDKUserNotAuthenticatedException;
import com.behance.sdk.listeners.BehanceSDKProjectEditorServiceCallbacks;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.network.BehanceMultipartEntity;
import com.behance.sdk.network.BehanceRequestCancellationWrapper;
import com.behance.sdk.receivers.BehanceSDKInternetChangeReceiver;
import com.behance.sdk.s3.BehanceS3Uploader;
import com.behance.sdk.s3.BehanceS3UtilCallbacks;
import com.behance.sdk.util.BehanceSDKColorUtils;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.behance.sdk.util.BehanceSDKUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKProjectEditorService extends Service implements BehanceSDKInternetChangeReceiver.Callbacks, BehanceS3UtilCallbacks {
    private static final int ACTION_CANCEL_REQUEST_CODE = 2001;
    private static final String INTENT_ACTION_CANCEL = "INTENT_ACTION_CANCEL";
    private static final int NOTIFICATION_ID_PUBLISHED = 1002;
    private static final int NOTIFICATION_ID_PUBLISHING = 1001;
    private String accessToken;
    private BehanceS3Uploader behanceS3Uploader;
    private BehanceSDKProjectEditorServiceCallbacks callbacks;
    private String clientId;
    private ConnectivityManager connectivityManager;
    private CountDownLatch latch;
    private Class<? extends Activity> notificationHandlerActivity;
    private NotificationManager notificationManager;
    private ExecutorService pool;
    private String projectId;
    private BehanceSDKProjectPublishDTO projectPublishDTO;
    private IBehanceSDKProjectPublishListener projectPublishListener;
    private BehanceSDKInternetChangeReceiver receiver;
    private Map<Integer, BehanceSDKEditProjectModuleEmbedTransformed> transformedEmbeds;
    private Map<Integer, String> uploadedFiles;
    private final IBinder mBinder = new ProjectEditorBinder();
    private PublishState publishState = PublishState.NOT_STARTED;
    private Runnable onNetworkReacquiredRunnable = null;
    private boolean newProject = true;

    enum PublishState {
        NOT_STARTED,
        CREATING_DRAFT,
        WAITING_FOR_UPLOADS,
        PUBLISHING_DRAFT,
        PUBLISHED_SUCCESSFULLY,
        PUBLISH_FAILED,
        PUBLISH_CANCELLED
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        init();
        if (intent != null && intent.getAction() != null && intent.getAction().equals(INTENT_ACTION_CANCEL)) {
            this.notificationManager.cancelAll();
            this.publishState = PublishState.PUBLISH_CANCELLED;
            if (this.behanceS3Uploader != null) {
                this.behanceS3Uploader.cancel();
            }
            while (this.latch.getCount() > 0) {
                this.latch.countDown();
            }
            return 1;
        }
        return 1;
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.pool.shutdown();
        if (this.receiver != null) {
            unregisterReceiver(this.receiver);
        }
    }

    private void init() {
        this.clientId = BehanceSDK.getInstance().getClientId();
        if (this.accessToken == null) {
            try {
                this.accessToken = BehanceSDKUserManager.getInstance().checkExpiryAndGetAccessToken();
            } catch (BehanceSDKUserNotAuthenticatedException e2) {
                e2.printStackTrace();
            }
        }
        if (this.uploadedFiles == null) {
            this.uploadedFiles = new ArrayMap();
        }
        if (this.transformedEmbeds == null) {
            this.transformedEmbeds = new ArrayMap();
        }
        if (this.latch == null) {
            this.latch = new CountDownLatch(0);
        }
        if (this.pool == null) {
            this.pool = Executors.newSingleThreadExecutor();
        }
        if (this.notificationManager == null) {
            this.notificationManager = (NotificationManager) getSystemService("notification");
        }
        if (this.connectivityManager == null) {
            this.connectivityManager = (ConnectivityManager) getSystemService("connectivity");
            if (Build.VERSION.SDK_INT >= 21) {
                this.connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), new ConnectivityManager.NetworkCallback() { // from class: com.behance.sdk.services.BehanceSDKProjectEditorService.1
                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onAvailable(Network network) {
                        super.onAvailable(network);
                        BehanceSDKProjectEditorService.this.onInternetConnectionChanged(true);
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onLost(Network network) {
                        super.onLost(network);
                        BehanceSDKProjectEditorService.this.onInternetConnectionChanged(false);
                    }
                });
                return;
            }
            if (this.receiver == null) {
                this.receiver = new BehanceSDKInternetChangeReceiver();
            }
            this.receiver.setCallbacks(this);
            registerReceiver(this.receiver, new IntentFilter("connectivity"));
        }
    }

    public void uploadFile(BehanceSDKModulePrepareDTO behanceSDKModulePrepareDTO) {
        if (behanceSDKModulePrepareDTO != null) {
            this.latch = new CountDownLatch((int) (this.latch.getCount() + 1));
            this.behanceS3Uploader = new BehanceS3Uploader(this, behanceSDKModulePrepareDTO.getId(), behanceSDKModulePrepareDTO.getData(), this);
            this.behanceS3Uploader.upload();
        }
    }

    public void transformEmbed(final BehanceSDKModulePrepareDTO behanceSDKModulePrepareDTO) {
        executeNetworkRunnable(new Runnable() { // from class: com.behance.sdk.services.BehanceSDKProjectEditorService.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HashMap map = new HashMap();
                    map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, BehanceSDKProjectEditorService.this.clientId);
                    String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.TRANSFROM_EMBED, map);
                    BehanceMultipartEntity behanceMultipartEntity = new BehanceMultipartEntity();
                    behanceMultipartEntity.setBrowserCompatible(true);
                    behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_EMBED, behanceSDKModulePrepareDTO.getData().getBytes());
                    BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(urlFromTemplate, behanceMultipartEntity, (BehanceRequestCancellationWrapper) null, BehanceSDKProjectEditorService.this.accessToken);
                    if (behanceConnectionResponseInvokeHttpPostRequest.getResponseCode() != 200) {
                        if (BehanceSDKProjectEditorService.this.callbacks != null) {
                            BehanceSDKProjectEditorService.this.callbacks.onEmbedTransformFailed(behanceSDKModulePrepareDTO.getId());
                        }
                    } else {
                        JSONObject jSONObject = new JSONObject(behanceConnectionResponseInvokeHttpPostRequest.getResponseObject());
                        BehanceSDKEditProjectModuleEmbedTransformed behanceSDKEditProjectModuleEmbedTransformed = new BehanceSDKEditProjectModuleEmbedTransformed();
                        behanceSDKEditProjectModuleEmbedTransformed.setHtml(jSONObject.optString("original_embed"));
                        behanceSDKEditProjectModuleEmbedTransformed.setOriginalHeight(jSONObject.optInt(BehanceSDKPublishConstants.KEY_ORIGINAL_HEIGHT));
                        behanceSDKEditProjectModuleEmbedTransformed.setOriginalWidth(jSONObject.optInt(BehanceSDKPublishConstants.KEY_ORIGINAL_WIDTH));
                        behanceSDKEditProjectModuleEmbedTransformed.setWidthUnit(jSONObject.optString(BehanceSDKPublishConstants.KEY_WIDTH_UNIT));
                        BehanceSDKProjectEditorService.this.transformedEmbeds.put(Integer.valueOf(behanceSDKModulePrepareDTO.getId()), behanceSDKEditProjectModuleEmbedTransformed);
                    }
                } catch (IOException | JSONException e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public void publishProject(BehanceSDKProjectPublishDTO behanceSDKProjectPublishDTO) {
        this.projectPublishDTO = behanceSDKProjectPublishDTO;
        this.publishState = PublishState.CREATING_DRAFT;
        if (isNetworkConnected()) {
            showPublishInProgressNotification(true);
        } else {
            showPublishPausedNotification();
        }
        runOrQueueTask(publishProjectStepOne());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOrQueueTask(Runnable runnable) {
        if (isNetworkConnected()) {
            executeNetworkRunnable(runnable);
        } else {
            this.onNetworkReacquiredRunnable = runnable;
        }
    }

    private boolean isNetworkConnected() {
        return this.connectivityManager.getActiveNetworkInfo() != null && this.connectivityManager.getActiveNetworkInfo().isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePublishFailure(@Nullable String str) {
        this.notificationManager.cancel(1001);
        showPublishFailedNotification(str);
        broadcastPublishFailure(new BehanceSDKException());
        stopSelf();
    }

    private Runnable publishProjectStepOne() {
        return new Runnable() { // from class: com.behance.sdk.services.BehanceSDKProjectEditorService.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (BehanceSDKProjectEditorService.this.projectId == null) {
                        HashMap map = new HashMap();
                        map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, BehanceSDKProjectEditorService.this.clientId);
                        BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.PROJECT_CREATE_URL, map), BehanceSDKProjectEditorService.this.accessToken);
                        if (behanceConnectionResponseInvokeHttpPostRequest.getResponseCode() == 201) {
                            BehanceSDKProjectEditorService.this.projectId = new JSONObject(behanceConnectionResponseInvokeHttpPostRequest.getResponseObject()).optJSONObject("project").optString("id");
                        } else {
                            BehanceSDKProjectEditorService.this.publishState = PublishState.PUBLISH_FAILED;
                        }
                    }
                } catch (IOException | JSONException e2) {
                    e2.printStackTrace();
                    BehanceSDKProjectEditorService.this.publishState = PublishState.PUBLISH_FAILED;
                }
                if (BehanceSDKProjectEditorService.this.publishState == PublishState.PUBLISH_FAILED) {
                    BehanceSDKProjectEditorService.this.handlePublishFailure(null);
                } else if (BehanceSDKProjectEditorService.this.publishState == PublishState.PUBLISH_CANCELLED) {
                    if (BehanceSDKProjectEditorService.this.newProject) {
                        BehanceSDKProjectEditorService.this.deleteDraft();
                        return;
                    }
                    return;
                }
                BehanceSDKProjectEditorService.this.publishState = PublishState.WAITING_FOR_UPLOADS;
                try {
                    BehanceSDKProjectEditorService.this.latch.await();
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                }
                if (BehanceSDKProjectEditorService.this.publishState == PublishState.PUBLISH_CANCELLED) {
                    if (BehanceSDKProjectEditorService.this.newProject) {
                        BehanceSDKProjectEditorService.this.deleteDraft();
                        return;
                    }
                    return;
                }
                BehanceSDKProjectEditorService.this.runOrQueueTask(BehanceSDKProjectEditorService.this.publishProjectStepTwo());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable publishProjectStepTwo() {
        return new Runnable() { // from class: com.behance.sdk.services.BehanceSDKProjectEditorService.4
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                String strOptString;
                BehanceSDKProjectEditorService.this.publishState = PublishState.PUBLISHING_DRAFT;
                try {
                    try {
                        HashMap map = new HashMap();
                        map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, BehanceSDKProjectEditorService.this.clientId);
                        map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, BehanceSDKProjectEditorService.this.projectId);
                        String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}", map);
                        if (BehanceSDKProjectEditorService.this.publishState == PublishState.PUBLISH_CANCELLED) {
                            if (BehanceSDKProjectEditorService.this.newProject) {
                                BehanceSDKProjectEditorService.this.deleteDraft();
                                return;
                            }
                            return;
                        }
                        BehanceSDKProjectEditorService.this.showPublishInProgressNotification(false);
                        BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPatchRequest = BehanceHttpsConnection.getInstance().invokeHttpPatchRequest(urlFromTemplate, BehanceSDKProjectEditorService.this.createProjectMultipartEntity(), null, BehanceSDKProjectEditorService.this.accessToken);
                        BehanceSDKProjectEditorService.this.notificationManager.cancel(1001);
                        if (behanceConnectionResponseInvokeHttpPatchRequest.getResponseCode() != 200) {
                            BehanceSDKProjectEditorService.this.publishState = PublishState.PUBLISH_FAILED;
                            try {
                                strOptString = new JSONObject(behanceConnectionResponseInvokeHttpPatchRequest.getResponseObject()).optString("message");
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                                strOptString = null;
                            }
                            BehanceSDKProjectEditorService.this.handlePublishFailure(strOptString);
                            return;
                        }
                        BehanceSDKProjectEditorService.this.publishState = PublishState.PUBLISHED_SUCCESSFULLY;
                        if (!BehanceSDKProjectEditorService.this.projectPublishDTO.isPublish()) {
                            BehanceSDKProjectEditorService.this.notificationManager.cancelAll();
                        } else {
                            try {
                                BehanceSDKPublishedProjectDTO behanceSDKPublishedProjectDTO = new BehanceSDKPublishedProjectDTO();
                                JSONObject jSONObjectOptJSONObject = new JSONObject(behanceConnectionResponseInvokeHttpPatchRequest.getResponseObject()).optJSONObject("project");
                                behanceSDKPublishedProjectDTO.setProjectId(jSONObjectOptJSONObject.optString("id"));
                                behanceSDKPublishedProjectDTO.setProjectImageUrl(jSONObjectOptJSONObject.optJSONObject("covers").optString("404"));
                                behanceSDKPublishedProjectDTO.setProjectTitle(jSONObjectOptJSONObject.optString("name"));
                                behanceSDKPublishedProjectDTO.setProjectUrl(jSONObjectOptJSONObject.optString("url"));
                                BehanceSDKProjectEditorService.this.showPublishSuccessNotification(behanceSDKPublishedProjectDTO);
                                BehanceSDKProjectEditorService.this.broadcastPublishSuccess(behanceSDKPublishedProjectDTO.getProjectId());
                            } catch (JSONException e3) {
                                e3.printStackTrace();
                                BehanceSDKProjectEditorService.this.notificationManager.cancelAll();
                            }
                        }
                        BehanceSDKProjectEditorService.this.stopSelf();
                    } catch (JSONException e4) {
                        e = e4;
                        e.printStackTrace();
                        BehanceSDKProjectEditorService.this.publishState = PublishState.PUBLISH_FAILED;
                        BehanceSDKProjectEditorService.this.handlePublishFailure(null);
                    }
                } catch (IOException e5) {
                    e = e5;
                    e.printStackTrace();
                    BehanceSDKProjectEditorService.this.publishState = PublishState.PUBLISH_FAILED;
                    BehanceSDKProjectEditorService.this.handlePublishFailure(null);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BehanceMultipartEntity createProjectMultipartEntity() throws JSONException {
        BehanceMultipartEntity behanceMultipartEntity = new BehanceMultipartEntity();
        behanceMultipartEntity.setBrowserCompatible(true);
        BehanceSDKEditorProjectDTO project = this.projectPublishDTO.getProject();
        behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_MODULES, buildModulesJSONString(project.getModules()).getBytes());
        behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_PUBLISHED, (this.projectPublishDTO.isPublish() ? "1" : "0").getBytes());
        behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_MATURE_CONTENT, (project.isMatureContent() ? "1" : "0").getBytes());
        behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_COMMENTS_ALLOWED, (project.isAllowComments() ? "1" : "0").getBytes());
        if (project.getName() != null) {
            behanceMultipartEntity.addTextPart("title", project.getName().getBytes());
        }
        if (this.uploadedFiles.containsKey(100)) {
            behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_COVER_URL, this.uploadedFiles.get(100).getBytes());
        }
        if (project.getFields() != null && !project.getFields().isEmpty() && !project.getFields().get(0).getId().isEmpty()) {
            behanceMultipartEntity.addTextPart("fields", BehanceSDKUtils.getPipeDelineatedIds(project.getFields()).getBytes());
        }
        if (project.getTags() != null && !project.getTags().isEmpty()) {
            behanceMultipartEntity.addTextPart("tags", BehanceSDKUtils.getPipeDelineatedIds(project.getTags()).getBytes());
        }
        if (project.getDescription() != null) {
            behanceMultipartEntity.addTextPart("description", project.getDescription().getBytes());
        }
        if (project.getCopyright() != null) {
            behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_LICENSE, project.getCopyright().getValue().getBytes());
        }
        if (project.getTools() != null && !project.getTools().isEmpty()) {
            behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_TOOLS, BehanceSDKUtils.getPipeDelineatedIds(project.getTools()).getBytes());
        }
        if (project.getCredits() != null && !project.getCredits().isEmpty()) {
            behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_CREDITS, BehanceSDKUtils.getPipeDelineatedIds(project.getCredits()).getBytes());
        }
        if (project.getOwners() != null && !project.getOwners().isEmpty()) {
            behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_COOWNERS, BehanceSDKUtils.getPipeDelineatedIds(project.getOwners()).getBytes());
        }
        if (project.getTeams() != null && !project.getTeams().isEmpty()) {
            behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_TEAMS, BehanceSDKUtils.getPipeDelineatedIds(project.getTeams()).getBytes());
        }
        behanceMultipartEntity.addTextPart(BehanceSDKPublishConstants.KEY_BACKGROUND_COLOR, BehanceSDKColorUtils.getHexColorString(project.getBackgroundColor()).getBytes());
        return behanceMultipartEntity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPublishSuccessNotification(BehanceSDKPublishedProjectDTO behanceSDKPublishedProjectDTO) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(getApplicationContext());
        builder.setColor(BehanceSDK.getInstance().getBehanceSDKCustomResourcesOptions().getAppColor());
        builder.setSmallIcon(R.drawable.bsdk_icon_notification_publish_progress);
        builder.setContentTitle(getString(R.string.bsdk_publish_project_service_success_notification_title));
        builder.setContentText(getString(R.string.bsdk_publish_project_service_success_notification_text));
        builder.setTicker(getString(R.string.bsdk_publish_project_service_success_notification_ticker));
        builder.setStyle(new NotificationCompat.BigTextStyle().bigText(getString(R.string.bsdk_publish_project_service_success_notification_text)));
        builder.setAutoCancel(true);
        if (this.notificationHandlerActivity != null) {
            Intent intentCreateNotifyIntent = createNotifyIntent();
            intentCreateNotifyIntent.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_BOOL_EXTRA_PUBLISHED_PROJECT_SUCCESSFULLY", true);
            intentCreateNotifyIntent.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_ID", behanceSDKPublishedProjectDTO.getProjectId());
            intentCreateNotifyIntent.putExtra("BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_TITLE", behanceSDKPublishedProjectDTO.getProjectTitle());
            builder.setContentIntent(createPendingIntent(intentCreateNotifyIntent));
        } else {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(behanceSDKPublishedProjectDTO.getProjectUrl()));
            builder.setContentIntent(PendingIntent.getActivity(getApplicationContext(), 0, intent, Constants.SAMPLE_FLAG_DECODE_ONLY));
        }
        this.notificationManager.notify(1002, builder.build());
    }

    private void showPublishFailedNotification(@Nullable String str) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(getApplicationContext());
        builder.setColor(BehanceSDK.getInstance().getBehanceSDKCustomResourcesOptions().getAppColor());
        builder.setSmallIcon(R.drawable.bsdk_icon_notification_publish_progress);
        builder.setAutoCancel(true);
        if (str == null || str.isEmpty()) {
            builder.setContentText(getString(R.string.bsdk_publish_project_service_unknown_failure_notification_msg));
            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(getString(R.string.bsdk_publish_project_service_unknown_failure_notification_msg)));
        } else {
            builder.setContentText(getString(R.string.bsdk_publish_project_service_failure_notification_msg, new Object[]{str}));
            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(getString(R.string.bsdk_publish_project_service_failure_notification_msg)));
        }
        builder.setContentTitle(getString(R.string.bsdk_publish_project_service_failure_notification_title));
        builder.setTicker(getString(R.string.bsdk_publish_project_service_failure_notification_ticker));
        this.notificationManager.notify(1002, builder.build());
    }

    private void showPublishPausedNotification() {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(getApplicationContext());
        builder.setColor(BehanceSDK.getInstance().getBehanceSDKCustomResourcesOptions().getAppColor());
        builder.setContentTitle(getString(R.string.bsdk_publish_project_service_in_progress_notification_title));
        builder.setContentText(getString(R.string.bsdk_publish_project_service_paused_notification_text));
        builder.setTicker(getString(R.string.bsdk_publish_project_service_paused_notification_ticker));
        builder.setStyle(new NotificationCompat.BigTextStyle().bigText(getString(R.string.bsdk_publish_project_service_paused_notification_text)));
        builder.setSmallIcon(R.drawable.bsdk_publish_in_progress_anim0);
        builder.setAutoCancel(true);
        builder.setOngoing(false);
        this.notificationManager.notify(1001, builder.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPublishInProgressNotification(boolean z) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(getApplicationContext());
        builder.setProgress(0, 0, true);
        builder.setColor(BehanceSDK.getInstance().getBehanceSDKCustomResourcesOptions().getAppColor());
        builder.setContentTitle(getString(R.string.bsdk_publish_project_service_in_progress_notification_title));
        builder.setContentText(getString(R.string.bsdk_publish_project_service_in_progress_notification_text));
        builder.setStyle(new NotificationCompat.BigTextStyle().bigText(getString(R.string.bsdk_publish_project_service_in_progress_notification_text)));
        builder.setSmallIcon(R.drawable.bsdk_anim_list_publish_in_progress_indicator);
        builder.setOngoing(true);
        if (z) {
            Intent intent = new Intent(getBaseContext(), getClass());
            intent.setAction(INTENT_ACTION_CANCEL);
            builder.addAction(R.drawable.bsdk_icon_cancel, getResources().getString(R.string.bsdk_cancel), PendingIntent.getService(getBaseContext(), 2001, intent, Constants.SAMPLE_FLAG_DECODE_ONLY));
        }
        this.notificationManager.notify(1001, builder.build());
    }

    @Override // com.behance.sdk.receivers.BehanceSDKInternetChangeReceiver.Callbacks
    public void onInternetConnectionChanged(boolean z) {
        switch (this.publishState) {
            case NOT_STARTED:
            case PUBLISHED_SUCCESSFULLY:
            case PUBLISH_FAILED:
            case PUBLISH_CANCELLED:
                this.notificationManager.cancel(1001);
                break;
            case CREATING_DRAFT:
            case WAITING_FOR_UPLOADS:
            case PUBLISHING_DRAFT:
                if (z) {
                    showPublishInProgressNotification(true);
                } else {
                    showPublishPausedNotification();
                }
                break;
        }
        if (this.onNetworkReacquiredRunnable != null && z) {
            executeNetworkRunnable(this.onNetworkReacquiredRunnable);
            this.onNetworkReacquiredRunnable = null;
        }
    }

    private String buildModulesJSONString(List<BehanceSDKEditProjectModuleAbstract> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract : list) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", behanceSDKEditProjectModuleAbstract.getId());
            jSONObject.put("type", behanceSDKEditProjectModuleAbstract.getModuleType().name().toLowerCase());
            if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleImage) {
                BehanceSDKEditProjectModuleImage behanceSDKEditProjectModuleImage = (BehanceSDKEditProjectModuleImage) behanceSDKEditProjectModuleAbstract;
                jSONObject.put(BehanceSDKPublishConstants.KEY_FULL_BLEED, behanceSDKEditProjectModuleImage.isFullBleed() ? "1" : "0");
                if (behanceSDKEditProjectModuleImage.isNewModule()) {
                    jSONObject.put(BehanceSDKPublishConstants.KEY_SOURCE_URL, this.uploadedFiles.get(Integer.valueOf(behanceSDKEditProjectModuleImage.getId())));
                } else {
                    jSONObject.put(BehanceSDKPublishConstants.KEY_SOURCE_URL, behanceSDKEditProjectModuleImage.getSrc());
                }
                if (behanceSDKEditProjectModuleImage.getCaption() != null && !behanceSDKEditProjectModuleImage.getCaption().isEmpty() && behanceSDKEditProjectModuleImage.getCaptionAlignment() != null) {
                    jSONObject.put(BehanceSDKPublishConstants.KEY_CAPTION, behanceSDKEditProjectModuleImage.getCaption());
                    jSONObject.put(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT, behanceSDKEditProjectModuleImage.getCaptionAlignment().toString().toLowerCase());
                }
            } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleText) {
                BehanceSDKEditProjectModuleText behanceSDKEditProjectModuleText = (BehanceSDKEditProjectModuleText) behanceSDKEditProjectModuleAbstract;
                if (behanceSDKEditProjectModuleText.getTextAlignment() != null) {
                    jSONObject.put(BehanceSDKPublishConstants.KEY_ALIGNMENT, behanceSDKEditProjectModuleText.getTextAlignment().toString().toLowerCase());
                }
                jSONObject.put(BehanceSDKPublishConstants.KEY_HTML, behanceSDKEditProjectModuleText.getHtml());
            } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleEmbed) {
                BehanceSDKEditProjectModuleEmbedTransformed behanceSDKEditProjectModuleEmbedTransformed = null;
                if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleEmbedTransformed) {
                    behanceSDKEditProjectModuleEmbedTransformed = (BehanceSDKEditProjectModuleEmbedTransformed) behanceSDKEditProjectModuleAbstract;
                } else if (this.transformedEmbeds.containsKey(Integer.valueOf(behanceSDKEditProjectModuleAbstract.getId()))) {
                    behanceSDKEditProjectModuleEmbedTransformed = this.transformedEmbeds.get(Integer.valueOf(behanceSDKEditProjectModuleAbstract.getId()));
                }
                if (behanceSDKEditProjectModuleEmbedTransformed != null) {
                    jSONObject.put(BehanceSDKPublishConstants.KEY_HTML, behanceSDKEditProjectModuleEmbedTransformed.getHtml());
                    jSONObject.put(BehanceSDKPublishConstants.KEY_WIDTH_UNIT, behanceSDKEditProjectModuleEmbedTransformed.getWidthUnit());
                    jSONObject.put(BehanceSDKPublishConstants.KEY_ORIGINAL_HEIGHT, behanceSDKEditProjectModuleEmbedTransformed.getOriginalHeight());
                    jSONObject.put(BehanceSDKPublishConstants.KEY_ORIGINAL_WIDTH, behanceSDKEditProjectModuleEmbedTransformed.getOriginalWidth());
                    jSONObject.put(BehanceSDKPublishConstants.KEY_FULL_BLEED, ((BehanceSDKEditProjectModuleEmbed) behanceSDKEditProjectModuleAbstract).isFullBleed() ? "1" : "0");
                    if (behanceSDKEditProjectModuleEmbedTransformed.getCaption() != null && !behanceSDKEditProjectModuleEmbedTransformed.getCaption().isEmpty() && behanceSDKEditProjectModuleEmbedTransformed.getCaptionAlignment() != null) {
                        jSONObject.put(BehanceSDKPublishConstants.KEY_CAPTION, behanceSDKEditProjectModuleEmbedTransformed.getCaption());
                        jSONObject.put(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT, behanceSDKEditProjectModuleEmbedTransformed.getCaptionAlignment().toString().toLowerCase());
                    }
                }
            } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleCollection) {
                BehanceSDKEditProjectModuleCollection behanceSDKEditProjectModuleCollection = (BehanceSDKEditProjectModuleCollection) behanceSDKEditProjectModuleAbstract;
                jSONObject.put(BehanceSDKPublishConstants.KEY_FULL_BLEED, behanceSDKEditProjectModuleCollection.isFullBleed() ? "1" : "0");
                jSONObject.put(BehanceSDKPublishConstants.KEY_SORT_TYPE, behanceSDKEditProjectModuleCollection.getSortType());
                jSONObject.put(BehanceSDKPublishConstants.KEY_COLLECTION_TYPE, behanceSDKEditProjectModuleCollection.getCollectionType());
                jSONObject.put("components", behanceSDKEditProjectModuleCollection.getComponents());
                if (behanceSDKEditProjectModuleCollection.getCaption() != null && !behanceSDKEditProjectModuleCollection.getCaption().isEmpty() && behanceSDKEditProjectModuleCollection.getCaptionAlignment() != null) {
                    jSONObject.put(BehanceSDKPublishConstants.KEY_CAPTION, behanceSDKEditProjectModuleCollection.getCaption());
                    jSONObject.put(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT, behanceSDKEditProjectModuleCollection.getCaptionAlignment().toString().toLowerCase());
                }
            } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleCaptionable) {
                BehanceSDKEditProjectModuleCaptionable behanceSDKEditProjectModuleCaptionable = (BehanceSDKEditProjectModuleCaptionable) behanceSDKEditProjectModuleAbstract;
                jSONObject.put(BehanceSDKPublishConstants.KEY_SOURCE_URL, this.uploadedFiles.get(Integer.valueOf(behanceSDKEditProjectModuleAbstract.getId())));
                if (behanceSDKEditProjectModuleCaptionable.getCaption() != null && !behanceSDKEditProjectModuleCaptionable.getCaption().isEmpty() && behanceSDKEditProjectModuleCaptionable.getCaptionAlignment() != null) {
                    jSONObject.put(BehanceSDKPublishConstants.KEY_CAPTION, behanceSDKEditProjectModuleCaptionable.getCaption());
                    jSONObject.put(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT, behanceSDKEditProjectModuleCaptionable.getCaptionAlignment().toString().toLowerCase());
                }
            }
            jSONArray.put(jSONObject);
        }
        return jSONArray.toString();
    }

    public void deleteDraft() {
        if (this.projectId != null) {
            executeNetworkRunnable(new Runnable() { // from class: com.behance.sdk.services.BehanceSDKProjectEditorService.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HashMap map = new HashMap();
                        map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, BehanceSDKProjectEditorService.this.clientId);
                        map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, BehanceSDKProjectEditorService.this.projectId);
                        if (BehanceHttpsConnection.getInstance().invokeHttpDeleteRequest(BehanceSDKUrlUtil.getUrlFromTemplate("{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}", map), BehanceSDKProjectEditorService.this.accessToken).getResponseCode() != 200) {
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    BehanceSDKProjectEditorService.this.stopSelf();
                }
            });
        }
    }

    @Override // com.behance.sdk.s3.BehanceS3UtilCallbacks
    public void onUploadComplete(String str, int i) {
        this.uploadedFiles.put(Integer.valueOf(i), str);
        this.latch.countDown();
    }

    @Override // com.behance.sdk.s3.BehanceS3UtilCallbacks
    public void onUploadError(Exception exc, int i) {
        if (this.callbacks != null) {
            this.callbacks.onFileUploadFailed(i);
        }
        this.latch.countDown();
    }

    @Override // com.behance.sdk.s3.BehanceS3UtilCallbacks
    public void onUploadProgress(float f2, int i) {
    }

    private void executeNetworkRunnable(Runnable runnable) {
        this.pool.submit(runnable);
    }

    public void setCallbacks(BehanceSDKProjectEditorServiceCallbacks behanceSDKProjectEditorServiceCallbacks) {
        this.callbacks = behanceSDKProjectEditorServiceCallbacks;
    }

    public void loadProject(String str) {
        if (this.projectId == null) {
            this.projectId = str;
            this.newProject = false;
            executeNetworkRunnable(new Runnable() { // from class: com.behance.sdk.services.BehanceSDKProjectEditorService.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HashMap map = new HashMap();
                        map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, BehanceSDKProjectEditorService.this.clientId);
                        map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, BehanceSDKProjectEditorService.this.projectId);
                        BehanceSDKEditorProjectDTO editorProject = BehanceSDKProjectDTOParser.parseEditorProject(new JSONObject(BehanceHttpsConnection.getInstance().invokeHttpGetRequest(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_PROJECT_API_URL, map), BehanceSDKProjectEditorService.this.accessToken).getResponseObject()).optJSONObject("project"));
                        if (BehanceSDKProjectEditorService.this.callbacks != null) {
                            BehanceSDKProjectEditorService.this.callbacks.onProjectLoaded(editorProject);
                        }
                    } catch (IOException | JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            });
        }
    }

    public void setProjectPublishListener(IBehanceSDKProjectPublishListener iBehanceSDKProjectPublishListener) {
        this.projectPublishListener = iBehanceSDKProjectPublishListener;
    }

    public void setNotificationHandlerActivity(Class<? extends Activity> cls) {
        this.notificationHandlerActivity = cls;
    }

    public class ProjectEditorBinder extends Binder {
        public ProjectEditorBinder() {
        }

        public BehanceSDKProjectEditorService getService() {
            return BehanceSDKProjectEditorService.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastPublishSuccess(String str) {
        if (this.projectPublishListener != null) {
            this.projectPublishListener.onSuccess(str);
        }
    }

    private void broadcastPublishFailure(BehanceSDKException behanceSDKException) {
        if (this.projectPublishListener != null) {
            this.projectPublishListener.onFailure(behanceSDKException);
        }
    }

    private Intent createNotifyIntent() {
        Intent intent = new Intent(this, this.notificationHandlerActivity);
        intent.setFlags(268435456);
        return intent;
    }

    private PendingIntent createPendingIntent(Intent intent) {
        return PendingIntent.getActivity(this, 0, intent, Constants.SAMPLE_FLAG_DECODE_ONLY);
    }
}
