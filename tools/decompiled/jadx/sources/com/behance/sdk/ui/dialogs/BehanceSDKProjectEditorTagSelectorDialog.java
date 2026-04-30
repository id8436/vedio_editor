package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomSheetDialog;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.listeners.IBehanceSDKSearchTagsTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKSearchTagsAsyncTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKSearchTagsAsyncTask;
import com.behance.sdk.dto.BehanceSDKTagDTO;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;
import com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorTagSelectorDialog extends BehanceSDKProjectEditorSettingSearchAbstractDialog implements IBehanceSDKSearchTagsTaskListener {
    private Callbacks callbacks;
    private List<BehanceSDKTagDTO> tags;

    public interface Callbacks {
        void onTagsChangedComplete(List<BehanceSDKTagDTO> list);
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog, android.support.design.widget.BottomSheetDialogFragment, android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) super.onCreateDialog(bundle);
        if (this.tags == null) {
            if (bundle != null && bundle.containsKey(this.SAVED_INSTANCE_STATE_KEY_DATA)) {
                this.tags = (List) bundle.getSerializable(this.SAVED_INSTANCE_STATE_KEY_DATA);
            } else {
                this.tags = new ArrayList();
            }
        }
        attachTouchHelperAndSetAdapter(new BehanceSDKProjectEditorTagsSelectorRecyclerAdapter(getActivity(), this.tags, this, this.type == BehanceSDKProjectEditorSettingSearchAbstractDialog.Type.TOOLS ? R.string.bsdk_project_editor_add_tool : R.string.bsdk_project_editor_add_company_school));
        return bottomSheetDialog;
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog
    protected void search(String str, @Nullable String str2) {
        BehanceSDKSearchTagsAsyncTask behanceSDKSearchTagsAsyncTask = new BehanceSDKSearchTagsAsyncTask(this);
        BehanceSDKSearchTagsAsyncTaskParams behanceSDKSearchTagsAsyncTaskParams = new BehanceSDKSearchTagsAsyncTaskParams();
        behanceSDKSearchTagsAsyncTaskParams.setClientId(BehanceSDK.getInstance().getClientId());
        behanceSDKSearchTagsAsyncTaskParams.setTextQuery(str);
        behanceSDKSearchTagsAsyncTaskParams.setCategories(str2);
        behanceSDKSearchTagsAsyncTask.execute(behanceSDKSearchTagsAsyncTaskParams);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.Callbacks
    public void onSelectedItemsChanged(List list) {
        if (this.callbacks != null) {
            this.callbacks.onTagsChangedComplete(list);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKSearchTagsTaskListener
    public void onSearchTagsSuccess(List<BehanceSDKTagDTO> list) {
        if (list != null && !list.isEmpty()) {
            Iterator<BehanceSDKTagDTO> it = list.iterator();
            while (it.hasNext()) {
                BehanceSDKTagDTO next = it.next();
                Iterator<BehanceSDKTagDTO> it2 = this.tags.iterator();
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
        ((BehanceSDKProjectEditorTagsSelectorRecyclerAdapter) this.bsdkEditorSettingDetailRecycler.getAdapter()).updateSelectableItems(list);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKSearchTagsTaskListener
    public void onSearchTagsFailure(Exception exc) {
    }

    public void setTags(List<BehanceSDKTagDTO> list) {
        this.tags = list;
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(this.SAVED_INSTANCE_STATE_KEY_DATA, (Serializable) this.tags);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }
}
