package com.behance.sdk.fragments.headless;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.behance.sdk.asynctask.params.BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectsAsyncTaskParams;
import com.behance.sdk.datamanager.BehanceSDKProjectsDataManager;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.listeners.IBehanceSDKProjectsDataManagerGetProjectsListener;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetProjectsHeadlessFragment extends Fragment implements IBehanceSDKProjectsDataManagerGetProjectsListener {
    private Callbacks callbacks;
    protected BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams curateGalleryParams;
    protected BehanceSDKGetProjectsAsyncTaskParams latestParams;
    private BehanceSDKProjectsDataManager projectsDataManager = BehanceSDKProjectsDataManager.getInstance();

    public interface Callbacks {
        void onGetProjectsFailure(Exception exc, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);

        void onGetProjectsFailure(Exception exc, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams);

        void onGetProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);

        void onGetProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams);
    }

    public BehanceSDKGetProjectsHeadlessFragment() {
        setRetainInstance(true);
        addProjectManagerListener();
    }

    protected void addProjectManagerListener() {
        this.projectsDataManager.addGetProjectsListener(this);
    }

    protected void removeProjectManagerListener() {
        if (this.projectsDataManager != null) {
            this.projectsDataManager.removeGetProjectsListener(this);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void loadProjectsFromServer(BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        this.latestParams = behanceSDKGetProjectsAsyncTaskParams;
        this.projectsDataManager.loadProjectsFromServer(behanceSDKGetProjectsAsyncTaskParams);
    }

    public void loadGalleryProjectsFromServer(BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams) {
        this.curateGalleryParams = behanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
        this.projectsDataManager.loadGalleryProjectsFromServer(behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);
    }

    public boolean isGetProjectsAsyncTaskInProgress() {
        return this.projectsDataManager.isGetProjectsAsyncTaskInProgress();
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKProjectsDataManagerGetProjectsListener
    public void onProjectsDataManagerGetProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams) {
        if (this.callbacks != null && behanceSDKGetCuratedGalleryProjectsAsyncTaskParams != null) {
            this.callbacks.onGetProjectsSuccess(list, behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);
        }
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKProjectsDataManagerGetProjectsListener
    public void onProjectsDataManagerGetProjectsFailure(Exception exc, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams) {
        if (this.callbacks != null && behanceSDKGetCuratedGalleryProjectsAsyncTaskParams != null) {
            this.callbacks.onGetProjectsFailure(exc, behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);
        }
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKProjectsDataManagerGetProjectsListener
    public void onProjectsDataManagerGetProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        if (this.callbacks != null && behanceSDKGetProjectsAsyncTaskParams != null && behanceSDKGetProjectsAsyncTaskParams.compareSearchFilters(this.latestParams)) {
            this.callbacks.onGetProjectsSuccess(list, behanceSDKGetProjectsAsyncTaskParams);
        }
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKProjectsDataManagerGetProjectsListener
    public void onProjectsDataManagerGetProjectsFailure(Exception exc, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        if (this.callbacks != null && behanceSDKGetProjectsAsyncTaskParams != null && behanceSDKGetProjectsAsyncTaskParams.compareSearchFilters(this.latestParams)) {
            this.callbacks.onGetProjectsFailure(exc, behanceSDKGetProjectsAsyncTaskParams);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        removeProjectManagerListener();
        clearProjectsDataManagerCache();
    }

    protected void clearProjectsDataManagerCache() {
        if (this.projectsDataManager != null) {
            this.projectsDataManager.clearProjectsDataManagerCache();
        }
    }
}
