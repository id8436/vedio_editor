package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXIndexWrapper;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.DesignLibrarySpacingItemDecoration;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.GridLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.TwoWayView;
import com.adobe.creativesdk.foundation.internal.utils.AdobeLocalizedMgr;
import com.adobe.creativesdk.foundation.internal.utils.ColumnCountUtil;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetCompFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDrawFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPSFixFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPSMixFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackage;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.AdobeAssetSketchbook;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class MobileCreationPackageCollectionListView extends AssetsRecyclerListView {
    AdobeAssetDataSource _assetDataSource;
    AdobeAssetDataSourceType _dataSourceType;
    int _numColumnsInTwoWay;
    MobileCreationPackageListViewAdapter _packageAdapter;
    ReusableImageBitmapWorker _reusableImageWorker;
    TwoWayView _twowayRecyclerView;
    DesignLibrarySpacingItemDecoration _uniformItemSpacingItemDecoration;

    public MobileCreationPackageCollectionListView(Context context, AdobeAssetDataSourceType adobeAssetDataSourceType) {
        super(context);
        this._dataSourceType = adobeAssetDataSourceType;
    }

    public MobileCreationPackageCollectionListView(Context context) {
        super(context);
    }

    public void setMobileCreationCollectionsDataSource(AdobeAssetDataSource adobeAssetDataSource) {
        this._assetDataSource = adobeAssetDataSource;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected View getMainRootView(Context context) {
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.adobe_assets_mobilecreations_items_view, new FrameLayout(context));
        this._swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.adobe_csdk_asset_mobilecreations_itemsview_swipe_refresh_layout);
        this._twowayRecyclerView = (TwoWayView) viewInflate.findViewById(R.id.adobe_csdk_asset_mobilecreations_items_twowayview);
        return viewInflate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView getConcreteRecyclerView(Context context) {
        return this._twowayRecyclerView;
    }

    public void setReusableImageWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        this._reusableImageWorker = reusableImageBitmapWorker;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.ItemDecoration getItemDecoration(RecyclerView recyclerView, Context context) {
        int dimensionPixelSize = getHostActivity().getResources().getDimensionPixelSize(R.dimen.adobe_csdk_library_items_spacing_size);
        this._uniformItemSpacingItemDecoration = new DesignLibrarySpacingItemDecoration(dimensionPixelSize, dimensionPixelSize);
        this._numColumnsInTwoWay = ColumnCountUtil.getColumnCount(getHostActivity());
        this._uniformItemSpacingItemDecoration.setFixedColumn(this._numColumnsInTwoWay);
        return this._uniformItemSpacingItemDecoration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected SwipeRefreshLayout getSwipeRefreshLayout() {
        return this._swipeRefreshLayout;
    }

    private void invalidateCollectionList() {
        this._packageAdapter.invalidateMobilePackageDataSources();
        this._packageAdapter.notifyDataSetChanged();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToDataChange() {
        invalidateCollectionList();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToNewItemsInsertion() {
        invalidateCollectionList();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.Adapter<RecyclerView.ViewHolder> createRecyclerViewAdapter(Context context, RecyclerView recyclerView) {
        this._packageAdapter = new MobileCreationPackageListViewAdapter(context);
        return this._packageAdapter;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.LayoutManager getLayoutManager(Context context) {
        this._numColumnsInTwoWay = ColumnCountUtil.getColumnCount(getHostActivity());
        return new GridLayoutManager(TwoWayLayoutManager.Orientation.VERTICAL, this._numColumnsInTwoWay, 1);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleItemClick(View view, int i) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeAssetPackagePages packageAtPos = this._packageAdapter.getPackageAtPos(i);
        if (packageAtPos != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.navigateToCollection(getAssetPackageCollectionNavigationCommand(packageAtPos));
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleListItemLongClick(View view, int i) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handlePopupMenuClick(int i, View view) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeAssetPackagePages packageAtPos = this._packageAdapter.getPackageAtPos(i);
        if (packageAtPos != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handlePopupMenuClick(packageAtPos, view);
        }
    }

    protected AdobeAssetViewNavigateCommands.NavBaseCommandData getAssetPackageCollectionNavigationCommand(AdobeAssetPackagePages adobeAssetPackagePages) {
        AdobeAssetViewNavigateCommands.NavToMobileCreationPackageCollectionData navToMobileCreationPackageCollectionData = new AdobeAssetViewNavigateCommands.NavToMobileCreationPackageCollectionData();
        navToMobileCreationPackageCollectionData.setCollectionGUID(adobeAssetPackagePages.getGUID());
        navToMobileCreationPackageCollectionData.setCollectionName(adobeAssetPackagePages.getName());
        navToMobileCreationPackageCollectionData.setCollectionHref(adobeAssetPackagePages.getHref().toString());
        navToMobileCreationPackageCollectionData.setParentHref(adobeAssetPackagePages.getParentHref().toString());
        navToMobileCreationPackageCollectionData.setAssetPackagePages(adobeAssetPackagePages);
        navToMobileCreationPackageCollectionData.setModified(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(adobeAssetPackagePages.getModificationDate()));
        if (adobeAssetPackagePages instanceof AdobeAssetDrawFile) {
            navToMobileCreationPackageCollectionData.setDataSourceType(AdobeAssetDataSourceType.AdobeAssetDataSourceDraw);
        } else if (adobeAssetPackagePages instanceof AdobeAssetSketchbook) {
            navToMobileCreationPackageCollectionData.setDataSourceType(AdobeAssetDataSourceType.AdobeAssetDataSourceSketches);
        } else if (adobeAssetPackagePages instanceof AdobeAssetCompFile) {
            navToMobileCreationPackageCollectionData.setDataSourceType(AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions);
        }
        return navToMobileCreationPackageCollectionData;
    }

    public void searchMobileCreationPackageCollections(String str) {
        this._packageAdapter.isSearch = true;
        this._packageAdapter.query = str;
        refreshDueToDataChange();
        showEmptySearch();
    }

    public void showEmptySearch() {
        checkToSetEmptySearchView(this._packageAdapter.getItemCount() <= 0);
    }

    public class MobileCreationPackageListViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private Boolean isLoki;
        private final Context mContext;
        boolean isSearch = false;
        String query = "";
        ArrayList<AdobeAssetPackagePages> _assetPackagePagesList = null;

        public MobileCreationPackageListViewAdapter(Context context) {
            this.mContext = context;
        }

        class PackageCollectionCellViewHolder extends RecyclerView.ViewHolder {
            TextView _countView;
            ImageView _fourthThumbnailImage;
            View _mainCellView;
            ImageView _mainThumbnailImage;
            ImageView _menuIcon;
            RelativeLayout _menuIconLayout;
            ImageView _mobileCreationIcon;
            AdobeAssetPackagePages _packagePages;
            ImageView _secondThumbnailImage;
            ImageView _thirdThumbnailImage;
            LinearLayout _threeImagesLayout;
            TextView _titleView;

            public PackageCollectionCellViewHolder(View view) {
                super(view);
                this._mainCellView = view;
                this._mainThumbnailImage = (ImageView) view.findViewById(R.id.adobe_csdk_mobilecreation_package_mainImage);
                this._secondThumbnailImage = (ImageView) view.findViewById(R.id.adobe_csdk_mobilecreation_package_secondImage);
                this._thirdThumbnailImage = (ImageView) view.findViewById(R.id.adobe_csdk_mobilecreation_package_thirdImage);
                this._fourthThumbnailImage = (ImageView) view.findViewById(R.id.adobe_csdk_mobilecreation_package_FourthImage);
                this._titleView = (TextView) view.findViewById(R.id.adobe_csdk_mobilecreation_package_cell_main_title);
                this._countView = (TextView) view.findViewById(R.id.adobe_csdk_mobilecreation_package_cell_count_text);
                this._threeImagesLayout = (LinearLayout) view.findViewById(R.id.adobe_csdk_mobilecreation_package_threeImages);
                this._mobileCreationIcon = (ImageView) view.findViewById(R.id.adobe_csdk_mobilecreation_package_icon);
                this._menuIcon = (ImageView) view.findViewById(R.id.adobe_csdk_mobile_creation_menu_icon);
                this._menuIconLayout = (RelativeLayout) view.findViewById(R.id.adobe_mobile_creation_menu_icon_layout);
                MobileCreationPackageListViewAdapter.this.isLoki = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(MobileCreationPackageCollectionListView.this.getHostActivity()));
                if (!MobileCreationPackageListViewAdapter.this.isLoki.booleanValue()) {
                    this._menuIconLayout.setVisibility(8);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setImageAtIndex(long j, BitmapDrawable bitmapDrawable) {
                if (j == 0) {
                    this._mainThumbnailImage.setVisibility(0);
                    this._mainThumbnailImage.setImageDrawable(bitmapDrawable);
                    return;
                }
                if (j == 1) {
                    this._secondThumbnailImage.setVisibility(0);
                    this._secondThumbnailImage.setImageDrawable(bitmapDrawable);
                } else if (j == 2) {
                    this._thirdThumbnailImage.setVisibility(0);
                    this._thirdThumbnailImage.setImageDrawable(bitmapDrawable);
                } else if (j == 3) {
                    this._fourthThumbnailImage.setVisibility(0);
                    this._fourthThumbnailImage.setImageDrawable(bitmapDrawable);
                }
            }

            public AdobeAssetPackagePages getPages() {
                return this._packagePages;
            }

            public void setPages(AdobeAssetPackagePages adobeAssetPackagePages) {
                this._packagePages = adobeAssetPackagePages;
            }

            public void setEmptyCell() {
                this._mainThumbnailImage.setScaleType(ImageView.ScaleType.CENTER);
                this._mainThumbnailImage.setVisibility(0);
                this._mainThumbnailImage.setImageResource(R.drawable.empty_folder);
                this._secondThumbnailImage.setVisibility(8);
                this._thirdThumbnailImage.setVisibility(8);
                this._fourthThumbnailImage.setVisibility(8);
            }

            public void setName(String str) {
                this._titleView.setText(str);
            }

            public void setIcon(AdobeAssetPackagePages adobeAssetPackagePages) {
                AdobeAssetDataSourceType assetDataSourceTypeFor = MobileCreationPackageCollectionFragment.getAssetDataSourceTypeFor(adobeAssetPackagePages);
                Drawable bitmapDrawable = new BitmapDrawable();
                if (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceDraw) {
                    bitmapDrawable = AdobeLocalizedMgr.getDrawable(R.drawable.mobile_creation_draw);
                } else if (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceSketches) {
                    bitmapDrawable = AdobeLocalizedMgr.getDrawable(R.drawable.mobile_creation_sketch);
                } else if (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions) {
                    bitmapDrawable = AdobeLocalizedMgr.getDrawable(R.drawable.mobile_creation_comp);
                }
                this._mobileCreationIcon.setImageDrawable(bitmapDrawable);
            }

            /* JADX WARN: Removed duplicated region for block: B:40:0x0118  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void setItemsCount(com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages r8) {
                /*
                    Method dump skipped, instruction units count: 283
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter.PackageCollectionCellViewHolder.setItemsCount(com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages):void");
            }

            public void setAssetClickListner(View.OnClickListener onClickListener) {
                this._mainCellView.setOnClickListener(onClickListener);
            }

            public void setContextMenuListener(View.OnClickListener onClickListener) {
                this._menuIconLayout.setOnClickListener(onClickListener);
            }
        }

        public void invalidateMobilePackageDataSources() {
            this._assetPackagePagesList = null;
        }

        protected ArrayList<AdobeAssetPackagePages> getPackagePagesList() {
            if (this._assetPackagePagesList == null && MobileCreationPackageCollectionListView.this._assetDataSource != null) {
                this._assetPackagePagesList = new ArrayList<>();
                ArrayList<AdobeAsset> arrayListSearchAssets = this.isSearch ? MobileCreationPackageCollectionListView.this._assetDataSource.searchAssets(this.query) : MobileCreationPackageCollectionListView.this._assetDataSource.assetsToDisplay();
                if (arrayListSearchAssets != null) {
                    for (AdobeAsset adobeAsset : arrayListSearchAssets) {
                        if (adobeAsset instanceof AdobeAssetPackage) {
                            this._assetPackagePagesList.add((AdobeAssetPackagePages) adobeAsset);
                        }
                    }
                }
            }
            return this._assetPackagePagesList;
        }

        protected int getPackagePagesCount() {
            if (getPackagePagesList() == null) {
                return 0;
            }
            return getPackagePagesList().size();
        }

        public AdobeAssetPackagePages getPackageAtPos(int i) {
            ArrayList<AdobeAssetPackagePages> packagePagesList = getPackagePagesList();
            if (packagePagesList == null || i < 0 || i >= packagePagesList.size()) {
                return null;
            }
            return packagePagesList.get(i);
        }

        protected boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            if (!(adobeAssetData.originalAsset instanceof AdobeAssetPackage)) {
                return false;
            }
            String guid = assetListCellView.getGuid();
            String str = adobeAssetData.guid;
            if (guid == null || str == null || !guid.equalsIgnoreCase(str)) {
                return false;
            }
            return true;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new PackageCollectionCellViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.adobe_mobilecreation_package_cell, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            final PackageCollectionCellViewHolder packageCollectionCellViewHolder = (PackageCollectionCellViewHolder) viewHolder;
            final AdobeAssetPackagePages packageAtPos = getPackageAtPos(i);
            packageCollectionCellViewHolder.setName(packageAtPos.getName());
            packageCollectionCellViewHolder.setItemsCount(packageAtPos);
            packageCollectionCellViewHolder.setPages(packageAtPos);
            packageCollectionCellViewHolder.setIcon(packageAtPos);
            if ((packageAtPos instanceof AdobeAssetPSMixFile) || (packageAtPos instanceof AdobeAssetPSFixFile)) {
                packageCollectionCellViewHolder._threeImagesLayout.setVisibility(8);
            } else {
                packageCollectionCellViewHolder._threeImagesLayout.setVisibility(0);
            }
            packageCollectionCellViewHolder.setAssetClickListner(new AssetsRecyclerListView.AssetClickListener(i));
            this.isLoki = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(MobileCreationPackageCollectionListView.this.getHostActivity()));
            if (this.isLoki.booleanValue()) {
                MobileCreationPackageCollectionListView.this.contextMenuClickListener = new AssetsRecyclerListView.AssetContextMenuClickListener(i);
                packageCollectionCellViewHolder.setContextMenuListener(MobileCreationPackageCollectionListView.this.contextMenuClickListener);
            }
            if (packageAtPos.getPages() == null || packageAtPos.getPages().size() == 0) {
                packageCollectionCellViewHolder.setEmptyCell();
            }
            final ArrayList<AdobeAssetFile> arrayList = new ArrayList(packageAtPos.getPages());
            AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
            adobeDCXIndexWrapper.index = 0L;
            for (final AdobeAssetFile adobeAssetFile : arrayList) {
                BitmapDrawable bitmapDrawableLoadImage = MobileCreationPackageCollectionListView.this._reusableImageWorker.loadImage(adobeAssetFile.getGUID() + adobeAssetFile.getMd5Hash());
                if (bitmapDrawableLoadImage != null) {
                    packageCollectionCellViewHolder.setImageAtIndex(arrayList.indexOf(adobeAssetFile), bitmapDrawableLoadImage);
                } else {
                    adobeAssetFile.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, AssetsAbsListView.adjustRenditionSizeBasedOnDeviceScale(AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter.1
                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                        public void onCancellation() {
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(byte[] bArr) {
                            MobileCreationPackageCollectionListView.this._reusableImageWorker.loadImageWithData(adobeAssetFile.getGUID() + adobeAssetFile.getMd5Hash(), bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter.1.1
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                public void onCompletion(BitmapDrawable bitmapDrawable) {
                                    if (packageCollectionCellViewHolder.getPages().equals(packageAtPos)) {
                                        packageCollectionCellViewHolder.setImageAtIndex(arrayList.indexOf(adobeAssetFile), bitmapDrawable);
                                    } else {
                                        packageCollectionCellViewHolder.setImageAtIndex(arrayList.indexOf(adobeAssetFile), (BitmapDrawable) null);
                                    }
                                }
                            }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter.1.2
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeAssetException adobeAssetException) {
                                    packageCollectionCellViewHolder.setImageAtIndex(arrayList.indexOf(adobeAssetFile), (BitmapDrawable) null);
                                }
                            });
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeAssetException adobeAssetException) {
                        }
                    });
                }
                adobeDCXIndexWrapper.index++;
                if (adobeDCXIndexWrapper.index > 3) {
                    break;
                }
            }
            if (arrayList.size() < 4) {
                switch (arrayList.size()) {
                    case 1:
                        packageCollectionCellViewHolder._secondThumbnailImage.setImageDrawable(null);
                        packageCollectionCellViewHolder._thirdThumbnailImage.setImageDrawable(null);
                        packageCollectionCellViewHolder._fourthThumbnailImage.setImageDrawable(null);
                        break;
                    case 2:
                        packageCollectionCellViewHolder._thirdThumbnailImage.setImageDrawable(null);
                        packageCollectionCellViewHolder._fourthThumbnailImage.setImageDrawable(null);
                        break;
                    case 3:
                        packageCollectionCellViewHolder._fourthThumbnailImage.setImageDrawable(null);
                        break;
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getPackagePagesCount();
        }
    }
}
