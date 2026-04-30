package com.behance.sdk.fragments.headless;

import android.content.Context;
import android.os.AsyncTask;
import android.support.v4.app.Fragment;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetAlbumsTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetAlbumsTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKGetAlbumsAsyncTask;
import com.behance.sdk.dto.BehanceSDKAlbumDTO;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageSelectorHeadlessFragment extends Fragment implements IBehanceSDKGetAlbumsTaskListener {
    private List<BehanceSDKAlbumDTO> albumsList;
    private boolean albumsLoadingInProgress = false;
    private Callbacks callbacks;
    private BehanceSDKGetAlbumsAsyncTask getAlbumsTask;

    public interface Callbacks {
        void onGetAlbumsFailure(Exception exc);

        void onGetAlbumsSuccess();
    }

    public BehanceSDKImageSelectorHeadlessFragment() {
        setRetainInstance(true);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public List<BehanceSDKAlbumDTO> getAlbumsList() {
        return this.albumsList;
    }

    public void clearAlbumsCache() {
        if (this.albumsList != null) {
            this.albumsList.clear();
            this.albumsList = null;
        }
    }

    public boolean isAlbumsLoadingInProgress() {
        return this.albumsLoadingInProgress;
    }

    private void setAlbumsLoadingInProgress(boolean z) {
        this.albumsLoadingInProgress = z;
    }

    public void loadAlbums(Context context, boolean z) {
        if (!isAlbumsLoadingInProgress()) {
            setAlbumsLoadingInProgress(true);
            BehanceSDKGetAlbumsTaskParams behanceSDKGetAlbumsTaskParams = new BehanceSDKGetAlbumsTaskParams();
            behanceSDKGetAlbumsTaskParams.setContextWeakReference(new WeakReference<>(context));
            behanceSDKGetAlbumsTaskParams.setShowImageSelectionSources(z);
            this.getAlbumsTask = new BehanceSDKGetAlbumsAsyncTask(this);
            this.getAlbumsTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, behanceSDKGetAlbumsTaskParams);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetAlbumsTaskListener
    public void onGetAlbumsTaskSuccess(List<BehanceSDKAlbumDTO> list) {
        if (list != null) {
            if (this.albumsList == null) {
                this.albumsList = new ArrayList();
            }
            this.albumsList.clear();
            this.albumsList.addAll(list);
        }
        setAlbumsLoadingInProgress(false);
        this.getAlbumsTask = null;
        if (this.callbacks != null) {
            this.callbacks.onGetAlbumsSuccess();
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetAlbumsTaskListener
    public void onGetAlbumsTaskFailure(Exception exc) {
        setAlbumsLoadingInProgress(false);
        this.getAlbumsTask = null;
        if (this.callbacks != null) {
            this.callbacks.onGetAlbumsFailure(exc);
        }
    }
}
