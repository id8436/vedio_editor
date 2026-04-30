package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class EditSectionalListView extends CCFilesSectionListView {
    private static final String T = EditSectionalListView.class.getSimpleName();
    private HashMap<String, AdobeAssetData> _assetsList;
    private WeakReference<IAdobeAssetViewEditFragmentControllerCallback> controllerCallback;
    private boolean isControllerEnabled;

    public EditSectionalListView(Context context) {
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
        Log.e(T, "clearSelection");
        this._assetsList.clear();
        refreshDueToDataChange();
    }

    public void setControllerCallback(IAdobeAssetViewEditFragmentControllerCallback iAdobeAssetViewEditFragmentControllerCallback) {
        this.controllerCallback = new WeakReference<>(iAdobeAssetViewEditFragmentControllerCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSelectedAsset(AdobeAssetData adobeAssetData) {
        Log.e(T, "addSelectedAsset");
        this._assetsList.put(adobeAssetData.guid, adobeAssetData);
        handleAssetCountEvent();
    }

    protected boolean isAssetSelected(AdobeAsset adobeAsset) {
        return this._assetsList != null && this._assetsList.containsKey(adobeAsset.getGUID());
    }

    private void handleAssetCountEvent() {
        IAdobeAssetViewEditFragmentControllerCallback iAdobeAssetViewEditFragmentControllerCallback;
        Log.e(T, "handleAssetCountEvent");
        if (this.controllerCallback != null && (iAdobeAssetViewEditFragmentControllerCallback = this.controllerCallback.get()) != null) {
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

    public ArrayList<AdobeAsset> getSelectedAssets() {
        ArrayList<AdobeAsset> arrayList = new ArrayList<>();
        Iterator<AdobeAssetData> it = this._assetsList.values().iterator();
        while (it.hasNext()) {
            arrayList.add((AdobeAsset) it.next().originalAsset);
        }
        return arrayList;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemClick(int i) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemLongClick(int i) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void performInitialization(Context context) {
        super.performInitialization(context);
        this._swipeRefreshLayout.setEnabled(false);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected AssetsRecyclerView.AssetsListViewBaseAdapter createAssetItemsAdapter(Context context) {
        return new CCFilesAssetsEditSectionalListItemsAdapater(context);
    }

    public class CCFilesAssetsEditSectionalListItemsAdapater extends CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter implements IAdobeCCFilesEditDelegate {
        public CCFilesAssetsEditSectionalListItemsAdapater(Context context) {
            super(context);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesEditDelegate
        public void handleAssetSelectionToggle(int i) {
            Log.e(EditSectionalListView.T, "handleAssetSelectionToggle");
            AdobeAssetData assetItemData = getAssetItemData(i);
            if (!EditSectionalListView.this.isAssetSelected((AdobeAsset) assetItemData.originalAsset)) {
                EditSectionalListView.this.addSelectedAsset(assetItemData);
            } else {
                EditSectionalListView.this.removeSelectedAsset(assetItemData.guid);
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesEditDelegate
        public boolean getControllerState() {
            return EditSectionalListView.this.controllerState();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFileCellView(ViewGroup viewGroup) {
            SectionalListAssetEditCellView sectionalListAssetEditCellView = new SectionalListAssetEditCellView();
            sectionalListAssetEditCellView.initializeFromLayout(EditSectionalListView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_assetview_list_assetviewcell, viewGroup);
            sectionalListAssetEditCellView.setEditDelegate(this);
            return sectionalListAssetEditCellView;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFolderCellView(ViewGroup viewGroup) {
            SectionalListFolderEditCellView sectionalListFolderEditCellView = new SectionalListFolderEditCellView();
            sectionalListFolderEditCellView.initializeFromLayout(EditSectionalListView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_assetview_list_folderviewcell, viewGroup);
            sectionalListFolderEditCellView.setEditDelegate(this);
            return sectionalListFolderEditCellView;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            boolean zIsAssetCellViewAlreadyRepresentAsset = super.isAssetCellViewAlreadyRepresentAsset(assetListCellView, adobeAssetData);
            if (zIsAssetCellViewAlreadyRepresentAsset) {
                if (assetListCellView instanceof SectionalListAssetEditCellView) {
                    ((SectionalListAssetEditCellView) assetListCellView).handleSelection(EditSectionalListView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
                } else if (assetListCellView instanceof SectionalListFolderEditCellView) {
                    ((SectionalListFolderEditCellView) assetListCellView).handleSelection(EditSectionalListView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
                }
            }
            return zIsAssetCellViewAlreadyRepresentAsset;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void bindAssetCellViewToAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            super.bindAssetCellViewToAsset(assetListCellView, adobeAssetData, i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void handlePostCellViewBinding(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            super.handlePostCellViewBinding(assetListCellView, adobeAssetData, i);
            if (assetListCellView instanceof SectionalListAssetEditCellView) {
                ((SectionalListAssetEditCellView) assetListCellView).handleSelection(EditSectionalListView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
            }
            if (assetListCellView instanceof SectionalListFolderEditCellView) {
                ((SectionalListFolderEditCellView) assetListCellView).handleSelection(EditSectionalListView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
            }
        }
    }
}
