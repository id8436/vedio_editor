package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.ThumbnailUtils;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.controllers.notificationlistener.AdobeInternalNotificationListener;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadHistoryManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadThumbnailMgr;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetInfoUtil;
import com.adobe.creativesdk.foundation.internal.utils.CreativeSDKTextView;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeShowUploadTasksActivity extends AppCompatActivity {
    protected AdobeInternalNotificationListener _internalNotificationListener;
    private Observer _upload_sessions_observer;
    private AdobeShowUploadsRecyclerAdapter mActiveUploadsAdapter;
    private RecyclerView mActiveUploadsRecyclerView;
    private AdobeShowHistoryUploadsRecyclerAdapter mHistoryUploadsAdapter;
    private LinearLayoutManager mLinearLayoutManager;
    private CreativeSDKTextView mTitleView;
    private Toolbar mToolbar;
    private RelativeLayout mUploadEmptyStateView;
    private RecyclerView mUploadHistoryRecyclerView;
    private static boolean active = false;
    private static String T = AdobeShowUploadTasksActivity.class.getSimpleName();
    private Map<String, ?> mUploadHistory = null;
    private ArrayList<String> mUploadHistoryFilePaths = null;
    private ArrayList<?> mUploadHistoryFileStatus = null;
    private List<CustomEndPointInfo> mListOfCustomEndPoints = new ArrayList();
    private List<CustomUploadInfo> mActiveUploadsAdapterData = new ArrayList();
    private List<Observer> mObservers = new ArrayList();

    enum EndPointType {
        AdobeAssetFolder,
        AdobeDCXManifest,
        AdobePhotoCollection
    }

    class CustomUploadInfo {
        String endPoint;
        EndPointType endPointType;
        AdobeUploadAssetData uploadAssetData;

        public CustomUploadInfo(AdobeUploadAssetData adobeUploadAssetData, EndPointType endPointType, String str) {
            this.endPointType = endPointType;
            this.uploadAssetData = adobeUploadAssetData;
            this.endPoint = str;
        }
    }

    class CustomEndPointInfo {
        String endPoint;
        EndPointType endPointType;

        public CustomEndPointInfo(String str, EndPointType endPointType) {
            this.endPointType = endPointType;
            this.endPoint = str;
        }
    }

    private void addEndPointsToList(List<String> list, EndPointType endPointType) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                this.mListOfCustomEndPoints.add(new CustomEndPointInfo(list.get(i2), endPointType));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void addUploadAssetsToList(List<AdobeUploadAssetData> list, EndPointType endPointType, String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                this.mActiveUploadsAdapterData.add(new CustomUploadInfo(list.get(i2), endPointType, str));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void populateEndPointsToList() {
        addEndPointsToList(AdobeUploadManager.getInstance(AdobeAssetFolder.class).getListOfEndPoints(), EndPointType.AdobeAssetFolder);
        addEndPointsToList(AdobeUploadManager.getInstance(AdobeDCXManifest.class).getListOfEndPoints(), EndPointType.AdobeDCXManifest);
        addEndPointsToList(AdobeUploadManager.getInstance(AdobePhotoCollection.class).getListOfEndPoints(), EndPointType.AdobePhotoCollection);
    }

    public void populateUploadHistoryData() {
        if (this.mUploadHistory != null && this.mUploadHistory.size() > 0) {
            this.mUploadHistoryFilePaths = new ArrayList<>(this.mUploadHistory.keySet());
            this.mUploadHistoryFileStatus = new ArrayList<>(this.mUploadHistory.values());
            this.mUploadHistoryRecyclerView.setVisibility(0);
        }
    }

    protected void registerLocalNotifications() {
        if (this._upload_sessions_observer == null) {
            this._upload_sessions_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeShowUploadTasksActivity.1
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AdobeNotification adobeNotification = (AdobeNotification) obj;
                    if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeNoUploadSessions) {
                        AdobeShowUploadTasksActivity.this.setTitle(AdobeShowUploadTasksActivity.this.getString(R.string.upload_activity_title_finished));
                        if (AdobeShowUploadTasksActivity.active) {
                            AdobeUploadManager.showLastUploads = false;
                            AdobeUploadHistoryManager.clearHistory();
                            return;
                        }
                        return;
                    }
                    if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeUploadSessionsActive) {
                        AdobeUploadManager.showLastUploads = true;
                        AdobeShowUploadTasksActivity.this.setTitle(AdobeShowUploadTasksActivity.this.getString(R.string.upload_activity_title_running));
                    }
                }
            };
        }
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeNoUploadSessions, this._upload_sessions_observer);
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeUploadSessionsActive, this._upload_sessions_observer);
    }

    private void setUpActiveUploadsRecyclerView() {
        this.mLinearLayoutManager = new LinearLayoutManager(this);
        this.mActiveUploadsRecyclerView.setLayoutManager(this.mLinearLayoutManager);
        this.mActiveUploadsAdapter = new AdobeShowUploadsRecyclerAdapter();
        this.mActiveUploadsRecyclerView.setAdapter(this.mActiveUploadsAdapter);
        this.mActiveUploadsRecyclerView.setItemAnimator(null);
    }

    private void setUpHistoryUploadsRecyclerView() {
        this.mLinearLayoutManager = new LinearLayoutManager(this);
        this.mUploadHistoryRecyclerView.setLayoutManager(this.mLinearLayoutManager);
        this.mHistoryUploadsAdapter = new AdobeShowHistoryUploadsRecyclerAdapter();
        this.mUploadHistoryRecyclerView.setAdapter(this.mHistoryUploadsAdapter);
        this.mUploadHistoryRecyclerView.setItemAnimator(null);
    }

    private void createActiveUploadsAdapterData() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mListOfCustomEndPoints.size()) {
                CustomEndPointInfo customEndPointInfo = this.mListOfCustomEndPoints.get(i2);
                if (customEndPointInfo.endPointType.equals(EndPointType.AdobeAssetFolder)) {
                    AdobeUploadSession uploadSessionOfEndPointFromId = AdobeUploadManager.getInstance(AdobeAssetFolder.class).getUploadSessionOfEndPointFromId(customEndPointInfo.endPoint);
                    if (uploadSessionOfEndPointFromId != null) {
                        addUploadAssetsToList(uploadSessionOfEndPointFromId.getAssetsList(), EndPointType.AdobeAssetFolder, customEndPointInfo.endPoint);
                    }
                } else if (customEndPointInfo.endPointType.equals(EndPointType.AdobeDCXManifest)) {
                    AdobeUploadSession uploadSessionOfEndPointFromId2 = AdobeUploadManager.getInstance(AdobeDCXManifest.class).getUploadSessionOfEndPointFromId(customEndPointInfo.endPoint);
                    if (uploadSessionOfEndPointFromId2 != null) {
                        addUploadAssetsToList(uploadSessionOfEndPointFromId2.getAssetsList(), EndPointType.AdobeDCXManifest, customEndPointInfo.endPoint);
                    }
                } else {
                    AdobeUploadSession uploadSessionOfEndPointFromId3 = AdobeUploadManager.getInstance(AdobePhotoCollection.class).getUploadSessionOfEndPointFromId(customEndPointInfo.endPoint);
                    if (uploadSessionOfEndPointFromId3 != null) {
                        addUploadAssetsToList(uploadSessionOfEndPointFromId3.getAssetsList(), EndPointType.AdobePhotoCollection, customEndPointInfo.endPoint);
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void createHistoryUploadsAdapterData() {
        this.mUploadHistory = AdobeUploadHistoryManager.getStoredSessionData();
        populateUploadHistoryData();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_adobe_show_upload_tasks);
        this.mTitleView = (CreativeSDKTextView) findViewById(R.id.adobe_csdk_actionbar_title_upload);
        this.mActiveUploadsRecyclerView = (RecyclerView) findViewById(R.id.adobe_uploading_tasks_RecyclerView);
        this.mUploadHistoryRecyclerView = (RecyclerView) findViewById(R.id.adobe_uploads_history_RecyclerView);
        this.mToolbar = (Toolbar) findViewById(R.id.upload_toolbar);
        this.mUploadEmptyStateView = (RelativeLayout) findViewById(R.id.uploads_empty_state_view);
        this._internalNotificationListener = new AdobeInternalNotificationListener();
        setUpToolBar();
        this.mListOfCustomEndPoints.clear();
        this.mActiveUploadsAdapterData.clear();
        this.mObservers.clear();
        populateEndPointsToList();
        registerLocalNotifications();
        createActiveUploadsAdapterData();
        createHistoryUploadsAdapterData();
        setUpActiveUploadsRecyclerView();
        setUpHistoryUploadsRecyclerView();
        this.mActiveUploadsAdapter.notifyDataSetChanged();
        this.mHistoryUploadsAdapter.notifyDataSetChanged();
        checkForEmptyUploads();
    }

    public void checkForEmptyUploads() {
        if (this.mActiveUploadsAdapterData.size() == 0 && (this.mUploadHistory == null || this.mUploadHistory.size() == 0)) {
            this.mActiveUploadsRecyclerView.setVisibility(8);
            this.mUploadHistoryRecyclerView.setVisibility(8);
            this.mUploadEmptyStateView.setVisibility(0);
        } else if (this.mActiveUploadsAdapterData.size() == 0) {
            this.mActiveUploadsRecyclerView.setVisibility(8);
        } else if (this.mUploadHistory == null || this.mUploadHistory.size() == 0) {
            this.mUploadHistoryRecyclerView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitle(String str) {
        this.mTitleView.setText(str);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        active = true;
        if (AdobeUploadManager.checkForNoUploadSessions().booleanValue()) {
            AdobeUploadManager.showLastUploads = false;
            setTitle(getString(R.string.upload_activity_title_finished));
        } else {
            AdobeUploadManager.showLastUploads = true;
            setTitle(getString(R.string.upload_activity_title_running));
        }
    }

    private void setUpToolBar() {
        setSupportActionBar(this.mToolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(ContextCompat.getColor(this, R.color.adobe_loki_status_bar));
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                finish();
                break;
        }
        return true;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        active = false;
        super.onStop();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    protected Bitmap getThumbnail(String str, String str2, int i) {
        Bitmap bitmap;
        OutOfMemoryError outOfMemoryError;
        Bitmap bitmap2;
        Exception exc;
        Bitmap bitmapExtractThumbnail;
        Bitmap bitmapExtractThumbnail2 = null;
        if (str != null) {
            try {
                if (str.contains("image/")) {
                    bitmapExtractThumbnail2 = ThumbnailUtils.extractThumbnail(AdobeUploadThumbnailMgr.decodeSampledBitmapFromResource(str2, i * 2, i * 2), i, i);
                } else if (str.contains("video/")) {
                    bitmapExtractThumbnail2 = ThumbnailUtils.extractThumbnail(ThumbnailUtils.createVideoThumbnail(str2, 1), i, i);
                }
            } catch (Exception e2) {
                bitmap2 = bitmapExtractThumbnail2;
                exc = e2;
                Log.e(T, exc.getMessage());
                return bitmap2;
            } catch (OutOfMemoryError e3) {
                bitmap = bitmapExtractThumbnail2;
                outOfMemoryError = e3;
                Log.e(T, outOfMemoryError.getMessage());
                return bitmap;
            }
        }
        if (bitmapExtractThumbnail2 != null) {
            return bitmapExtractThumbnail2;
        }
        try {
            String str3 = "." + AdobeStorageUtils.getFileExtensionFromUrl(str2);
            Log.e(T, str3);
            BitmapDrawable bitmapDrawable = (BitmapDrawable) AdobeAssetInfoUtil.getEmptyCellImageForExtension(getApplicationContext(), str3);
            if (bitmapDrawable != null) {
                bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(bitmapDrawable.getBitmap(), i, i);
            } else {
                bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(((BitmapDrawable) AdobeAssetInfoUtil.getGenericImageForExtension(getApplicationContext())).getBitmap(), i, i);
            }
            return bitmapExtractThumbnail;
        } catch (Exception e4) {
            bitmap2 = bitmapExtractThumbnail2;
            exc = e4;
            Log.e(T, exc.getMessage());
            return bitmap2;
        } catch (OutOfMemoryError e5) {
            bitmap = bitmapExtractThumbnail2;
            outOfMemoryError = e5;
            Log.e(T, outOfMemoryError.getMessage());
            return bitmap;
        }
    }

    public class AdobeUploadTaskViewHolder extends RecyclerView.ViewHolder {
        private Boolean isCancellable;
        private Boolean isCancelled;
        private ProgressBar mProgressBar;
        private ImageView mThumbnailImageView;
        private TextView mUploadAssetTextStatus;
        private TextView mUploadItemTitle;
        private ImageView mUploadStatusImageView;

        public AdobeUploadTaskViewHolder(View view) {
            super(view);
            this.isCancelled = false;
            this.isCancellable = true;
            this.mUploadItemTitle = (TextView) view.findViewById(R.id.upload_asset_title);
            this.mUploadStatusImageView = (ImageView) view.findViewById(R.id.upload_cancel_image);
            this.mProgressBar = (ProgressBar) view.findViewById(R.id.uploading_progress_bar);
            this.mThumbnailImageView = (ImageView) view.findViewById(R.id.upload_asset_img);
            this.mUploadAssetTextStatus = (TextView) view.findViewById(R.id.upload_asset_text_status);
        }
    }

    public class AdobeShowUploadsRecyclerAdapter extends RecyclerView.Adapter<AdobeUploadTaskViewHolder> {
        protected AdobeShowUploadsRecyclerAdapter() {
        }

        public void updateViewOnUiThread(final AdobeUploadAssetData adobeUploadAssetData, final AdobeUploadTaskViewHolder adobeUploadTaskViewHolder, final EndPointType endPointType, final String str, final int i) {
            AdobeShowUploadTasksActivity.this.runOnUiThread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeShowUploadTasksActivity.AdobeShowUploadsRecyclerAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    AdobeShowUploadsRecyclerAdapter.this.updateViewHolder(adobeUploadAssetData, adobeUploadTaskViewHolder, endPointType, str, i);
                }
            });
        }

        public void cancelUploadOfIndividualAsset(EndPointType endPointType, String str, AdobeUploadAssetData adobeUploadAssetData) {
            if (endPointType.equals(EndPointType.AdobeAssetFolder)) {
                AdobeUploadManager.getInstance(AdobeAssetFolder.class).getUploadSessionOfEndPointFromId(str).cancelIndividualUploadTaskOfAsset(adobeUploadAssetData);
            } else if (endPointType.equals(EndPointType.AdobeDCXManifest)) {
                AdobeUploadManager.getInstance(AdobeDCXManifest.class).getUploadSessionOfEndPointFromId(str).cancelIndividualUploadTaskOfAsset(adobeUploadAssetData);
            } else {
                AdobeUploadManager.getInstance(AdobePhotoCollection.class).getUploadSessionOfEndPointFromId(str).cancelIndividualUploadTaskOfAsset(adobeUploadAssetData);
            }
        }

        public void setTitleAndThumbNail(AdobeUploadAssetData adobeUploadAssetData, AdobeUploadTaskViewHolder adobeUploadTaskViewHolder) {
            adobeUploadTaskViewHolder.mUploadItemTitle.setText(adobeUploadAssetData.title);
            int dimensionPixelSize = AdobeShowUploadTasksActivity.this.getResources().getDimensionPixelSize(R.dimen.upload_preview_width);
            String mimeType = adobeUploadAssetData.getMimeType();
            if (mimeType == null) {
                mimeType = AdobeStorageUtils.getMimeType(adobeUploadAssetData.getLocalAssetURL().getPath());
            }
            if (adobeUploadTaskViewHolder.mThumbnailImageView.getDrawable() == null) {
                adobeUploadTaskViewHolder.mThumbnailImageView.setImageBitmap(AdobeShowUploadTasksActivity.this.getThumbnail(mimeType, adobeUploadAssetData.getLocalAssetURL().getPath(), dimensionPixelSize));
            }
        }

        public void setCancelUploadListener(final EndPointType endPointType, final String str, final AdobeUploadAssetData adobeUploadAssetData, final AdobeUploadTaskViewHolder adobeUploadTaskViewHolder, final int i) {
            adobeUploadTaskViewHolder.mUploadStatusImageView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeShowUploadTasksActivity.AdobeShowUploadsRecyclerAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (adobeUploadTaskViewHolder.isCancellable.booleanValue() || AdobeShowUploadsRecyclerAdapter.this.isItemCancellable(adobeUploadAssetData)) {
                        AdobeShowUploadsRecyclerAdapter.this.cancelUploadOfIndividualAsset(endPointType, str, adobeUploadAssetData);
                        adobeUploadTaskViewHolder.isCancelled = true;
                        adobeUploadTaskViewHolder.isCancellable = false;
                        AdobeShowUploadsRecyclerAdapter.this.updateViewOnUiThread(adobeUploadAssetData, adobeUploadTaskViewHolder, endPointType, str, i);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateViewHolder(AdobeUploadAssetData adobeUploadAssetData, AdobeUploadTaskViewHolder adobeUploadTaskViewHolder, EndPointType endPointType, String str, int i) {
            if (adobeUploadAssetData != null) {
                if (adobeUploadAssetData.isUploadDone() || adobeUploadTaskViewHolder.isCancelled.booleanValue()) {
                    adobeUploadTaskViewHolder.mUploadStatusImageView.setOnClickListener(null);
                    adobeUploadTaskViewHolder.mProgressBar.setVisibility(4);
                    adobeUploadTaskViewHolder.mUploadAssetTextStatus.setVisibility(0);
                    if (adobeUploadAssetData.getStatus() == AdobeUploadAssetData.UploadStatus.Completed) {
                        adobeUploadTaskViewHolder.mUploadAssetTextStatus.setText(AdobeShowUploadTasksActivity.this.getString(R.string.upload_success_status));
                        adobeUploadTaskViewHolder.mUploadStatusImageView.setImageDrawable(AdobeShowUploadTasksActivity.this.getResources().getDrawable(R.drawable.ic_check_blue_24dp));
                        return;
                    }
                    adobeUploadTaskViewHolder.mUploadAssetTextStatus.setText(AdobeShowUploadTasksActivity.this.getString(R.string.upload_failed_status));
                    adobeUploadTaskViewHolder.mUploadStatusImageView.setImageDrawable(AdobeShowUploadTasksActivity.this.getResources().getDrawable(R.drawable.ic_report_problem_red_24dp));
                    if (!adobeUploadAssetData.isUploadDone()) {
                        cancelUploadOfIndividualAsset(endPointType, str, adobeUploadAssetData);
                        return;
                    }
                    return;
                }
                int progress = (int) adobeUploadAssetData.getProgress();
                adobeUploadTaskViewHolder.mProgressBar.setProgress(progress);
                if (progress == 100 && !adobeUploadAssetData.isUploadDone()) {
                    adobeUploadTaskViewHolder.mUploadStatusImageView.setOnClickListener(null);
                    adobeUploadTaskViewHolder.mUploadStatusImageView.setImageDrawable(AdobeShowUploadTasksActivity.this.getResources().getDrawable(R.drawable.ic_loop_black_24dp));
                }
            }
        }

        public void addObserverAndUpdateView(final int i, final AdobeUploadTaskViewHolder adobeUploadTaskViewHolder) {
            final CustomUploadInfo customUploadInfo = (CustomUploadInfo) AdobeShowUploadTasksActivity.this.mActiveUploadsAdapterData.get(i);
            AdobeUploadAssetData adobeUploadAssetData = customUploadInfo.uploadAssetData;
            setTitleAndThumbNail(adobeUploadAssetData, adobeUploadTaskViewHolder);
            setCancelUploadListener(customUploadInfo.endPointType, customUploadInfo.endPoint, adobeUploadAssetData, adobeUploadTaskViewHolder, i);
            updateViewOnUiThread(adobeUploadAssetData, adobeUploadTaskViewHolder, customUploadInfo.endPointType, customUploadInfo.endPoint, i);
            if (customUploadInfo.endPointType.equals(EndPointType.AdobeAssetFolder)) {
                AdobeUploadSession uploadSessionOfEndPointFromId = AdobeUploadManager.getInstance(AdobeAssetFolder.class).getUploadSessionOfEndPointFromId(customUploadInfo.endPoint);
                Observer observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeShowUploadTasksActivity.AdobeShowUploadsRecyclerAdapter.3
                    @Override // java.util.Observer
                    public void update(Observable observable, Object obj) {
                        AdobeShowUploadsRecyclerAdapter.this.updateViewOnUiThread((AdobeUploadAssetData) obj, adobeUploadTaskViewHolder, customUploadInfo.endPointType, customUploadInfo.endPoint, i);
                    }
                };
                AdobeShowUploadTasksActivity.this.mObservers.add(i, observer);
                uploadSessionOfEndPointFromId.addObserverForAssetUpload(adobeUploadAssetData, observer);
                return;
            }
            if (customUploadInfo.endPointType.equals(EndPointType.AdobeDCXManifest)) {
                AdobeUploadSession uploadSessionOfEndPointFromId2 = AdobeUploadManager.getInstance(AdobeDCXManifest.class).getUploadSessionOfEndPointFromId(customUploadInfo.endPoint);
                Observer observer2 = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeShowUploadTasksActivity.AdobeShowUploadsRecyclerAdapter.4
                    @Override // java.util.Observer
                    public void update(Observable observable, Object obj) {
                        AdobeShowUploadsRecyclerAdapter.this.updateViewOnUiThread((AdobeUploadAssetData) obj, adobeUploadTaskViewHolder, customUploadInfo.endPointType, customUploadInfo.endPoint, i);
                    }
                };
                AdobeShowUploadTasksActivity.this.mObservers.add(i, observer2);
                uploadSessionOfEndPointFromId2.addObserverForAssetUpload(adobeUploadAssetData, observer2);
                return;
            }
            AdobeUploadSession uploadSessionOfEndPointFromId3 = AdobeUploadManager.getInstance(AdobePhotoCollection.class).getUploadSessionOfEndPointFromId(customUploadInfo.endPoint);
            Observer observer3 = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeShowUploadTasksActivity.AdobeShowUploadsRecyclerAdapter.5
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AdobeShowUploadsRecyclerAdapter.this.updateViewOnUiThread((AdobeUploadAssetData) obj, adobeUploadTaskViewHolder, customUploadInfo.endPointType, customUploadInfo.endPoint, i);
                }
            };
            AdobeShowUploadTasksActivity.this.mObservers.add(i, observer3);
            uploadSessionOfEndPointFromId3.addObserverForAssetUpload(adobeUploadAssetData, observer3);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public AdobeUploadTaskViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return AdobeShowUploadTasksActivity.this.new AdobeUploadTaskViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.adobe_uploadingtasks_recycler_row_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(AdobeUploadTaskViewHolder adobeUploadTaskViewHolder, int i) {
            addObserverAndUpdateView(i, adobeUploadTaskViewHolder);
        }

        public boolean isItemCancellable(AdobeUploadAssetData adobeUploadAssetData) {
            if (((int) adobeUploadAssetData.getProgress()) == 100) {
                return false;
            }
            return adobeUploadAssetData.getStatus() == AdobeUploadAssetData.UploadStatus.YetToStart || adobeUploadAssetData.getStatus() == AdobeUploadAssetData.UploadStatus.Started || adobeUploadAssetData.getStatus() == AdobeUploadAssetData.UploadStatus.InProgress;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (AdobeShowUploadTasksActivity.this.mActiveUploadsAdapterData != null) {
                return AdobeShowUploadTasksActivity.this.mActiveUploadsAdapterData.size();
            }
            return 0;
        }
    }

    public class AdobeShowHistoryUploadsRecyclerAdapter extends RecyclerView.Adapter<AdobeUploadTaskViewHolder> {
        protected AdobeShowHistoryUploadsRecyclerAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public AdobeUploadTaskViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return AdobeShowUploadTasksActivity.this.new AdobeUploadTaskViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.adobe_uploadingtasks_recycler_row_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(AdobeUploadTaskViewHolder adobeUploadTaskViewHolder, int i) {
            if (AdobeShowUploadTasksActivity.this.mUploadHistoryFilePaths != null || i < AdobeShowUploadTasksActivity.this.mUploadHistoryFilePaths.size()) {
                String str = (String) AdobeShowUploadTasksActivity.this.mUploadHistoryFilePaths.get(i);
                Boolean bool = (Boolean) AdobeShowUploadTasksActivity.this.mUploadHistoryFileStatus.get(i);
                String mimeType = AdobeStorageUtils.getMimeType(str);
                adobeUploadTaskViewHolder.mUploadItemTitle.setText(str.substring(str.lastIndexOf(URIUtil.SLASH) + 1));
                adobeUploadTaskViewHolder.mThumbnailImageView.setImageBitmap(AdobeShowUploadTasksActivity.this.getThumbnail(mimeType, str, AdobeShowUploadTasksActivity.this.getResources().getDimensionPixelSize(R.dimen.upload_preview_width)));
                adobeUploadTaskViewHolder.mUploadStatusImageView.setOnClickListener(null);
                adobeUploadTaskViewHolder.mProgressBar.setVisibility(4);
                adobeUploadTaskViewHolder.mUploadAssetTextStatus.setVisibility(0);
                if (bool.booleanValue()) {
                    adobeUploadTaskViewHolder.mUploadAssetTextStatus.setText(AdobeShowUploadTasksActivity.this.getString(R.string.upload_success_status));
                    adobeUploadTaskViewHolder.mUploadStatusImageView.setImageDrawable(AdobeShowUploadTasksActivity.this.getResources().getDrawable(R.drawable.ic_check_blue_24dp));
                } else {
                    adobeUploadTaskViewHolder.mUploadAssetTextStatus.setText(AdobeShowUploadTasksActivity.this.getString(R.string.upload_failed_status));
                    adobeUploadTaskViewHolder.mUploadStatusImageView.setImageDrawable(AdobeShowUploadTasksActivity.this.getResources().getDrawable(R.drawable.ic_report_problem_red_24dp));
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (AdobeShowUploadTasksActivity.this.mUploadHistory != null) {
                return AdobeShowUploadTasksActivity.this.mUploadHistory.size();
            }
            return 0;
        }
    }
}
