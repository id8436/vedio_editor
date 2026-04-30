package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.GridFolderCellView;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class StaggeredGridFolderCellView extends GridFolderCellView {
    private static final String T = StaggeredGridFolderCellView.class.getSimpleName();
    private IAdobeCCFilesEditDelegate _editDelegate;
    private View _newSelectionFrame;
    private boolean isSelected = false;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.GridFolderCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected boolean providesSelection() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.GridFolderCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void prepareForReuse() {
        this.isSelected = false;
        super.prepareForReuse();
    }

    public void setEditDelegate(IAdobeCCFilesEditDelegate iAdobeCCFilesEditDelegate) {
        this._editDelegate = iAdobeCCFilesEditDelegate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void performOnFinishInflate() {
        getRootView().setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.StaggeredGridFolderCellView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.e(StaggeredGridFolderCellView.T, "onClick");
                StaggeredGridFolderCellView.this.handleAssetSelectionToggle();
            }
        });
        super.performOnFinishInflate();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void setClickListener(View.OnClickListener onClickListener) {
        AdobeLogger.log(Level.WARN, T, "click listener ignored");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAssetSelectionToggle() {
        if (this._editDelegate.getControllerState()) {
            this.isSelected = !this.isSelected;
            setImageMarkedUnMarked();
            this._editDelegate.handleAssetSelectionToggle(getPosition());
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleDisableChange() {
    }

    private void setImageMarkedUnMarked() {
        if (this._newSelectionFrame != null) {
            adjustSelectionFrame();
        }
    }

    public void handleSelection(boolean z) {
        this.isSelected = z;
        setImageMarkedUnMarked();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.GridFolderCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleOnFinishInflate() {
        super.handleOnFinishInflate();
        ((ImageView) getRootView().findViewById(R.id.forwardIcon)).setVisibility(8);
        this._stagerredLayout = (RelativeLayout) getRootView().findViewById(R.id.staggeredCellLinearLayout);
        this._newSelectionFrame = getRootView().findViewById(R.id.selection_frame_layout);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.GridFolderCellView
    public void resetFolderView(boolean z, boolean z2, boolean z3, boolean z4) {
        RelativeLayout relativeLayout = (RelativeLayout) getRootView();
        View viewInflate = ((LayoutInflater) getRootView().getContext().getSystemService("layout_inflater")).inflate(R.layout.adobe_assetcell_disable, (ViewGroup) relativeLayout, false);
        viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (z3) {
            viewInflate.setVisibility(0);
            relativeLayout.addView(viewInflate, 1);
        } else {
            getRootView().setEnabled(true);
            if (((RelativeLayout) relativeLayout.findViewById(R.id.adobe_assetcell_disable_view)) != null) {
                relativeLayout.removeViewAt(1);
            }
            setImageMarkedUnMarked();
        }
        super.resetFolderView(z, z2, z3, false);
    }

    public void adjustSelectionFrame() {
        AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.StaggeredGridFolderCellView.2
            @Override // java.lang.Runnable
            public void run() {
                StaggeredGridFolderCellView.this._newSelectionFrame.setMinimumHeight(StaggeredGridFolderCellView.this._stagerredLayout.getMeasuredHeight());
                StaggeredGridFolderCellView.this._newSelectionFrame.setMinimumWidth(StaggeredGridFolderCellView.this._stagerredLayout.getMeasuredWidth());
                StaggeredGridFolderCellView.this._newSelectionFrame.setVisibility(StaggeredGridFolderCellView.this.isSelected ? 0 : 8);
            }
        }, 100L);
    }
}
