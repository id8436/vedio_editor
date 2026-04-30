package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomSheetDialog;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetMessageRecipientsTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetMessageRecipientsTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKGetMessageRecipientsAsyncTask;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorUserSelectorRecyclerAdapter;
import com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorUsersSelectorDialog extends BehanceSDKProjectEditorSettingSearchAbstractDialog implements IBehanceSDKGetMessageRecipientsTaskListener {
    private Callbacks callbacks;
    private BehanceSDKGetMessageRecipientsAsyncTask task;
    private List<BehanceSDKUserDTO> users;

    public interface Callbacks {
        void onUsersChangeComplete(List<BehanceSDKUserDTO> list);
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog, android.support.design.widget.BottomSheetDialogFragment, android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) super.onCreateDialog(bundle);
        if (this.users == null) {
            if (bundle != null && bundle.containsKey(this.SAVED_INSTANCE_STATE_KEY_DATA)) {
                this.users = (List) bundle.getSerializable(this.SAVED_INSTANCE_STATE_KEY_DATA);
            } else {
                this.users = new ArrayList();
            }
        }
        attachTouchHelperAndSetAdapter(new BehanceSDKProjectEditorUserSelectorRecyclerAdapter(getActivity(), this.users, this, this.type == BehanceSDKProjectEditorSettingSearchAbstractDialog.Type.CO_OWNERS ? R.string.bsdk_project_editor_add_co_owner : R.string.bsdk_project_editor_add_credit));
        return bottomSheetDialog;
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog
    protected void search(String str, @Nullable String str2) {
        if (this.task != null) {
            this.task.cancel(true);
        }
        this.task = new BehanceSDKGetMessageRecipientsAsyncTask(this);
        BehanceSDKGetMessageRecipientsTaskParams behanceSDKGetMessageRecipientsTaskParams = new BehanceSDKGetMessageRecipientsTaskParams();
        behanceSDKGetMessageRecipientsTaskParams.setQuery(str);
        behanceSDKGetMessageRecipientsTaskParams.setClientId(BehanceSDK.getInstance().getClientId());
        this.task.execute(behanceSDKGetMessageRecipientsTaskParams);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.Callbacks
    public void onSelectedItemsChanged(List list) {
        if (this.callbacks != null) {
            this.callbacks.onUsersChangeComplete(list);
        }
    }

    public void setUsers(List<BehanceSDKUserDTO> list) {
        this.users = list;
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(this.SAVED_INSTANCE_STATE_KEY_DATA, (Serializable) this.users);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetMessageRecipientsTaskListener
    public void onGetMessageRecipientSuggestionsTaskSuccess(List<BehanceSDKUserDTO> list) {
        this.task = null;
        if (list != null && !list.isEmpty()) {
            Iterator<BehanceSDKUserDTO> it = list.iterator();
            while (it.hasNext()) {
                BehanceSDKUserDTO next = it.next();
                Iterator<BehanceSDKUserDTO> it2 = this.users.iterator();
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
        ((BehanceSDKProjectEditorUserSelectorRecyclerAdapter) this.bsdkEditorSettingDetailRecycler.getAdapter()).updateSelectableItems(list);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetMessageRecipientsTaskListener
    public void onGetMessageRecipientSuggestionsTaskCancel() {
        this.task = null;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetMessageRecipientsTaskListener
    public void onGetMessageRecipientSuggestionsTaskFailure(Exception exc) {
        this.task = null;
    }
}
