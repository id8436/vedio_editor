package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.SectionalListAssetEditCellView;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CCFilesProviderListView extends EditSectionalListView {
    public static String T = CCFilesProviderListView.class.getSimpleName();

    public CCFilesProviderListView(Context context) {
        super(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView
    protected void enableController() {
        super.enableController();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView
    protected void disableController() {
        super.disableController();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemClick(int i) {
        AdobeAssetData item = this._assetsItemsAdapter.getItem(i);
        AdobeAsset adobeAsset = item != null ? (AdobeAsset) item.originalAsset : null;
        if (adobeAsset != null) {
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = this._parentContainer.get();
            if (adobeAsset instanceof AdobeAssetFolder) {
                clearSelection();
                if (iAdobeAssetContainerListViewDelegate != null) {
                    iAdobeAssetContainerListViewDelegate.navigateToCollection(getFolderNavigationCommand(adobeAsset));
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView
    public ArrayList<AdobeAsset> getSelectedAssets() {
        return super.getSelectedAssets();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected AssetsRecyclerView.AssetsListViewBaseAdapter createAssetItemsAdapter(Context context) {
        return new CCFilesProviderListItemsAdapater(context);
    }

    public class CCFilesProviderListItemsAdapater extends EditSectionalListView.CCFilesAssetsEditSectionalListItemsAdapater {
        public CCFilesProviderListItemsAdapater(Context context) {
            super(context);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView.CCFilesAssetsEditSectionalListItemsAdapater, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFileCellView(ViewGroup viewGroup) {
            return super.createAssetFileCellView(viewGroup);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView.CCFilesAssetsEditSectionalListItemsAdapater, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFolderCellView(ViewGroup viewGroup) {
            ListDocProviderFolderCellView listDocProviderFolderCellView = new ListDocProviderFolderCellView();
            listDocProviderFolderCellView.initializeFromLayout(CCFilesProviderListView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_assetview_list_folderviewcell, viewGroup);
            listDocProviderFolderCellView.setFolderMetrics(true);
            return listDocProviderFolderCellView;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView.CCFilesAssetsEditSectionalListItemsAdapater, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            boolean zIsAssetCellViewAlreadyRepresentAsset = super.isAssetCellViewAlreadyRepresentAsset(assetListCellView, adobeAssetData);
            if (zIsAssetCellViewAlreadyRepresentAsset && (assetListCellView instanceof SectionalListAssetEditCellView)) {
                ((SectionalListAssetEditCellView) assetListCellView).handleSelection(CCFilesProviderListView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
            }
            return zIsAssetCellViewAlreadyRepresentAsset;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView.CCFilesAssetsEditSectionalListItemsAdapater, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void bindAssetCellViewToAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            super.bindAssetCellViewToAsset(assetListCellView, adobeAssetData, i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView.CCFilesAssetsEditSectionalListItemsAdapater, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void handlePostCellViewBinding(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            super.handlePostCellViewBinding(assetListCellView, adobeAssetData, i);
            if (assetListCellView instanceof SectionalListAssetEditCellView) {
                ((SectionalListAssetEditCellView) assetListCellView).handleSelection(CCFilesProviderListView.this.isAssetSelected((AdobeAsset) adobeAssetData.originalAsset));
            }
        }
    }
}
