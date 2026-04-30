package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXIndexWrapper;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.MobilePackageItemsOneUpData;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.GridLayoutManager;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetInfoUtil;
import com.adobe.creativesdk.foundation.internal.utils.AdobeLocalizedMgr;
import com.adobe.creativesdk.foundation.internal.utils.ColumnCountUtil;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetCompFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDrawFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackage;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.AdobeAssetSketchbook;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class CompositionsListView extends MobileCreationPackageCollectionListView {
    public CompositionsListView(Context context, AdobeAssetDataSourceType adobeAssetDataSourceType) {
        super(context, adobeAssetDataSourceType);
        this._dataSourceType = adobeAssetDataSourceType;
    }

    public CompositionsListView(Context context) {
        super(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.Adapter<RecyclerView.ViewHolder> createRecyclerViewAdapter(Context context, RecyclerView recyclerView) {
        this._packageAdapter = new CompositionsListViewAdapter(context);
        return this._packageAdapter;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.LayoutManager getLayoutManager(Context context) {
        this._numColumnsInTwoWay = ColumnCountUtil.getColumnCount(getHostActivity());
        return new GridLayoutManager(TwoWayLayoutManager.Orientation.VERTICAL, this._numColumnsInTwoWay, 1);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleItemClick(View view, int i) {
        AdobeAssetPackagePages packageAtPos = this._packageAdapter.getPackageAtPos(i);
        if ((packageAtPos instanceof AdobeAssetDrawFile) || (packageAtPos instanceof AdobeAssetSketchbook) || (packageAtPos instanceof AdobeAssetCompFile)) {
            super.handleItemClick(view, i);
            return;
        }
        if (packageAtPos != null) {
            MobilePackageItemsOneUpData mobilePackageItemsOneUpData = new MobilePackageItemsOneUpData();
            mobilePackageItemsOneUpData._packagePages = packageAtPos;
            mobilePackageItemsOneUpData._itemsList = packageAtPos.getPages();
            mobilePackageItemsOneUpData.startIndex = i;
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = this._parentContainer.get();
            if (iAdobeAssetContainerListViewDelegate != null) {
                iAdobeAssetContainerListViewDelegate.handleAssetClickAction(mobilePackageItemsOneUpData);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView
    protected AdobeAssetViewNavigateCommands.NavBaseCommandData getAssetPackageCollectionNavigationCommand(AdobeAssetPackagePages adobeAssetPackagePages) {
        AdobeAssetViewNavigateCommands.NavToMobileCreationPackageCollectionData navToMobileCreationPackageCollectionData = new AdobeAssetViewNavigateCommands.NavToMobileCreationPackageCollectionData();
        navToMobileCreationPackageCollectionData.setCollectionGUID(adobeAssetPackagePages.getGUID());
        navToMobileCreationPackageCollectionData.setCollectionName(adobeAssetPackagePages.getName());
        navToMobileCreationPackageCollectionData.setCollectionHref(adobeAssetPackagePages.getHref().toString());
        navToMobileCreationPackageCollectionData.setParentHref(adobeAssetPackagePages.getParentHref().toString());
        navToMobileCreationPackageCollectionData.setAssetPackagePages(adobeAssetPackagePages);
        if (adobeAssetPackagePages instanceof AdobeAssetDrawFile) {
            navToMobileCreationPackageCollectionData.setDataSourceType(AdobeAssetDataSourceType.AdobeAssetDataSourceDraw);
        } else if (adobeAssetPackagePages instanceof AdobeAssetSketchbook) {
            navToMobileCreationPackageCollectionData.setDataSourceType(AdobeAssetDataSourceType.AdobeAssetDataSourceSketches);
        } else if (adobeAssetPackagePages instanceof AdobeAssetCompFile) {
            navToMobileCreationPackageCollectionData.setDataSourceType(AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions);
        }
        return navToMobileCreationPackageCollectionData;
    }

    public class CompositionsListViewAdapter extends MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter {
        ArrayList<AdobeAssetPackagePages> _assetPackagePagesList;
        private Boolean isLoki;
        private final Context mContext;

        public CompositionsListViewAdapter(Context context) {
            super(context);
            this.mContext = context;
            this._assetPackagePagesList = null;
            this.isLoki = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(CompositionsListView.this.getHostActivity()));
        }

        class CompositionCellViewHolder extends RecyclerView.ViewHolder {
            ImageView _compositionIcon;
            TextView _countView;
            View _mainCellView;
            ImageView _mainThumbnailImage;
            ImageView _menuIcon;
            RelativeLayout _menuIconLayout;
            TextView _modifiedDate;
            AdobeAssetPackagePages _packagePages;
            TextView _titleView;

            public CompositionCellViewHolder(View view) {
                super(view);
                this._mainCellView = view;
                this._mainThumbnailImage = (ImageView) view.findViewById(R.id.adobe_csdk_composition_cell_mainImage);
                this._titleView = (TextView) view.findViewById(R.id.adobe_csdk_compositio_cell_main_title);
                this._countView = (TextView) view.findViewById(R.id.adobe_csdk_composition_cell_count_text);
                this._modifiedDate = (TextView) view.findViewById(R.id.adobe_csdk_composition_cell_modification_date);
                this._modifiedDate.setVisibility(8);
                this._compositionIcon = (ImageView) view.findViewById(R.id.adobe_csdk_composition_package_icon);
                this._menuIconLayout = (RelativeLayout) view.findViewById(R.id.adobe_composition_menu_icon_layout);
                this._menuIcon = (ImageView) view.findViewById(R.id.adobe_composition_menu_icon);
                if (!CompositionsListViewAdapter.this.isLoki.booleanValue()) {
                    this._menuIconLayout.setVisibility(8);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setImageAtIndex(long j, BitmapDrawable bitmapDrawable) {
                if (j == 0) {
                    this._mainThumbnailImage.setVisibility(0);
                    this._mainThumbnailImage.setImageDrawable(bitmapDrawable);
                }
            }

            public void setEmptyCell() {
                this._mainThumbnailImage.setImageResource(R.drawable.empty_folder);
            }

            public void setName(String str) {
                this._titleView.setText(str);
            }

            public AdobeAssetPackagePages getPages() {
                return this._packagePages;
            }

            public void setPages(AdobeAssetPackagePages adobeAssetPackagePages) {
                this._packagePages = adobeAssetPackagePages;
            }

            public void setIcon(AdobeAssetPackagePages adobeAssetPackagePages) {
                AdobeAssetDataSourceType assetDataSourceTypeFor = MobileCreationPackageCollectionFragment.getAssetDataSourceTypeFor(adobeAssetPackagePages);
                Drawable bitmapDrawable = new BitmapDrawable();
                if (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourcePSMix) {
                    bitmapDrawable = AdobeLocalizedMgr.getDrawable(R.drawable.mobile_creation_mix);
                } else if (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourcePSFix) {
                    bitmapDrawable = AdobeLocalizedMgr.getDrawable(R.drawable.mobile_creations_psfix);
                }
                this._compositionIcon.setImageDrawable(bitmapDrawable);
            }

            public void setModificationDate(Date date) {
                this._modifiedDate.setText(AdobeAssetInfoUtil.getModifiedDate(this.itemView.getContext(), date));
            }

            public void setItemsCount(AdobeAssetPackagePages adobeAssetPackagePages) {
                String str = null;
                AdobeAssetDataSourceType assetDataSourceTypeFor = MobileCreationPackageCollectionFragment.getAssetDataSourceTypeFor(adobeAssetPackagePages);
                if (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourcePSMix) {
                    str = String.format("%s", AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_psmix_collection_singular));
                } else if (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourcePSFix) {
                    str = String.format("%s", AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_psfix_collection_singular));
                }
                this._countView.setText(str);
            }

            public void setAssetClickListner(View.OnClickListener onClickListener) {
                this._mainCellView.setOnClickListener(onClickListener);
            }

            public void setContextMenuListener(View.OnClickListener onClickListener) {
                this._menuIconLayout.setOnClickListener(onClickListener);
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter
        public void invalidateMobilePackageDataSources() {
            this._assetPackagePagesList = null;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter
        protected ArrayList<AdobeAssetPackagePages> getPackagePagesList() {
            if (this._assetPackagePagesList == null && CompositionsListView.this._assetDataSource != null) {
                ArrayList<AdobeAsset> arrayListSearchAssets = this.isSearch ? CompositionsListView.this._assetDataSource.searchAssets(this.query) : CompositionsListView.this._assetDataSource.assetsToDisplay();
                this._assetPackagePagesList = new ArrayList<>();
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

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter
        protected int getPackagePagesCount() {
            if (getPackagePagesList() == null) {
                return 0;
            }
            return getPackagePagesList().size();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter
        public AdobeAssetPackagePages getPackageAtPos(int i) {
            ArrayList<AdobeAssetPackagePages> packagePagesList = getPackagePagesList();
            if (packagePagesList == null || i < 0 || i >= packagePagesList.size()) {
                return null;
            }
            return packagePagesList.get(i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter
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

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                return super.onCreateViewHolder(viewGroup, i);
            }
            return new CompositionCellViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.adobe_composition_cell, viewGroup, false));
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            final AdobeAssetPackagePages packageAtPos = getPackageAtPos(i);
            AdobeAssetDataSourceType assetDataSourceTypeFor = MobileCreationPackageCollectionFragment.getAssetDataSourceTypeFor(packageAtPos);
            if (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceDraw || assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceSketches || assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions) {
                super.onBindViewHolder(viewHolder, i);
                return;
            }
            final CompositionCellViewHolder compositionCellViewHolder = (CompositionCellViewHolder) viewHolder;
            compositionCellViewHolder.setName(packageAtPos.getName());
            compositionCellViewHolder.setItemsCount(packageAtPos);
            compositionCellViewHolder.setPages(packageAtPos);
            compositionCellViewHolder.setIcon(packageAtPos);
            if (packageAtPos.getPages() == null || packageAtPos.getPages().size() == 0) {
                compositionCellViewHolder.setEmptyCell();
                return;
            }
            compositionCellViewHolder.setAssetClickListner(new AssetsRecyclerListView.AssetClickListener(i));
            this.isLoki = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(CompositionsListView.this.getHostActivity()));
            if (this.isLoki.booleanValue()) {
                CompositionsListView.this.contextMenuClickListener = new AssetsRecyclerListView.AssetContextMenuClickListener(i);
                compositionCellViewHolder.setContextMenuListener(CompositionsListView.this.contextMenuClickListener);
            }
            final ArrayList<AdobeAssetFile> arrayList = new ArrayList(packageAtPos.getPages());
            AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
            adobeDCXIndexWrapper.index = 0L;
            for (final AdobeAssetFile adobeAssetFile : arrayList) {
                BitmapDrawable bitmapDrawableLoadImage = CompositionsListView.this._reusableImageWorker.loadImage(adobeAssetFile.getGUID() + adobeAssetFile.getMd5Hash());
                if (bitmapDrawableLoadImage != null) {
                    compositionCellViewHolder.setImageAtIndex(arrayList.indexOf(adobeAssetFile), bitmapDrawableLoadImage);
                } else {
                    adobeAssetFile.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, AssetsAbsListView.adjustRenditionSizeBasedOnDeviceScale(AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CompositionsListView.CompositionsListViewAdapter.1
                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                        public void onCancellation() {
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(byte[] bArr) {
                            CompositionsListView.this._reusableImageWorker.loadImageWithData(adobeAssetFile.getGUID() + adobeAssetFile.getMd5Hash(), bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CompositionsListView.CompositionsListViewAdapter.1.1
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                public void onCompletion(BitmapDrawable bitmapDrawable) {
                                    if (compositionCellViewHolder.getPages().equals(packageAtPos)) {
                                        compositionCellViewHolder.setImageAtIndex(arrayList.indexOf(adobeAssetFile), bitmapDrawable);
                                    } else {
                                        compositionCellViewHolder.setImageAtIndex(arrayList.indexOf(adobeAssetFile), (BitmapDrawable) null);
                                    }
                                }
                            }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CompositionsListView.CompositionsListViewAdapter.1.2
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeAssetException adobeAssetException) {
                                    compositionCellViewHolder.setImageAtIndex(arrayList.indexOf(adobeAssetFile), (BitmapDrawable) null);
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
                    return;
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            AdobeAssetDataSourceType assetDataSourceTypeFor = MobileCreationPackageCollectionFragment.getAssetDataSourceTypeFor(getPackageAtPos(i));
            return (assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceDraw || assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceSketches || assetDataSourceTypeFor == AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions) ? 0 : 1;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionListView.MobileCreationPackageListViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return (CompositionsListView.this._dataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceDraw || CompositionsListView.this._dataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceSketches || CompositionsListView.this._dataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions) ? super.getItemCount() : getPackagePagesCount();
        }
    }
}
