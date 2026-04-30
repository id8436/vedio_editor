package com.behance.sdk.fragments.headless;

import android.support.v4.app.Fragment;
import com.behance.sdk.asynctask.listeners.IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;
import com.behance.sdk.asynctask.params.BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment extends Fragment implements IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler {
    private Callbacks callbacks;
    private boolean retrieveBehanceUserDetailTaskInProgress;
    private BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask retrieveUserDetailsUsingAdobeIDTask;

    public interface Callbacks {
        void onRetrieveBehanceUserDetailsFailure(Exception exc);

        void onRetrieveBehanceUserDetailsSuccess(BehanceSDKUserDTO behanceSDKUserDTO);
    }

    public BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment() {
        setRetainInstance(true);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public boolean isRetrieveUserDetailTaskInProgress() {
        return this.retrieveBehanceUserDetailTaskInProgress;
    }

    public void setRetrieveUserDetailTaskInProgress(boolean z) {
        this.retrieveBehanceUserDetailTaskInProgress = z;
    }

    public void retrieveBehanceUserDetailsUsingAdobeID(BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams) {
        if (!isRetrieveUserDetailTaskInProgress() && this.retrieveUserDetailsUsingAdobeIDTask == null) {
            setRetrieveUserDetailTaskInProgress(true);
            this.retrieveUserDetailsUsingAdobeIDTask = new BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask(this);
            this.retrieveUserDetailsUsingAdobeIDTask.execute(behanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler
    public void onRetrieveBehanceUserDetailsSuccess(BehanceSDKUserDTO behanceSDKUserDTO) {
        if (this.callbacks != null) {
            this.callbacks.onRetrieveBehanceUserDetailsSuccess(behanceSDKUserDTO);
        }
        this.retrieveUserDetailsUsingAdobeIDTask = null;
        setRetrieveUserDetailTaskInProgress(false);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler
    public void onRetrieveBehanceUserDetailsFailure(Exception exc) {
        if (this.callbacks != null) {
            this.callbacks.onRetrieveBehanceUserDetailsFailure(exc);
        }
        this.retrieveUserDetailsUsingAdobeIDTask = null;
        setRetrieveUserDetailTaskInProgress(false);
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.retrieveUserDetailsUsingAdobeIDTask != null) {
            this.retrieveUserDetailsUsingAdobeIDTask.cancel(true);
        }
    }
}
