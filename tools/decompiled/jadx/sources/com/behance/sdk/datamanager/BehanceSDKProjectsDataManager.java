package com.behance.sdk.datamanager;

import com.behance.sdk.asynctask.listeners.IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectsAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectsAsyncTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKGetCuratedGalleryProjectsAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKGetProjectsAsyncTask;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.executors.BehanceSDKSerialExecutor;
import com.behance.sdk.listeners.IBehanceSDKProjectsDataManagerGetProjectsListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectsDataManager implements IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener, IBehanceSDKGetProjectsAsyncTaskListener {
    private static BehanceSDKProjectsDataManager instance;
    private BehanceSDKGetCuratedGalleryProjectsAsyncTask getCuratedGalleryProjectsAsyncTask;
    private BehanceSDKGetProjectsAsyncTask getProjectsAsyncTask;
    private Set<IBehanceSDKProjectsDataManagerGetProjectsListener> getProjectsListenersSet;
    private List<BehanceSDKProjectDTO> projectsList;
    private boolean getProjectsAsyncTaskInProgress = false;
    private final Object getProjectsSyncLockObject = new Object();
    private BehanceSDKSerialExecutor getProjectsExecutor = new BehanceSDKSerialExecutor(BehanceSDKGetProjectsAsyncTask.class.getSimpleName());

    private BehanceSDKProjectsDataManager() {
    }

    public static BehanceSDKProjectsDataManager getInstance() {
        if (instance == null) {
            instance = new BehanceSDKProjectsDataManager();
        }
        return instance;
    }

    public List<BehanceSDKProjectDTO> getProjects() {
        if (this.projectsList == null) {
            this.projectsList = new ArrayList();
        }
        return this.projectsList;
    }

    private void setProjects(List<BehanceSDKProjectDTO> list) {
        getProjects().clear();
        this.projectsList.addAll(list);
    }

    public void loadProjectsFromServer(BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        if (this.getProjectsAsyncTask != null) {
            this.getProjectsAsyncTask.cancel(true);
            this.getProjectsAsyncTask = null;
        }
        setGetProjectsAsyncTaskInProgress(true);
        this.getProjectsAsyncTask = new BehanceSDKGetProjectsAsyncTask(this);
        this.getProjectsAsyncTask.executeOnExecutor(this.getProjectsExecutor, behanceSDKGetProjectsAsyncTaskParams);
    }

    public void loadGalleryProjectsFromServer(BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams) {
        if (this.getCuratedGalleryProjectsAsyncTask != null) {
            this.getCuratedGalleryProjectsAsyncTask.cancel(true);
            this.getCuratedGalleryProjectsAsyncTask = null;
        }
        setGetProjectsAsyncTaskInProgress(true);
        this.getCuratedGalleryProjectsAsyncTask = new BehanceSDKGetCuratedGalleryProjectsAsyncTask(this);
        this.getCuratedGalleryProjectsAsyncTask.executeOnExecutor(this.getProjectsExecutor, behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener
    public void onGetCuratedGalleryProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams) {
        synchronized (this.getProjectsSyncLockObject) {
            if (behanceSDKGetCuratedGalleryProjectsAsyncTaskParams.getPageNumber() > 1) {
                getProjects().addAll(list);
            } else {
                setProjects(list);
            }
            if (this.getProjectsListenersSet != null) {
                for (IBehanceSDKProjectsDataManagerGetProjectsListener iBehanceSDKProjectsDataManagerGetProjectsListener : this.getProjectsListenersSet) {
                    if (iBehanceSDKProjectsDataManagerGetProjectsListener != null) {
                        iBehanceSDKProjectsDataManagerGetProjectsListener.onProjectsDataManagerGetProjectsSuccess(list, behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);
                    }
                }
            }
            setGetProjectsAsyncTaskInProgress(false);
            this.getCuratedGalleryProjectsAsyncTask = null;
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener
    public void onGetCuratedGalleryProjectsFailure(Exception exc, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams) {
        new HashMap();
        synchronized (this.getProjectsSyncLockObject) {
            if (this.getProjectsListenersSet != null) {
                for (IBehanceSDKProjectsDataManagerGetProjectsListener iBehanceSDKProjectsDataManagerGetProjectsListener : this.getProjectsListenersSet) {
                    if (iBehanceSDKProjectsDataManagerGetProjectsListener != null) {
                        iBehanceSDKProjectsDataManagerGetProjectsListener.onProjectsDataManagerGetProjectsFailure(exc, behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);
                    }
                }
            }
            setGetProjectsAsyncTaskInProgress(false);
            this.getCuratedGalleryProjectsAsyncTask = null;
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectsAsyncTaskListener
    public void onGetProjectsAsyncTaskSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        synchronized (this.getProjectsSyncLockObject) {
            if (behanceSDKGetProjectsAsyncTaskParams.getPageNumber() > 1) {
                getProjects().addAll(list);
            } else {
                setProjects(list);
            }
            if (this.getProjectsListenersSet != null) {
                for (IBehanceSDKProjectsDataManagerGetProjectsListener iBehanceSDKProjectsDataManagerGetProjectsListener : this.getProjectsListenersSet) {
                    if (iBehanceSDKProjectsDataManagerGetProjectsListener != null) {
                        iBehanceSDKProjectsDataManagerGetProjectsListener.onProjectsDataManagerGetProjectsSuccess(list, behanceSDKGetProjectsAsyncTaskParams);
                    }
                }
            }
            setGetProjectsAsyncTaskInProgress(false);
            this.getProjectsAsyncTask = null;
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectsAsyncTaskListener
    public void onGetProjectsAsyncTaskFailure(Exception exc, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        new HashMap();
        synchronized (this.getProjectsSyncLockObject) {
            if (this.getProjectsListenersSet != null) {
                for (IBehanceSDKProjectsDataManagerGetProjectsListener iBehanceSDKProjectsDataManagerGetProjectsListener : this.getProjectsListenersSet) {
                    if (iBehanceSDKProjectsDataManagerGetProjectsListener != null) {
                        iBehanceSDKProjectsDataManagerGetProjectsListener.onProjectsDataManagerGetProjectsFailure(exc, behanceSDKGetProjectsAsyncTaskParams);
                    }
                }
            }
            setGetProjectsAsyncTaskInProgress(false);
            this.getProjectsAsyncTask = null;
        }
    }

    public void addGetProjectsListener(IBehanceSDKProjectsDataManagerGetProjectsListener iBehanceSDKProjectsDataManagerGetProjectsListener) {
        synchronized (this.getProjectsSyncLockObject) {
            if (this.getProjectsListenersSet == null) {
                this.getProjectsListenersSet = new HashSet();
            }
            if (!this.getProjectsListenersSet.contains(iBehanceSDKProjectsDataManagerGetProjectsListener)) {
                this.getProjectsListenersSet.add(iBehanceSDKProjectsDataManagerGetProjectsListener);
            }
        }
    }

    public void removeGetProjectsListener(IBehanceSDKProjectsDataManagerGetProjectsListener iBehanceSDKProjectsDataManagerGetProjectsListener) {
        synchronized (this.getProjectsSyncLockObject) {
            if (this.getProjectsListenersSet != null) {
                this.getProjectsListenersSet.remove(iBehanceSDKProjectsDataManagerGetProjectsListener);
            }
        }
    }

    public boolean isGetProjectsAsyncTaskInProgress() {
        return this.getProjectsAsyncTaskInProgress;
    }

    public void setGetProjectsAsyncTaskInProgress(boolean z) {
        this.getProjectsAsyncTaskInProgress = z;
    }

    public void clearProjectsDataManagerCache() {
        synchronized (this.getProjectsSyncLockObject) {
            if (this.projectsList != null && !this.projectsList.isEmpty()) {
                this.projectsList.clear();
            }
        }
    }
}
