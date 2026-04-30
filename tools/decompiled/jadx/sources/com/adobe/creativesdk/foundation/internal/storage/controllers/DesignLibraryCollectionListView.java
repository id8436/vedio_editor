package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
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
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.ACLibraryManagerAppBridge;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLMAssetsListProviderMgr;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACUserAssetType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.helper.ACColorThemeAssetHelper;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model.ACAdobeColor;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model.ACAdobeColorTheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryAssetRenditionUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeDesignLibraryUtilsInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeInternal;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetLibraryDataSource;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.DesignLibrarySpacingItemDecoration;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.GridLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.TwoWayView;
import com.adobe.creativesdk.foundation.internal.utils.ColumnCountUtil;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class DesignLibraryCollectionListView extends AssetsRecyclerListView {
    private static boolean shouldInvalidateCollection = false;
    private DesignLibraryCollectionListViewAdapter _collectioAdapter;
    private AdobeAssetLibraryDataSource _libraryDataSource;
    private int _numColumnsInTwoWay;
    ReusableImageBitmapWorker _reusableImageWorker;
    private TwoWayView _twowayRecyclerView;
    private DesignLibrarySpacingItemDecoration _uniformItemSpacingItemDecoration;
    private Boolean isLoki;
    private int rightMargin;

    public void setDesignLibraryCollectionsDataSource(AdobeAssetLibraryDataSource adobeAssetLibraryDataSource) {
        this._libraryDataSource = adobeAssetLibraryDataSource;
    }

    public void setReusableImageWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        this._reusableImageWorker = reusableImageBitmapWorker;
    }

    public DesignLibraryCollectionListView(Context context) {
        super(context);
        this.rightMargin = -1;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected View getMainRootView(Context context) {
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.adobe_assets_library_items_view, new FrameLayout(context));
        this._swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.adobe_csdk_asset_libraryitemsview_swipe_refresh_layout);
        this._twowayRecyclerView = (TwoWayView) viewInflate.findViewById(R.id.adobe_csdk_asset_library_design_items_twowayview);
        return viewInflate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView getConcreteRecyclerView(Context context) {
        return this._twowayRecyclerView;
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

    void invalidateCollectionList() {
        this._collectioAdapter.invalidateLibraryCollectionList();
        this._collectioAdapter.notifyDataSetChanged();
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
        this._collectioAdapter = new DesignLibraryCollectionListViewAdapter(context);
        return this._collectioAdapter;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.LayoutManager getLayoutManager(Context context) {
        this._numColumnsInTwoWay = ColumnCountUtil.getColumnCount(getHostActivity());
        return new GridLayoutManager(TwoWayLayoutManager.Orientation.VERTICAL, this._numColumnsInTwoWay, 1);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleItemClick(View view, int i) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeLibraryComposite libraryAtPos = this._collectioAdapter.getLibraryAtPos(i);
        if (libraryAtPos != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.navigateToCollection(getDesignLibraryCollectionNavigationCommand(libraryAtPos));
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleListItemLongClick(View view, int i) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeLibraryComposite libraryAtPos = this._collectioAdapter.getLibraryAtPos(i);
        if (libraryAtPos != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handleLongClickOnAsset(libraryAtPos);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handlePopupMenuClick(int i, View view) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeLibraryComposite libraryAtPos = this._collectioAdapter.getLibraryAtPos(i);
        if (libraryAtPos != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handlePopupMenuClick(libraryAtPos, view);
        }
    }

    protected AdobeAssetViewNavigateCommands.NavBaseCommandData getDesignLibraryCollectionNavigationCommand(AdobeLibraryComposite adobeLibraryComposite) {
        AdobeAssetViewNavigateCommands.NavToDesignLibraryCollectionData navToDesignLibraryCollectionData = new AdobeAssetViewNavigateCommands.NavToDesignLibraryCollectionData();
        navToDesignLibraryCollectionData.setCollectionGUID(adobeLibraryComposite.getLibraryId());
        navToDesignLibraryCollectionData.setCollectionName(adobeLibraryComposite.getName());
        navToDesignLibraryCollectionData.setLibrary(adobeLibraryComposite);
        return navToDesignLibraryCollectionData;
    }

    public void searchLibraryCollections(String str) {
        this._collectioAdapter.isSearch = true;
        this._collectioAdapter.query = str;
        refreshDueToDataChange();
        showEmptySearch();
    }

    public void showEmptySearch() {
        checkToSetEmptySearchView(this._collectioAdapter.getAssetsCount() <= 0);
    }

    public class DesignLibraryCollectionListViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        ArrayList<AdobeLibraryComposite> _libraryCollectionsList;
        private final Context mContext;
        private Typeface typeface;
        boolean isSearch = false;
        String query = "";

        public DesignLibraryCollectionListViewAdapter(Context context) {
            this.mContext = context;
            this.typeface = Typeface.createFromAsset(DesignLibraryCollectionListView.this.getHostActivity().getAssets(), "fonts/AdobeClean-SemiLight.otf");
        }

        class CollectionCellViewHolder extends RecyclerView.ViewHolder {
            View _childContainer;
            RelativeLayout _colorView;
            LinearLayout _colortThemeContainer;
            TextView _countView;
            ImageView _forwardIcon;
            ImageView _imageView;
            View _itemView;
            AdobeLibraryComposite _libraryItem;
            RelativeLayout _libraryMenuIcon;
            ImageView _sharedLibraryView;
            TextView _titleView;

            public CollectionCellViewHolder(View view) {
                super(view);
                this._itemView = view;
                this._colortThemeContainer = (LinearLayout) view.findViewById(R.id.adobe_csdk_library_collection_cell_colortheme);
                this._colorView = (RelativeLayout) view.findViewById(R.id.adobe_csdk_library_collection_cell_color);
                this._imageView = (ImageView) view.findViewById(R.id.adobe_csdk_library_collection_cell_image);
                this._sharedLibraryView = (ImageView) view.findViewById(R.id.adobe_csdk_library_collection_cell_shared_folder_icon);
                this._libraryMenuIcon = (RelativeLayout) view.findViewById(R.id.adobe_csdk_library_collection_menu_icon);
                this._forwardIcon = (ImageView) view.findViewById(R.id.adobe_csdk_library_collection_cell_folder_forward_icon);
                this._titleView = (TextView) view.findViewById(R.id.adobe_csdk_library_collection_cell_main_title);
                this._countView = (TextView) view.findViewById(R.id.adobe_csdk_library_collection_cell_count_text);
                DesignLibraryCollectionListView.this.isLoki = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(DesignLibraryCollectionListView.this.getHostActivity()));
                if (DesignLibraryCollectionListView.this.isLoki.booleanValue()) {
                    this._titleView.setTypeface(DesignLibraryCollectionListViewAdapter.this.typeface);
                    this._countView.setTypeface(DesignLibraryCollectionListViewAdapter.this.typeface);
                    this._forwardIcon.setImageResource(R.drawable.ic_more_vert_black_24dp);
                    return;
                }
                this._libraryMenuIcon.setVisibility(8);
            }

            public void setClickListener(View.OnClickListener onClickListener) {
                this._itemView.setOnClickListener(onClickListener);
            }

            public void setContextMenuListener(View.OnClickListener onClickListener) {
                this._libraryMenuIcon.setOnClickListener(onClickListener);
            }

            private void setViewVisible(View view) {
                this._colortThemeContainer.setVisibility(view == this._colortThemeContainer ? 0 : 8);
                this._colorView.setVisibility(view == this._colorView ? 0 : 8);
                this._imageView.setVisibility(view == this._imageView ? 0 : 8);
            }

            public void setColor(int i) {
                setViewVisible(this._colorView);
                this._colorView.setBackgroundColor(i);
            }

            public void setColorTheme(ArrayList<Integer> arrayList) {
                setViewVisible(this._colortThemeContainer);
                int iMin = Math.min(this._colortThemeContainer.getChildCount(), arrayList.size());
                for (int i = 0; i < iMin; i++) {
                    this._colortThemeContainer.getChildAt(i).setBackgroundColor(arrayList.get(i).intValue());
                }
            }

            public void setImage(Bitmap bitmap) {
                setViewVisible(this._imageView);
                if (bitmap == null) {
                    this._imageView.setImageResource(android.R.color.transparent);
                } else {
                    this._imageView.setImageBitmap(bitmap);
                }
            }

            public void setImageDrawagle(BitmapDrawable bitmapDrawable) {
                setViewVisible(this._imageView);
                if (bitmapDrawable == null) {
                    this._imageView.setImageResource(android.R.color.transparent);
                } else {
                    this._imageView.setImageDrawable(bitmapDrawable);
                }
            }

            public void setEmptyCell() {
                setViewVisible(this._imageView);
                this._imageView.setScaleType(ImageView.ScaleType.CENTER);
                this._imageView.setImageResource(R.drawable.empty_library);
            }

            public void setPublicLibraryImage() {
                this._sharedLibraryView.setVisibility(0);
                AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
                this._sharedLibraryView.setImageResource(R.drawable.ic_library_bookmark);
            }

            public void setSharedLibraryImage() {
                this._sharedLibraryView.setVisibility(0);
                AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
                this._sharedLibraryView.setImageResource(R.drawable.ic_vector_asset_folder_shared);
            }

            public void setIsReadyOnlyImage() {
                this._sharedLibraryView.setVisibility(0);
                AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
                this._sharedLibraryView.setImageResource(R.drawable.ic_vector_asset_folder_ro);
            }

            public void setName(String str) {
                this._titleView.setText(str);
            }

            public void setItemsCount(int i) {
                this._countView.setText(i != 1 ? String.format(DesignLibraryCollectionListViewAdapter.this.mContext.getString(R.string.adobe_csdk_design_library_collection_count), Integer.toString(i)) : DesignLibraryCollectionListViewAdapter.this.mContext.getString(R.string.adobe_csdk_design_library_collection_count_single));
            }

            public void setLibrary(AdobeLibraryComposite adobeLibraryComposite) {
                this._libraryItem = adobeLibraryComposite;
            }

            public AdobeLibraryComposite getLibrary() {
                return this._libraryItem;
            }
        }

        public void invalidateLibraryCollectionList() {
            this._libraryCollectionsList = null;
        }

        protected ArrayList<AdobeLibraryComposite> getLibraryList() {
            if (this._libraryCollectionsList == null && DesignLibraryCollectionListView.this._libraryDataSource != null && DesignLibraryCollectionListView.this._libraryDataSource.assetsToDisplay() != null) {
                this._libraryCollectionsList = new ArrayList<>();
                for (AdobeLibraryComposite adobeLibraryComposite : this.isSearch ? DesignLibraryCollectionListView.this._libraryDataSource.searchAssetContainName(this.query) : DesignLibraryCollectionListView.this._libraryDataSource.assetsToDisplay()) {
                    if (!((AdobeLibraryCompositeInternal) adobeLibraryComposite).isSelfUnshared()) {
                        this._libraryCollectionsList.add(adobeLibraryComposite);
                    }
                }
                for (AdobeLibraryComposite adobeLibraryComposite2 : this._libraryCollectionsList) {
                    AdobeAssetViewUtils.populateGuidToLibraryNameMap(adobeLibraryComposite2.getLibraryId(), adobeLibraryComposite2.getName());
                }
            }
            return this._libraryCollectionsList;
        }

        protected int getAssetsCount() {
            if (getLibraryList() == null) {
                return 0;
            }
            return getLibraryList().size();
        }

        public AdobeLibraryComposite getLibraryAtPos(int i) {
            ArrayList<AdobeLibraryComposite> libraryList = getLibraryList();
            if (libraryList == null || i < 0 || i >= libraryList.size()) {
                return null;
            }
            return libraryList.get(i);
        }

        protected boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            if (!(adobeAssetData.originalAsset instanceof AdobeLibraryComposite)) {
                return false;
            }
            String guid = assetListCellView.getGuid();
            String str = adobeAssetData.guid;
            if (guid == null || str == null || !guid.equalsIgnoreCase(str)) {
                return false;
            }
            return true;
        }

        private AdobeLibraryElement getElementOfAssetType(AdobeLibraryComposite adobeLibraryComposite, ACUserAssetType aCUserAssetType) {
            ArrayList<AdobeLibraryElement> elements = ACLMAssetsListProviderMgr.getInstance().getProviderForUserAssetType(aCUserAssetType).getElements(adobeLibraryComposite);
            Comparator comparator = new Comparator() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionListView.DesignLibraryCollectionListViewAdapter.1
                @Override // java.util.Comparator
                public int compare(Object obj, Object obj2) {
                    return AdobeDesignLibraryUtilsInternal.getNameOrIdForDisplay((AdobeLibraryElement) obj).compareToIgnoreCase(AdobeDesignLibraryUtilsInternal.getNameOrIdForDisplay((AdobeLibraryElement) obj2));
                }
            };
            if (elements == null || elements.size() <= 0) {
                return null;
            }
            Collections.sort(elements, comparator);
            return elements.get(0);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new CollectionCellViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.adobe_library_collection_cell, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            final CollectionCellViewHolder collectionCellViewHolder = (CollectionCellViewHolder) viewHolder;
            final AdobeLibraryComposite libraryAtPos = getLibraryAtPos(i);
            collectionCellViewHolder.setName(libraryAtPos.getName());
            collectionCellViewHolder.setItemsCount(libraryAtPos.getCountOfElements(ACLibraryManagerAppBridge.getInstance().getLibraryManager()));
            collectionCellViewHolder.setLibrary(libraryAtPos);
            collectionCellViewHolder.setClickListener(new AssetsRecyclerListView.AssetClickListener(i));
            DesignLibraryCollectionListView.this.isLoki = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(DesignLibraryCollectionListView.this.getHostActivity()));
            if (DesignLibraryCollectionListView.this.isLoki.booleanValue()) {
                DesignLibraryCollectionListView.this.contextMenuClickListener = new AssetsRecyclerListView.AssetContextMenuClickListener(i);
                collectionCellViewHolder.setContextMenuListener(DesignLibraryCollectionListView.this.contextMenuClickListener);
            }
            if (!AdobeAssetViewUtils.hasLibraryGuidAlreadyRegistered(libraryAtPos.getLibraryId())) {
                AdobeAssetViewUtils.populateGuidToLibraryNameMap(libraryAtPos.getLibraryId(), libraryAtPos.getName());
            }
            boolean zIsShared = libraryAtPos.isShared();
            boolean zIsReadOnly = libraryAtPos.isReadOnly();
            if (libraryAtPos.isPublic()) {
                collectionCellViewHolder.setPublicLibraryImage();
            } else if (zIsShared && zIsReadOnly) {
                collectionCellViewHolder.setIsReadyOnlyImage();
            } else if (zIsShared) {
                collectionCellViewHolder.setSharedLibraryImage();
            } else {
                collectionCellViewHolder._sharedLibraryView.setImageResource(R.drawable.ic_vector_asset_library);
            }
            if (libraryAtPos.getCountOfElements(ACLibraryManagerAppBridge.getInstance().getLibraryManager()) == 0) {
                collectionCellViewHolder.setEmptyCell();
                collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                return;
            }
            collectionCellViewHolder._imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            final AdobeLibraryElement elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.kImage);
            if (elementOfAssetType == null) {
                AdobeLibraryElement elementOfAssetType2 = getElementOfAssetType(libraryAtPos, ACUserAssetType.kColorTheme);
                if (elementOfAssetType2 != null) {
                    ACAdobeColorTheme colorThemeFromElement = ACColorThemeAssetHelper.getColorThemeFromElement(libraryAtPos, elementOfAssetType2);
                    ArrayList<Integer> arrayList = new ArrayList<>();
                    Iterator<ACAdobeColor> it = colorThemeFromElement._colors.iterator();
                    while (it.hasNext()) {
                        arrayList.add(Integer.valueOf(it.next().getColor()));
                    }
                    collectionCellViewHolder.setColorTheme(arrayList);
                    collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                    return;
                }
                AdobeLibraryElement elementOfAssetType3 = getElementOfAssetType(libraryAtPos, ACUserAssetType.kColor);
                if (elementOfAssetType3 != null) {
                    collectionCellViewHolder.setColor(AdobeDesignLibraryUtils.getRGBColorForElement(elementOfAssetType3, libraryAtPos).intValue());
                    collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                    return;
                }
                elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.kBrush);
                if (elementOfAssetType == null && (elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.kCharStyle)) == null && (elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.kLayerStyle)) == null && (elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.kLooks)) == null && (elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.KPattern)) == null && (elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.kTemplate)) == null && (elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.k3DMaterial)) == null && (elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.k3DLight)) == null && (elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.k3DModel)) == null) {
                    elementOfAssetType = getElementOfAssetType(libraryAtPos, ACUserAssetType.kAnimation);
                }
            }
            final AdobeAssetImageDimensions adobeAssetImageDimensions = new AdobeAssetImageDimensions(450.0f, 0.0f);
            if (elementOfAssetType != null) {
                if (elementOfAssetType.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType)) {
                    collectionCellViewHolder._imageView.setScaleType(ImageView.ScaleType.CENTER);
                }
                BitmapDrawable bitmapDrawableLoadImage = DesignLibraryCollectionListView.this._reusableImageWorker.loadImage(elementOfAssetType.getElementId());
                if (bitmapDrawableLoadImage == null) {
                    ACLibraryAssetRenditionUtils.fetchAnyImageRepresentation(ACLibraryAssetRenditionUtils.maxthumbnailSize(elementOfAssetType, DesignLibraryCollectionListView.this._numColumnsInTwoWay, DesignLibraryCollectionListView.this.getHostActivity(), true), libraryAtPos, elementOfAssetType, new IAdobeGenericRequestCallback<String, AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionListView.DesignLibraryCollectionListViewAdapter.2
                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                        public void onCancellation() {
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(String str) {
                            if (str == null || str.isEmpty()) {
                                collectionCellViewHolder.setImageDrawagle((BitmapDrawable) null);
                                collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                            } else if (new File(str).exists()) {
                                DesignLibraryCollectionListView.this._reusableImageWorker.loadImageFromFile(elementOfAssetType.getElementId(), str, adobeAssetImageDimensions, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionListView.DesignLibraryCollectionListViewAdapter.2.1
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                    public void onCompletion(BitmapDrawable bitmapDrawable) {
                                        if (collectionCellViewHolder.getLibrary().getLibraryId().equals(libraryAtPos.getLibraryId())) {
                                            collectionCellViewHolder.setImageDrawagle(bitmapDrawable);
                                            collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                                        } else {
                                            collectionCellViewHolder.setImageDrawagle((BitmapDrawable) null);
                                            collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                                        }
                                    }
                                }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionListView.DesignLibraryCollectionListViewAdapter.2.2
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                    public void onError(AdobeAssetException adobeAssetException) {
                                        collectionCellViewHolder.setImageDrawagle((BitmapDrawable) null);
                                        collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                                    }
                                });
                            } else {
                                collectionCellViewHolder.setImageDrawagle((BitmapDrawable) null);
                                collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                            }
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeLibraryException adobeLibraryException) {
                            collectionCellViewHolder.setImageDrawagle((BitmapDrawable) null);
                            collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }
                    }, new Handler(Looper.getMainLooper()));
                    return;
                } else {
                    collectionCellViewHolder.setImageDrawagle(bitmapDrawableLoadImage);
                    collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
                    return;
                }
            }
            collectionCellViewHolder.setImageDrawagle((BitmapDrawable) null);
            collectionCellViewHolder._itemView.setTag(libraryAtPos.getLibraryId());
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getAssetsCount();
        }
    }

    protected void updateItemViewForLib(View view, AdobeLibraryComposite adobeLibraryComposite) {
        String string;
        ImageView imageView = (ImageView) view.findViewById(R.id.adobe_csdk_library_collection_cell_shared_folder_icon);
        TextView textView = (TextView) view.findViewById(R.id.adobe_csdk_library_collection_cell_main_title);
        TextView textView2 = (TextView) view.findViewById(R.id.adobe_csdk_library_collection_cell_count_text);
        textView.setText(adobeLibraryComposite.getName());
        int countOfElements = adobeLibraryComposite.getCountOfElements(ACLibraryManagerAppBridge.getInstance().getLibraryManager());
        if (countOfElements != 1) {
            string = String.format(getHostActivity().getString(R.string.adobe_csdk_design_library_collection_count), Integer.toString(countOfElements));
        } else {
            string = getHostActivity().getString(R.string.adobe_csdk_design_library_collection_count_single);
        }
        textView2.setText(string);
        imageView.setVisibility(0);
        if (adobeLibraryComposite.isPublic()) {
            imageView.setImageResource(R.drawable.ic_library_bookmark);
            return;
        }
        if (adobeLibraryComposite.isShared()) {
            if (adobeLibraryComposite.isReadOnly()) {
                imageView.setImageResource(R.drawable.ic_vector_asset_folder_ro);
                return;
            } else {
                imageView.setImageResource(R.drawable.ic_vector_asset_folder_shared);
                return;
            }
        }
        imageView.setImageResource(R.drawable.ic_vector_asset_library);
    }

    public static void setShouldInvalidateCollection(boolean z) {
        shouldInvalidateCollection = z;
    }

    public static boolean souldInvalidateCollection() {
        return shouldInvalidateCollection;
    }
}
