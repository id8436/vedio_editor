package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialog;
import android.support.design.widget.BottomSheetDialogFragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.View;
import com.behance.sdk.R;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter;
import com.behance.sdk.ui.adapters.helpers.BehanceSDKTouchHelperCallback;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;
import com.behance.sdk.ui.decorators.BehanceSDKDividerItemDecoration;
import com.behance.sdk.util.BehanceSDKUIUtils;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BehanceSDKProjectEditorSettingSearchAbstractDialog extends BottomSheetDialogFragment implements BehanceSDKProjectEditorSettingSelectorAbstractAdapter.Callbacks {
    protected String SAVED_INSTANCE_STATE_KEY_DATA = "SAVED_INSTANCE_STATE_KEY_DATA";
    private String SAVED_INSTANCE_STATE_KEY_TYPE = "SAVED_INSTANCE_STATE_KEY_TYPE";
    protected RecyclerView bsdkEditorSettingDetailRecycler;
    private BehanceSDKTextView bsdkEditorSettingDetailToolbarTitle;
    private BottomSheetBehavior mBehavior;
    protected Type type;

    public enum Type implements Serializable {
        TOOLS,
        COMPANIES,
        CO_OWNERS,
        CREDITS,
        TEAMS
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BsdkProjectEditorBottomSheetTheme);
    }

    @Override // android.support.design.widget.BottomSheetDialogFragment, android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) super.onCreateDialog(bundle);
        View viewInflate = View.inflate(getContext(), R.layout.bsdk_dialog_project_editor_setting_details, null);
        bottomSheetDialog.setContentView(viewInflate);
        this.mBehavior = BottomSheetBehavior.from((View) viewInflate.getParent());
        this.mBehavior.setSkipCollapsed(true);
        viewInflate.setMinimumHeight(((int) (getResources().getDisplayMetrics().density * getResources().getConfiguration().screenHeightDp)) - BehanceSDKUIUtils.getActionBarSize(getActivity()));
        if (bundle != null) {
            this.type = (Type) bundle.getSerializable(this.SAVED_INSTANCE_STATE_KEY_TYPE);
        }
        this.bsdkEditorSettingDetailToolbarTitle = (BehanceSDKTextView) viewInflate.findViewById(R.id.bsdk_editor_setting_detail_toolbar_title);
        if (this.type != null) {
            switch (this.type) {
                case TOOLS:
                    this.bsdkEditorSettingDetailToolbarTitle.setText(R.string.bsdk_project_editor_settings_field_tools);
                    break;
                case COMPANIES:
                    this.bsdkEditorSettingDetailToolbarTitle.setText(R.string.bsdk_project_editor_settings_field_companies);
                    break;
                case CO_OWNERS:
                    this.bsdkEditorSettingDetailToolbarTitle.setText(R.string.bsdk_project_editor_settings_field_co_owners);
                    break;
                case CREDITS:
                    this.bsdkEditorSettingDetailToolbarTitle.setText(R.string.bsdk_project_editor_settings_field_credits);
                    break;
                case TEAMS:
                    this.bsdkEditorSettingDetailToolbarTitle.setText(R.string.bsdk_project_editor_settings_field_teams);
                    break;
            }
        }
        this.bsdkEditorSettingDetailRecycler = (RecyclerView) viewInflate.findViewById(R.id.bsdk_editor_setting_detail_recycler);
        this.bsdkEditorSettingDetailRecycler.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.bsdkEditorSettingDetailRecycler.addItemDecoration(new BehanceSDKDividerItemDecoration(getActivity(), R.drawable.bsdk_shape_divider, getResources().getDimensionPixelSize(R.dimen.bsdk_editor_setting_detail_padding_horizontal)));
        return bottomSheetDialog;
    }

    protected void attachTouchHelperAndSetAdapter(BehanceSDKProjectEditorSettingSelectorAbstractAdapter behanceSDKProjectEditorSettingSelectorAbstractAdapter) {
        BehanceSDKTouchHelperCallback behanceSDKTouchHelperCallback = new BehanceSDKTouchHelperCallback(behanceSDKProjectEditorSettingSelectorAbstractAdapter);
        behanceSDKTouchHelperCallback.setLongPressDragEnabled(false);
        new ItemTouchHelper(behanceSDKTouchHelperCallback).attachToRecyclerView(this.bsdkEditorSettingDetailRecycler);
        this.bsdkEditorSettingDetailRecycler.setAdapter(behanceSDKProjectEditorSettingSelectorAbstractAdapter);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.mBehavior.setState(4);
        new Handler().postDelayed(new Runnable() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog.1
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorSettingSearchAbstractDialog.this.mBehavior.setState(3);
            }
        }, 100L);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.Callbacks
    public void onSearchTextChanged(String str) {
        if (str.length() >= 3) {
            switch (this.type) {
                case TOOLS:
                    search(str, "1");
                    break;
                case COMPANIES:
                    search(str, "2|4");
                    break;
                case CO_OWNERS:
                case CREDITS:
                case TEAMS:
                    search(str, null);
                    break;
            }
        }
    }

    protected void search(String str, @Nullable String str2) {
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(this.SAVED_INSTANCE_STATE_KEY_TYPE, this.type);
    }

    public void setType(Type type) {
        this.type = type;
    }
}
