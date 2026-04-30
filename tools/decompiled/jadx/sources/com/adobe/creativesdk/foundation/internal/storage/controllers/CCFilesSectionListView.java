package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetCellViews;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.DividerDecoration;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.m.a.b;
import com.m.a.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CCFilesSectionListView extends CCFilesListView {
    private RecyclerView _recyclerView;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView
    protected CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter createUploadCombinedAdapter() {
        return new LocalUploadAssetsCCFilesCombinedListAdapter(getHostActivity());
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected Bitmap loadAssetRenditionFromCache(String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean addAssetRenditionToCache(byte[] bArr, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean addAssetRenditionToCache(Bitmap bitmap, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        return true;
    }

    public CCFilesSectionListView(Context context) {
        super(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected View getMainRootView(Context context) {
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.adobe_storage_assets_listview, new FrameLayout(context));
        this._swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.adobe_csdk_listview_swipe_refresh_layout);
        this._recyclerView = (RecyclerView) viewInflate.findViewById(R.id.adobe_csdk_storage_assetbrowser_listView);
        return viewInflate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView getConcreteRecyclerView(Context context) {
        return this._recyclerView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected AssetsRecyclerView.AssetsListViewBaseAdapter createAssetItemsAdapter(Context context) {
        return new CCFilesAssetsSectionalListItemsAdapter(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView.ItemDecoration getItemDecoration(RecyclerView recyclerView, Context context) {
        return new DividerDecoration(context, (int) context.getResources().getDimension(R.dimen.adobe_csdk_assetbrowser_list_view_image_margin_left_margin));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView.LayoutManager getLayoutManager(Context context) {
        return new LinearLayoutManager(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void resetFolderView(AssetListCellView assetListCellView, boolean z, boolean z2, boolean z3) {
        ((SectionalListFolderCellView) assetListCellView).resetFolderView(z, z2, z3);
    }

    public class CCFilesAssetsSectionalListItemsAdapter extends CCFilesListView.CCFilesAssetsListViewBaseAdapter {
        AssetListSectionalAdapter _sectionalAdapter;
        c headersDecor;

        public CCFilesAssetsSectionalListItemsAdapter(Context context) {
            super(context);
            this._sectionalAdapter = null;
            this.headersDecor = null;
            this._sectionalAdapter = CCFilesSectionListView.this.new AssetListSectionalAdapter(this);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected void setCCFolderViewAsShared(AssetListCellView assetListCellView, AdobeAssetFolder adobeAssetFolder, boolean z, boolean z2) {
            ((SectionalListFolderCellView) assetListCellView).setSharedFolder(z, z2);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFolderCellView(ViewGroup viewGroup) {
            SectionalListFolderCellView sectionalListFolderCellView = new SectionalListFolderCellView();
            sectionalListFolderCellView.initializeFromLayout(CCFilesSectionListView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_assetview_list_folderviewcell, viewGroup);
            sectionalListFolderCellView.setFolderMetrics(true);
            return sectionalListFolderCellView;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFileCellView(ViewGroup viewGroup) {
            SectionalListAssetCellView sectionalListAssetCellView = new SectionalListAssetCellView();
            sectionalListAssetCellView.initializeFromLayout(CCFilesSectionListView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_assetview_list_assetviewcell, viewGroup);
            return sectionalListAssetCellView;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        public RecyclerView.Adapter getRealAdapter() {
            if (this.headersDecor == null) {
                this.headersDecor = new c(this._sectionalAdapter);
                CCFilesSectionListView.this._recyclerView.addItemDecoration(this.headersDecor);
                this._sectionalAdapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter.1
                    @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
                    public void onChanged() {
                        CCFilesAssetsSectionalListItemsAdapter.this.headersDecor.a();
                    }
                });
            }
            return this._sectionalAdapter;
        }

        public boolean checkIfLastRowInSection(int i) {
            return CCFilesSectionListView.this._ccfilesDataSource.getAdobeStorageSortIndexCollation().checkIfLastInSection(i);
        }

        public void removeHeaders() {
            CCFilesSectionListView.this._recyclerView.removeItemDecoration(this.headersDecor);
            this.headersDecor = null;
        }

        public int getSectionForPosition(int i) {
            return CCFilesSectionListView.this._ccfilesDataSource.getAdobeStorageSortIndexCollation().getSectionForPosition(i);
        }

        public String[] getSections() {
            ArrayList<String> arrayListSectionTitles = CCFilesSectionListView.this._ccfilesDataSource.getAdobeStorageSortIndexCollation().sectionTitles();
            return (String[]) arrayListSectionTitles.toArray(new String[arrayListSectionTitles.size()]);
        }
    }

    class AssetListSectionalAdapter extends RecyclerView.Adapter<AssetsRecyclerView.CellViewHolder> implements b {
        CCFilesAssetsSectionalListItemsAdapter _assetsListItemsAdapter;

        public AssetListSectionalAdapter(CCFilesAssetsSectionalListItemsAdapter cCFilesAssetsSectionalListItemsAdapter) {
            this._assetsListItemsAdapter = null;
            this._assetsListItemsAdapter = cCFilesAssetsSectionalListItemsAdapter;
        }

        @Override // com.m.a.b
        public long getHeaderId(int i) {
            return getSectionForPosition(i);
        }

        @Override // com.m.a.b
        public RecyclerView.ViewHolder onCreateHeaderViewHolder(ViewGroup viewGroup) {
            return new RecyclerView.ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.adobe_storage_assetslist_headerview, viewGroup, false)) { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView.AssetListSectionalAdapter.1
            };
        }

        @Override // com.m.a.b
        public void onBindHeaderViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ((TextView) viewHolder.itemView.findViewById(R.id.adobe_csdk_storage_assetslist_group_header_view)).setText(getSections()[getSectionForPosition(i)]);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public AssetsRecyclerView.CellViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return this._assetsListItemsAdapter.onCreateViewHolder(viewGroup, i);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(AssetsRecyclerView.CellViewHolder cellViewHolder, int i) {
            this._assetsListItemsAdapter.onBindViewHolder(cellViewHolder, i);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this._assetsListItemsAdapter.getItemCount();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return this._assetsListItemsAdapter.getItemViewType(i);
        }

        public int getSectionForPosition(int i) {
            return this._assetsListItemsAdapter.getSectionForPosition(i);
        }

        public String[] getSections() {
            return this._assetsListItemsAdapter.getSections();
        }
    }

    public class LocalUploadAssetsCCFilesCombinedListAdapter extends CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter {
        private LocalAssetListSectionalAdapter _sectionalAdapter;

        public LocalUploadAssetsCCFilesCombinedListAdapter(Context context) {
            super(context);
            this._sectionalAdapter = null;
            this._sectionalAdapter = new LocalAssetListSectionalAdapter(this);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        public RecyclerView.Adapter getRealAdapter() {
            return this._sectionalAdapter;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter
        protected UploadAssetCellView createUploadAssetCellView(ViewGroup viewGroup) {
            AdobeUploadAssetCellViews.UploadAssetListCellView uploadAssetListCellView = new AdobeUploadAssetCellViews.UploadAssetListCellView();
            uploadAssetListCellView.initializeFromLayout(CCFilesSectionListView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_assetview_list_assetviewcell, viewGroup);
            return uploadAssetListCellView;
        }

        class LocalAssetListSectionalAdapter extends RecyclerView.Adapter<AssetsRecyclerView.CellViewHolder> {
            private final CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter _baseCCAdapter;

            public LocalAssetListSectionalAdapter(CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter localAssetsUploadCCAssetsCombinedAdapter) {
                this._baseCCAdapter = localAssetsUploadCCAssetsCombinedAdapter;
            }

            @Override // android.support.v7.widget.RecyclerView.Adapter
            public AssetsRecyclerView.CellViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return this._baseCCAdapter.onCreateViewHolder(viewGroup, i);
            }

            @Override // android.support.v7.widget.RecyclerView.Adapter
            public void onBindViewHolder(AssetsRecyclerView.CellViewHolder cellViewHolder, int i) {
                this._baseCCAdapter.onBindViewHolder(cellViewHolder, i);
            }

            @Override // android.support.v7.widget.RecyclerView.Adapter
            public int getItemCount() {
                return this._baseCCAdapter.getItemCount();
            }

            @Override // android.support.v7.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return this._baseCCAdapter.getItemViewType(i);
            }
        }
    }
}
