package com.behance.sdk.fragments.headless;

import android.os.AsyncTask;
import android.support.v4.app.Fragment;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetAuthURLFromTwitterTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKGetAuthURLFromTwitterAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;
import com.behance.sdk.asynctasks.result.BehanceSDKGetAuthUrlFromTwitterTaskResult;
import com.behance.sdk.asynctasks.result.BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKLoginToTwitterHeadlessFragment extends Fragment implements IBehanceSDKGetAuthURLFromTwitterTaskListener, IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener {
    private Callbacks callbacks;
    private BehanceSDKGetAuthURLFromTwitterAsyncTask getAuthURLFromTwitterAsyncTask;
    private boolean getAuthURLFromTwitterTaskInProgress;
    private BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask retrieveAccessTokenFromTwitterAsyncTask;
    private boolean retrieveAccessTokenFromTwitterTaskInProgress;

    public interface Callbacks {
        void onGetAuthURLFromTwitterFailure(Exception exc);

        void onGetAuthURLFromTwitterSuccess(BehanceSDKGetAuthUrlFromTwitterTaskResult behanceSDKGetAuthUrlFromTwitterTaskResult);

        void onRetrieveAccessTokenFromTwitterFailure(Exception exc);

        void onRetrieveAccessTokenFromTwitterSuccess(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public BehanceSDKLoginToTwitterHeadlessFragment() {
        setRetainInstance(true);
    }

    private boolean isGetAuthURLFromTwitterTaskInProgress() {
        return this.getAuthURLFromTwitterTaskInProgress;
    }

    private void setGetAuthURLFromTwitterTaskInProgress(boolean z) {
        this.getAuthURLFromTwitterTaskInProgress = z;
    }

    public void getAuthURLFromTwitter(BehanceSDKGetAuthURLFromTwitterAsyncTaskParams behanceSDKGetAuthURLFromTwitterAsyncTaskParams) {
        if (!isGetAuthURLFromTwitterTaskInProgress() && this.getAuthURLFromTwitterAsyncTask == null) {
            this.getAuthURLFromTwitterAsyncTask = new BehanceSDKGetAuthURLFromTwitterAsyncTask(this);
            this.getAuthURLFromTwitterAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, behanceSDKGetAuthURLFromTwitterAsyncTaskParams);
            setGetAuthURLFromTwitterTaskInProgress(true);
        }
    }

    public void retrieveAccessTokenFromTwitter(BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams) {
        if (!isRetrieveAccessTokenFromTwitterTaskInProgress() && this.retrieveAccessTokenFromTwitterAsyncTask == null) {
            this.retrieveAccessTokenFromTwitterAsyncTask = new BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask(this, getActivity());
            this.retrieveAccessTokenFromTwitterAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams);
            setRetrieveAccessTokenFromTwitterTaskInProgress(true);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetAuthURLFromTwitterTaskListener
    public void onGetAuthURLFromTwitterSuccess(BehanceSDKGetAuthUrlFromTwitterTaskResult behanceSDKGetAuthUrlFromTwitterTaskResult) {
        if (this.callbacks != null) {
            this.callbacks.onGetAuthURLFromTwitterSuccess(behanceSDKGetAuthUrlFromTwitterTaskResult);
        }
        this.getAuthURLFromTwitterAsyncTask = null;
        setGetAuthURLFromTwitterTaskInProgress(false);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetAuthURLFromTwitterTaskListener
    public void onGetAuthURLFromTwitterFailure(BehanceSDKGetAuthUrlFromTwitterTaskResult behanceSDKGetAuthUrlFromTwitterTaskResult) {
        if (this.callbacks != null) {
            this.callbacks.onGetAuthURLFromTwitterFailure(behanceSDKGetAuthUrlFromTwitterTaskResult.getException());
        }
        this.getAuthURLFromTwitterAsyncTask = null;
        setGetAuthURLFromTwitterTaskInProgress(false);
    }

    private boolean isRetrieveAccessTokenFromTwitterTaskInProgress() {
        return this.retrieveAccessTokenFromTwitterTaskInProgress;
    }

    private void setRetrieveAccessTokenFromTwitterTaskInProgress(boolean z) {
        this.retrieveAccessTokenFromTwitterTaskInProgress = z;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener
    public void onRetrieveAccessTokenFromTwitterSuccess(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult) {
        if (this.callbacks != null) {
            this.callbacks.onRetrieveAccessTokenFromTwitterSuccess(behanceSDKRetrieveAccessTokenFromTwitterTaskResult);
        }
        setRetrieveAccessTokenFromTwitterTaskInProgress(false);
        this.retrieveAccessTokenFromTwitterAsyncTask = null;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener
    public void onRetrieveAccessTokenFromTwitterFailure(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult) {
        if (this.callbacks != null) {
            this.callbacks.onRetrieveAccessTokenFromTwitterFailure(behanceSDKRetrieveAccessTokenFromTwitterTaskResult.getException());
        }
        setRetrieveAccessTokenFromTwitterTaskInProgress(false);
        this.retrieveAccessTokenFromTwitterAsyncTask = null;
    }
}
