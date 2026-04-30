package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.GenericStaggeredCellView;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class StaggeredGridAssetCellView extends GenericStaggeredCellView {
    private static final String T = StaggeredGridAssetCellView.class.getSimpleName();
    private IAdobeCCFilesEditDelegate _editDelegate;
    private View _newSelectionFrame;
    private boolean isSelected = false;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.GenericStaggeredCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected boolean providesSelection() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void prepareForReuse() {
        this.isSelected = false;
        this._newSelectionFrame.setVisibility(8);
        super.prepareForReuse();
    }

    public void setEditDelegate(IAdobeCCFilesEditDelegate iAdobeCCFilesEditDelegate) {
        this._editDelegate = iAdobeCCFilesEditDelegate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void performOnFinishInflate() {
        getRootView().setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.StaggeredGridAssetCellView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.e(StaggeredGridAssetCellView.T, "onClick");
                StaggeredGridAssetCellView.this.handleAssetSelectionToggle();
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

    private void setImageMarkedUnMarked() {
        if (this._newSelectionFrame != null) {
            adjustSelectionFrame();
        }
    }

    public void handleSelection(boolean z) {
        this.isSelected = z;
        setImageMarkedUnMarked();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void handleAfterImageLoadingComplete() {
        super.handleAfterImageLoadingComplete();
        adjustSelectionFrame();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.GenericStaggeredCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleOnFinishInflate() {
        super.handleOnFinishInflate();
        this._cellBottomSection = (LinearLayout) getRootView().findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_bottom_title_section_vertical);
        this._menuIcon = (RelativeLayout) findViewById(R.id.adobe_csdk_files_menu_icon);
        this._menuIconView = (ImageView) findViewById(R.id.adobe_csdk_asset_browser_cell_menu_icon);
        this._stagerredLayout = (RelativeLayout) getRootView().findViewById(R.id.staggeredCellLinearLayout);
        this._menuIcon.setVisibility(8);
        this._newSelectionFrame = getRootView().findViewById(R.id.selection_frame_layout);
    }

    public void adjustSelectionFrame() {
        AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.StaggeredGridAssetCellView.2
            @Override // java.lang.Runnable
            public void run() {
                StaggeredGridAssetCellView.this._newSelectionFrame.setMinimumHeight(StaggeredGridAssetCellView.this._stagerredLayout.getMeasuredHeight());
                StaggeredGridAssetCellView.this._newSelectionFrame.setMinimumWidth(StaggeredGridAssetCellView.this._stagerredLayout.getMeasuredWidth());
                StaggeredGridAssetCellView.this._newSelectionFrame.setVisibility(StaggeredGridAssetCellView.this.isSelected ? 0 : 8);
            }
        }, 100L);
    }
}
