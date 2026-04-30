package com.behance.sdk.datamanager;

import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.asynctasks.BehanceSDKLoadCreativeFieldsAsyncTask;
import com.behance.sdk.datamanager.listeners.interfaces.IFiltersDataManagerListener;
import com.behance.sdk.datamanager.listeners.interfaces.IGetCreativeFieldsAsyncTaskListener;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FiltersDataManager implements IGetCreativeFieldsAsyncTaskListener {
    private static final FiltersDataManager FILTERS_DATA_MANAGER = new FiltersDataManager();
    private List<BehanceSDKCreativeFieldDTO> creativeFields;
    private List<IFiltersDataManagerListener> listeners = new ArrayList();
    private BehanceSDKLoadCreativeFieldsAsyncTask loadCreativeFieldsAsyncTask;
    private boolean loadCreativeFieldsTaskInProgress;

    private FiltersDataManager() {
    }

    public static FiltersDataManager getInstance() {
        return FILTERS_DATA_MANAGER;
    }

    public void addListener(IFiltersDataManagerListener iFiltersDataManagerListener) {
        if (iFiltersDataManagerListener != null && !this.listeners.contains(iFiltersDataManagerListener)) {
            this.listeners.add(iFiltersDataManagerListener);
        }
    }

    public void removeListener(IFiltersDataManagerListener iFiltersDataManagerListener) {
        if (iFiltersDataManagerListener != null) {
            this.listeners.remove(iFiltersDataManagerListener);
        }
    }

    public void loadCreativeFields(IBehanceSDKUserCredentials iBehanceSDKUserCredentials) {
        if (this.creativeFields == null || this.creativeFields.isEmpty()) {
            loadCreativeFieldsFromServer(iBehanceSDKUserCredentials);
        } else {
            notifyListenersOnLoadCreativeFieldSuccess();
        }
    }

    private void notifyListenersOnLoadCreativeFieldSuccess() {
        if (!this.listeners.isEmpty()) {
            Iterator<IFiltersDataManagerListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onCreativeFieldsLoadingSuccess(this.creativeFields);
            }
        }
    }

    private void loadCreativeFieldsFromServer(IBehanceSDKUserCredentials iBehanceSDKUserCredentials) {
        if (this.loadCreativeFieldsAsyncTask == null) {
            setLoadCreativeFieldsTaskInProgress(true);
            this.loadCreativeFieldsAsyncTask = new BehanceSDKLoadCreativeFieldsAsyncTask(this);
            this.loadCreativeFieldsAsyncTask.setUserCredentials(iBehanceSDKUserCredentials);
            this.loadCreativeFieldsAsyncTask.execute(new Void[0]);
        }
    }

    private void setLoadCreativeFieldsTaskInProgress(boolean z) {
        this.loadCreativeFieldsTaskInProgress = z;
    }

    public boolean isLoadCreativeFieldsTaskInProgress() {
        return this.loadCreativeFieldsTaskInProgress;
    }

    @Override // com.behance.sdk.datamanager.listeners.interfaces.IGetCreativeFieldsAsyncTaskListener
    public void onLoadCreativeFieldsSuccess(List<BehanceSDKCreativeFieldDTO> list) {
        if (this.creativeFields == null) {
            this.creativeFields = new ArrayList(list.size());
        }
        this.creativeFields.clear();
        this.creativeFields.addAll(list);
        notifyListenersOnLoadCreativeFieldSuccess();
        this.loadCreativeFieldsAsyncTask = null;
        setLoadCreativeFieldsTaskInProgress(false);
    }

    @Override // com.behance.sdk.datamanager.listeners.interfaces.IGetCreativeFieldsAsyncTaskListener
    public void onLoadCreativeFieldsFailure(Exception exc) {
        if (!this.listeners.isEmpty()) {
            Iterator<IFiltersDataManagerListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onCreativeFieldsLoadingFailure(exc);
            }
        }
        this.loadCreativeFieldsAsyncTask = null;
        setLoadCreativeFieldsTaskInProgress(false);
    }
}
