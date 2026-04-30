package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class EditGridView extends CCFilesGridView {
    private static final String T = EditGridView.class.getSimpleName();
    private HashMap<String, AdobeAssetData> _assetsList;
    private WeakReference<IAdobeAssetViewEditFragmentControllerCallback> controllerCallback;
    private boolean isControllerEnabled;

    public EditGridView(Context context) {
        super(context);
        this._assetsList = new HashMap<>();
        this.isControllerEnabled = true;
    }

    protected void enableController() {
        this.isControllerEnabled = true;
    }

    protected void disableController() {
        this.isControllerEnabled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean controllerState() {
        return this.isControllerEnabled;
    }

    public void clearSelection() {
        this._assetsList.clear();
        refreshDueToDataChange();
    }

    public void setControllerCallback(IAdobeAssetViewEditFragmentControllerCallback iAdobeAssetViewEditFragmentControllerCallback) {
        this.controllerCallback = new WeakReference<>(iAdobeAssetViewEditFragmentControllerCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSelectedAsset(AdobeAssetData adobeAssetData) {
        this._assetsList.put(adobeAssetData.guid, adobeAssetData);
        handleAssetCountEvent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAssetSelected(AdobeAsset adobeAsset) {
        return this._assetsList != null && this._assetsList.containsKey(adobeAsset.getGUID());
    }

    private void handleAssetCountEvent() {
        IAdobeAssetViewEditFragmentControllerCallback iAdobeAssetViewEditFragmentControllerCallback;
        if (this.controllerCallback != null && this.controllerCallback.get() != null && (iAdobeAssetViewEditFragmentControllerCallback = this.controllerCallback.get()) != null) {
            if (this._assetsList.size() == 0) {
                iAdobeAssetViewEditFragmentControllerCallback.handleNoAssetSelection();
            } else if (this._assetsList.size() == 1) {
                iAdobeAssetViewEditFragmentControllerCallback.handleSingleAssetSelection();
            } else {
                iAdobeAssetViewEditFragmentControllerCallback.handleMultipleAssetSelection(this._assetsList.size());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSelectedAsset(String str) {
        if (this._assetsList.containsKey(str)) {
            this._assetsList.remove(str);
            handleAssetCountEvent();
        }
    }

    protected ArrayList<AdobeAsset> getSelectedAssets() {
        ArrayList<AdobeAsset> arrayList = new ArrayList<>();
        Iterator<AdobeAssetData> it = this._assetsList.values().iterator();
        while (it.hasNext()) {
            arrayList.add((AdobeAsset) it.next().originalAsset);
        }
        return arrayList;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemClick(int i) {
        Log.e(T, "handleListItemClick");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemLongClick(int i) {
        Log.e(T, "handleListItemClick");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void performInitialization(Context context) {
        super.performInitialization(context);
        this._swipeRefreshLayout.setEnabled(false);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected AssetsRecyclerView.AssetsListViewBaseAdapter createAssetItemsAdapter(Context context) {
        return new CCFilesAssetsEditStaggeredGridAdapater(context);
    }

    public class CCFilesAssetsEditStaggeredGridAdapater extends CCFilesGridView.CCFilesAssetsStaggeredGridAdapter implements IAdobeCCFilesEditDelegate {
        public CCFilesAssetsEditStaggeredGridAdapater(Context context) {
            super(context);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            boolean zIsAssetCellViewAlreadyRepresentAsset = super.isAssetCellViewAlreadyRepresentAsset(assetListCellView, adobeAssetData);
            if (zIsAssetCellViewAlreadyRepresentAsset) {
                if (assetListCellView instanceof StaggeredGridAssetCellView) {
                    ((StaggeredGridAssetCellView) assetListCellView).handleSelection(EditGridView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
                    ((StaggeredGridAssetCellView) assetListCellView).adjustSelectionFrame();
                } else if (assetListCellView instanceof StaggeredGridFolderCellView) {
                    ((StaggeredGridFolderCellView) assetListCellView).handleSelection(EditGridView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
                }
            }
            return zIsAssetCellViewAlreadyRepresentAsset;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesEditDelegate
        public void handleAssetSelectionToggle(int i) {
            Log.e(EditGridView.T, "handleAssetSelectionToggle");
            AdobeAssetData assetItemData = getAssetItemData(i);
            if (!EditGridView.this.isAssetSelected((AdobeAsset) assetItemData.originalAsset)) {
                EditGridView.this.addSelectedAsset(assetItemData);
            } else {
                EditGridView.this.removeSelectedAsset(assetItemData.guid);
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesEditDelegate
        public boolean getControllerState() {
            return EditGridView.this.controllerState();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void bindAssetCellViewToAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            super.bindAssetCellViewToAsset(assetListCellView, adobeAssetData, i);
            if (assetListCellView instanceof StaggeredGridAssetCellView) {
                ((StaggeredGridAssetCellView) assetListCellView).adjustSelectionFrame();
            } else if (assetListCellView instanceof StaggeredGridFolderCellView) {
                ((StaggeredGridFolderCellView) assetListCellView).adjustSelectionFrame();
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void handlePostCellViewBinding(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            super.handlePostCellViewBinding(assetListCellView, adobeAssetData, i);
            if (assetListCellView instanceof StaggeredGridAssetCellView) {
                ((StaggeredGridAssetCellView) assetListCellView).handleSelection(EditGridView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
            }
            if (assetListCellView instanceof StaggeredGridFolderCellView) {
                ((StaggeredGridFolderCellView) assetListCellView).handleSelection(EditGridView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView.CCFilesAssetsStaggeredGridAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFileCellView(ViewGroup viewGroup) {
            StaggeredGridAssetCellView staggeredGridAssetCellView = new StaggeredGridAssetCellView();
            staggeredGridAssetCellView.initializeFromLayout(EditGridView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_generic_staggered_assetviewcell, viewGroup);
            staggeredGridAssetCellView.setEditDelegate(this);
            return staggeredGridAssetCellView;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView.CCFilesAssetsStaggeredGridAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFolderCellView(ViewGroup viewGroup) {
            StaggeredGridFolderCellView staggeredGridFolderCellView = new StaggeredGridFolderCellView();
            staggeredGridFolderCellView.setEditDelegate(this);
            staggeredGridFolderCellView.initializeFromLayout(EditGridView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_assetview_assetsgrid_folderviewcell, viewGroup);
            return staggeredGridFolderCellView;
        }
    }
}
