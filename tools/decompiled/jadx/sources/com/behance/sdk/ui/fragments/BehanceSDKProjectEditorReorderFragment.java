package com.behance.sdk.ui.fragments;

import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialog;
import android.support.design.widget.BottomSheetDialogFragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.View;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment;
import com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorReorderRecyclerAdapter;
import com.behance.sdk.ui.adapters.helpers.BehanceSDKDragListener;
import com.behance.sdk.ui.adapters.helpers.BehanceSDKTouchHelperCallback;
import com.behance.sdk.ui.decorators.BehanceSDKSpaceItemDecorationList;
import com.behance.sdk.util.BehanceSDKUIUtils;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorReorderFragment extends BottomSheetDialogFragment implements BehanceSDKDragListener {
    private BehanceSDKProjectEditorHeadlessFragment headlessFragment;
    private BottomSheetBehavior mBehavior;
    private RecyclerView projectEditorReorderRecycler;
    private ItemTouchHelper touchHelper;

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BsdkProjectEditorBottomSheetTheme);
    }

    @Override // android.support.design.widget.BottomSheetDialogFragment, android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) super.onCreateDialog(bundle);
        this.headlessFragment = (BehanceSDKProjectEditorHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT);
        View viewInflate = View.inflate(getContext(), R.layout.bsdk_fragment_project_editor_reorder, null);
        this.projectEditorReorderRecycler = (RecyclerView) viewInflate.findViewById(R.id.project_editor_reorder_recycler);
        bottomSheetDialog.setContentView(viewInflate);
        this.mBehavior = BottomSheetBehavior.from((View) viewInflate.getParent());
        this.mBehavior.setSkipCollapsed(true);
        viewInflate.setMinimumHeight(((int) (getResources().getDisplayMetrics().density * getResources().getConfiguration().screenHeightDp)) - BehanceSDKUIUtils.getActionBarSize(getActivity()));
        this.projectEditorReorderRecycler.setMinimumHeight(((int) (getResources().getDisplayMetrics().density * getResources().getConfiguration().screenHeightDp)) - BehanceSDKUIUtils.getActionBarSize(getActivity()));
        this.projectEditorReorderRecycler.setLayoutManager(new LinearLayoutManager(getActivity(), 1, false));
        this.projectEditorReorderRecycler.setAdapter(new BehanceSDKProjectEditorReorderRecyclerAdapter(getActivity(), this.headlessFragment.getProjectModules(), this));
        this.projectEditorReorderRecycler.addItemDecoration(new BehanceSDKSpaceItemDecorationList(getResources().getDimensionPixelSize(R.dimen.bsdk_reorder_list_spacing)));
        this.touchHelper = new ItemTouchHelper(new BehanceSDKTouchHelperCallback((BehanceSDKProjectEditorReorderRecyclerAdapter) this.projectEditorReorderRecycler.getAdapter()));
        this.touchHelper.attachToRecyclerView(this.projectEditorReorderRecycler);
        return bottomSheetDialog;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.mBehavior.setState(4);
        new Handler().postDelayed(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorReorderFragment.1
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorReorderFragment.this.mBehavior.setState(3);
            }
        }, 100L);
    }

    @Override // com.behance.sdk.ui.adapters.helpers.BehanceSDKDragListener
    public void onDragStarted(RecyclerView.ViewHolder viewHolder) {
        this.touchHelper.startDrag(viewHolder);
    }

    @Override // com.behance.sdk.ui.adapters.helpers.BehanceSDKDragListener
    public void onDragActionComplete(List<BehanceSDKEditProjectModuleAbstract> list) {
        this.headlessFragment.setProjectModules(list);
        ((BehanceSDKProjectEditorContentFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKProjectEditorActivity.FRAGMENT_TAG_CONTENT)).refreshRecycler();
        if (list.size() == 0) {
            dismiss();
        }
    }
}
