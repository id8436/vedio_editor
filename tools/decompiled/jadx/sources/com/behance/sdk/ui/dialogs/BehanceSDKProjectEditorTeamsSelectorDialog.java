package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomSheetDialog;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetTeamsTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetTeamsParams;
import com.behance.sdk.asynctasks.BehanceSDKGetTeamsAsyncTask;
import com.behance.sdk.dto.search.BehanceSDKTeamDTO;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorTeamsSelectorDialog extends BehanceSDKProjectEditorSettingSearchAbstractDialog implements IBehanceSDKGetTeamsTaskListener {
    private Callbacks callbacks;
    private BehanceSDKGetTeamsAsyncTask task;
    private List<BehanceSDKTeamDTO> teams;

    public interface Callbacks {
        void onTeamsChangeComplete(List<BehanceSDKTeamDTO> list);
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog, android.support.design.widget.BottomSheetDialogFragment, android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) super.onCreateDialog(bundle);
        if (this.teams == null) {
            if (bundle != null && bundle.containsKey(this.SAVED_INSTANCE_STATE_KEY_DATA)) {
                this.teams = (List) bundle.getSerializable(this.SAVED_INSTANCE_STATE_KEY_DATA);
            } else {
                this.teams = new ArrayList();
            }
        }
        attachTouchHelperAndSetAdapter(new BehanceSDKProjectEditorTeamSelectorRecyclerAdapter(getActivity(), this.teams, this));
        return bottomSheetDialog;
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog
    protected void search(String str, @Nullable String str2) {
        if (this.task != null) {
            this.task.cancel(true);
        }
        this.task = new BehanceSDKGetTeamsAsyncTask(this);
        BehanceSDKGetTeamsParams behanceSDKGetTeamsParams = new BehanceSDKGetTeamsParams();
        behanceSDKGetTeamsParams.setSearchString(str);
        behanceSDKGetTeamsParams.setClientId(BehanceSDK.getInstance().getClientId());
        this.task.execute(behanceSDKGetTeamsParams);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.Callbacks
    public void onSelectedItemsChanged(List list) {
        if (this.callbacks != null) {
            this.callbacks.onTeamsChangeComplete(list);
        }
    }

    public void setTeams(List<BehanceSDKTeamDTO> list) {
        this.teams = list;
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(this.SAVED_INSTANCE_STATE_KEY_DATA, (Serializable) this.teams);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetTeamsTaskListener
    public void onGetTeamsFailure(Exception exc) {
        this.task = null;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetTeamsTaskListener
    public void onGetTeamsSuccess(List<BehanceSDKTeamDTO> list) {
        this.task = null;
        if (list != null && !list.isEmpty()) {
            Iterator<BehanceSDKTeamDTO> it = list.iterator();
            while (it.hasNext()) {
                BehanceSDKTeamDTO next = it.next();
                Iterator<BehanceSDKTeamDTO> it2 = this.teams.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (next.getId() == it2.next().getId()) {
                            it.remove();
                            break;
                        }
                    }
                }
            }
        }
        ((BehanceSDKProjectEditorTeamSelectorRecyclerAdapter) this.bsdkEditorSettingDetailRecycler.getAdapter()).updateSelectableItems(list);
    }
}
