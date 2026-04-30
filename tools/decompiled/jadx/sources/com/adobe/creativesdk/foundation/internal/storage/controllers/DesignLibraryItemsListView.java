package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.media.ThumbnailUtils;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.ActivityChooserView;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.animation.ACLMAnimationAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.brush.ACLMBrushAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.charStyle.ACLMCharStyleAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.color.ACLMColorAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.ACLMColorThemeAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.image.ACLMImageAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.layerStyle.ACLMLayerStyleAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.light.ACLM3DLightAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.looks.ACLMLooksAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.material.ACLM3DMaterialAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.model.ACLM3DModelAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.pattern.ACLMPatternAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.template.ACLMTemplateAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryAssetRenditionUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeDesignLibraryUtilsInternal;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.AdobeDesignLibraryItemsCellHolders;
import com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.DesignLibrarySpacingItemDecoration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadThumbnailMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeWaterFallLayoutManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.LibraryDesignItemsOneUpData;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.StaggeredGridLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.TwoWayView;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDesignLibraryItemFilter;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDesignLibraryItemType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElementFilter;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.google.api.gbase.client.GoogleBaseNamespaces;
import com.google.common.base.Ascii;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DesignLibraryItemsListView extends AssetsRecyclerListView {
    private static final String T = DesignLibraryItemsListView.class.getSimpleName();
    private final int AdobeDesignLibraryAssetType_3dLight;
    private final int AdobeDesignLibraryAssetType_3dMaterial;
    private final int AdobeDesignLibraryAssetType_3dModel;
    private final int AdobeDesignLibraryAssetType_animation;
    private final int AdobeDesignLibraryAssetType_brush;
    private final int AdobeDesignLibraryAssetType_characterStyle;
    private final int AdobeDesignLibraryAssetType_color;
    private final int AdobeDesignLibraryAssetType_colorTheme;
    private final int AdobeDesignLibraryAssetType_image;
    private final int AdobeDesignLibraryAssetType_image_in_upload;
    private final int AdobeDesignLibraryAssetType_layoutStyle;
    private final int AdobeDesignLibraryAssetType_look;
    private final int AdobeDesignLibraryAssetType_pattern;
    private final int AdobeDesignLibraryAssetType_template;
    private final int AdobeDesignLibrarySectionViewType;
    private ArrayList<AdobeLibraryElement> _3dLightElems;
    private ArrayList<AdobeLibraryElement> _3dMaterialElems;
    private ArrayList<AdobeLibraryElement> _3dModelElems;
    private ArrayList<AdobeLibraryElement> _animationElems;
    private ArrayList<AdobeLibraryElement> _brushElems;
    private ArrayList<AdobeLibraryElement> _charStyleElems;
    private ArrayList<AdobeLibraryElement> _colorElems;
    private ArrayList<AdobeLibraryElement> _colorThemeElems;
    private AdobeDesignLibraryCollectionConfiguration _designLibraryItemsClientConfiguration;
    private ArrayList<AdobeLibraryElement> _imageElems;
    private ImageUploadObservers _imageUploadObservers;
    private ArrayList<AdobeLibraryElement> _layoutStyleElems;
    private LibraryItemsSectionAdapter _libraryItemsAdapter;
    private ArrayList<AdobeLibraryElement> _looksElems;
    private ArrayList<AdobeLibraryElement> _patternElems;
    ReusableImageBitmapWorker _reusableImageWorker;
    private AdobeLibraryComposite _targetLibrary;
    private ArrayList<AdobeLibraryElement> _templateElems;
    private TwoWayView _twowayRecyclerView;
    private DesignLibrarySpacingItemDecoration _uniformItemSpacingItemDecoration;
    private AdobeUploadSession<AdobeDCXManifest> _uploadSession;
    private ArrayList<AdobeUploadAssetData> _uploadingImageItemsArray;
    private AdobeWaterFallLayoutManager _waterFallLayoutManager;

    public DesignLibraryItemsListView(Context context) {
        super(context);
        this._imageUploadObservers = new ImageUploadObservers();
        this.AdobeDesignLibraryAssetType_color = 0;
        this.AdobeDesignLibraryAssetType_colorTheme = 1;
        this.AdobeDesignLibraryAssetType_brush = 2;
        this.AdobeDesignLibraryAssetType_image = 3;
        this.AdobeDesignLibraryAssetType_image_in_upload = 33;
        this.AdobeDesignLibraryAssetType_characterStyle = 4;
        this.AdobeDesignLibraryAssetType_layoutStyle = 5;
        this.AdobeDesignLibraryAssetType_look = 6;
        this.AdobeDesignLibrarySectionViewType = 7;
        this.AdobeDesignLibraryAssetType_pattern = 8;
        this.AdobeDesignLibraryAssetType_template = 9;
        this.AdobeDesignLibraryAssetType_3dMaterial = 10;
        this.AdobeDesignLibraryAssetType_3dLight = 11;
        this.AdobeDesignLibraryAssetType_3dModel = 12;
        this.AdobeDesignLibraryAssetType_animation = 13;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public boolean searchInLibrary(String str) {
        AdobeLibraryElementFilter adobeLibraryElementFilter = new AdobeLibraryElementFilter();
        adobeLibraryElementFilter.setMatchAny(true);
        adobeLibraryElementFilter.setName(str);
        ArrayList<AdobeLibraryElement> allElementsWithFilter = this._targetLibrary.getAllElementsWithFilter(adobeLibraryElementFilter);
        this._imageElems = new ArrayList<>();
        this._colorElems = new ArrayList<>();
        this._colorThemeElems = new ArrayList<>();
        this._brushElems = new ArrayList<>();
        this._charStyleElems = new ArrayList<>();
        this._layoutStyleElems = new ArrayList<>();
        this._looksElems = new ArrayList<>();
        this._patternElems = new ArrayList<>();
        this._templateElems = new ArrayList<>();
        this._3dMaterialElems = new ArrayList<>();
        this._3dLightElems = new ArrayList<>();
        this._3dModelElems = new ArrayList<>();
        this._animationElems = new ArrayList<>();
        for (AdobeLibraryElement adobeLibraryElement : allElementsWithFilter) {
            String type = adobeLibraryElement.getType();
            byte b2 = -1;
            switch (type.hashCode()) {
                case -1988296473:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType)) {
                        b2 = 9;
                    }
                    break;
                case -1484987521:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType)) {
                        b2 = 1;
                    }
                    break;
                case -1323798689:
                    if (type.equals("application/vnd.adobe.element.look+dcx")) {
                        b2 = 6;
                    }
                    break;
                case -848656710:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType)) {
                        b2 = 8;
                    }
                    break;
                case -523642159:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType)) {
                        b2 = Ascii.VT;
                    }
                    break;
                case -49110665:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType)) {
                        b2 = 0;
                    }
                    break;
                case -15971864:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType)) {
                        b2 = 4;
                    }
                    break;
                case 30270912:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType)) {
                        b2 = 5;
                    }
                    break;
                case 511986694:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType)) {
                        b2 = 2;
                    }
                    break;
                case 758810582:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType)) {
                        b2 = 3;
                    }
                    break;
                case 1514723250:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType)) {
                        b2 = 10;
                    }
                    break;
                case 1658750380:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType)) {
                        b2 = 7;
                    }
                    break;
                case 1719943200:
                    if (type.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType)) {
                        b2 = Ascii.FF;
                    }
                    break;
            }
            switch (b2) {
                case 0:
                    this._imageElems.add(adobeLibraryElement);
                    break;
                case 1:
                    this._colorElems.add(adobeLibraryElement);
                    break;
                case 2:
                    this._colorThemeElems.add(adobeLibraryElement);
                    break;
                case 3:
                    this._brushElems.add(adobeLibraryElement);
                    break;
                case 4:
                    this._charStyleElems.add(adobeLibraryElement);
                    break;
                case 5:
                    this._layoutStyleElems.add(adobeLibraryElement);
                    break;
                case 6:
                    this._looksElems.add(adobeLibraryElement);
                    break;
                case 7:
                    this._patternElems.add(adobeLibraryElement);
                    break;
                case 8:
                    this._templateElems.add(adobeLibraryElement);
                    break;
                case 9:
                    this._3dMaterialElems.add(adobeLibraryElement);
                    break;
                case 10:
                    this._3dLightElems.add(adobeLibraryElement);
                    break;
                case 11:
                    this._3dModelElems.add(adobeLibraryElement);
                    break;
                case 12:
                    this._animationElems.add(adobeLibraryElement);
                    break;
            }
        }
        refreshDueToDataChange();
        showEmptySearch();
        return false;
    }

    public void showEmptySearch() {
        checkToSetEmptySearchView(this._libraryItemsAdapter.getItemCount() <= 0);
    }

    private void generateLibraryItemList() {
        this._imageElems = new ACLMImageAssetsListProvider().getElements(this._targetLibrary);
        this._colorThemeElems = new ACLMColorThemeAssetsListProvider().getElements(this._targetLibrary);
        this._colorElems = new ACLMColorAssetsListProvider().getElements(this._targetLibrary);
        this._brushElems = new ACLMBrushAssetsListProvider().getElements(this._targetLibrary);
        this._charStyleElems = new ACLMCharStyleAssetsListProvider().getElements(this._targetLibrary);
        this._layoutStyleElems = new ACLMLayerStyleAssetsListProvider().getElements(this._targetLibrary);
        this._looksElems = new ACLMLooksAssetsListProvider().getElements(this._targetLibrary);
        this._patternElems = new ACLMPatternAssetsListProvider().getElements(this._targetLibrary);
        this._templateElems = new ACLMTemplateAssetsListProvider().getElements(this._targetLibrary);
        this._3dMaterialElems = new ACLM3DMaterialAssetsListProvider().getElements(this._targetLibrary);
        this._3dLightElems = new ACLM3DLightAssetsListProvider().getElements(this._targetLibrary);
        this._3dModelElems = new ACLM3DModelAssetsListProvider().getElements(this._targetLibrary);
        this._animationElems = new ACLMAnimationAssetsListProvider().getElements(this._targetLibrary);
    }

    public void setTargetLibraryComposite(AdobeLibraryComposite adobeLibraryComposite) {
        this._targetLibrary = adobeLibraryComposite;
        generateLibraryItemList();
        sortLibraryElementsIntoArraysOfValues();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void generateLibraryItemListofType(String str) {
        if (str == null) {
            str = "";
        }
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1988296473:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType)) {
                    b2 = 9;
                }
                break;
            case -1484987521:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType)) {
                    b2 = 1;
                }
                break;
            case -1323798689:
                if (str.equals("application/vnd.adobe.element.look+dcx")) {
                    b2 = 6;
                }
                break;
            case -848656710:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType)) {
                    b2 = 8;
                }
                break;
            case -523642159:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType)) {
                    b2 = Ascii.VT;
                }
                break;
            case -49110665:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType)) {
                    b2 = 0;
                }
                break;
            case -15971864:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType)) {
                    b2 = 4;
                }
                break;
            case 30270912:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType)) {
                    b2 = 5;
                }
                break;
            case 511986694:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType)) {
                    b2 = 2;
                }
                break;
            case 758810582:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType)) {
                    b2 = 3;
                }
                break;
            case 1514723250:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType)) {
                    b2 = 10;
                }
                break;
            case 1658750380:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType)) {
                    b2 = 7;
                }
                break;
            case 1719943200:
                if (str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType)) {
                    b2 = Ascii.FF;
                }
                break;
        }
        switch (b2) {
            case 0:
                this._imageElems = new ACLMImageAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 1:
                this._colorElems = new ACLMColorAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 2:
                this._colorThemeElems = new ACLMColorThemeAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 3:
                this._brushElems = new ACLMBrushAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 4:
                this._charStyleElems = new ACLMCharStyleAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 5:
                this._layoutStyleElems = new ACLMLayerStyleAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 6:
                this._looksElems = new ACLMLooksAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 7:
                this._patternElems = new ACLMPatternAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 8:
                this._templateElems = new ACLMTemplateAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 9:
                this._3dMaterialElems = new ACLM3DMaterialAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 10:
                this._3dLightElems = new ACLM3DLightAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 11:
                this._3dModelElems = new ACLM3DModelAssetsListProvider().getElements(this._targetLibrary);
                break;
            case 12:
                this._animationElems = new ACLMAnimationAssetsListProvider().getElements(this._targetLibrary);
                break;
            default:
                generateLibraryItemList();
                break;
        }
    }

    private void sortLibraryElementsIntoArraysOfValues() {
        Comparator comparator = new Comparator() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.1
            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                return AdobeDesignLibraryUtilsInternal.getNameOrIdForDisplay((AdobeLibraryElement) obj).compareToIgnoreCase(AdobeDesignLibraryUtilsInternal.getNameOrIdForDisplay((AdobeLibraryElement) obj2));
            }
        };
        Collections.sort(this._imageElems, comparator);
        Collections.sort(this._colorThemeElems, comparator);
        Collections.sort(this._colorElems, comparator);
        Collections.sort(this._brushElems, comparator);
        Collections.sort(this._charStyleElems, comparator);
        Collections.sort(this._layoutStyleElems, comparator);
        Collections.sort(this._looksElems, comparator);
        Collections.sort(this._patternElems, comparator);
        Collections.sort(this._templateElems, comparator);
        Collections.sort(this._3dMaterialElems, comparator);
        Collections.sort(this._3dLightElems, comparator);
        Collections.sort(this._3dModelElems, comparator);
        Collections.sort(this._animationElems, comparator);
    }

    public void setReusableImageWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        this._reusableImageWorker = reusableImageBitmapWorker;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected View getMainRootView(Context context) {
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.adobe_assets_library_items_view, new FrameLayout(context));
        this._swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.adobe_csdk_asset_libraryitemsview_swipe_refresh_layout);
        this._twowayRecyclerView = (TwoWayView) viewInflate.findViewById(R.id.adobe_csdk_asset_library_design_items_twowayview);
        return viewInflate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.ItemDecoration getItemDecoration(RecyclerView recyclerView, Context context) {
        int dimensionPixelSize = getHostActivity().getResources().getDimensionPixelSize(R.dimen.adobe_csdk_library_items_spacing_size);
        this._uniformItemSpacingItemDecoration = new DesignLibrarySpacingItemDecoration(dimensionPixelSize, dimensionPixelSize);
        this._uniformItemSpacingItemDecoration.setMultiColumnDelegate();
        return this._uniformItemSpacingItemDecoration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView getConcreteRecyclerView(Context context) {
        return this._twowayRecyclerView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected SwipeRefreshLayout getSwipeRefreshLayout() {
        return this._swipeRefreshLayout;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.Adapter<RecyclerView.ViewHolder> createRecyclerViewAdapter(Context context, RecyclerView recyclerView) {
        this._libraryItemsAdapter = new LibraryItemsSectionAdapter(context);
        return this._libraryItemsAdapter;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.LayoutManager getLayoutManager(Context context) {
        final int integer = context.getResources().getInteger(R.integer.adobe_csdk_library_items_columns_GCM);
        this._waterFallLayoutManager = new AdobeWaterFallLayoutManager(integer);
        this._waterFallLayoutManager.setClientSectionsDelegate(new AdobeWaterFallLayoutManager.SectionDetailsDelegate() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.2
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeWaterFallLayoutManager.SectionDetailsDelegate
            public int getNumColumnsInSection(int i) {
                return ((LibraryItemsSectionAdapter) DesignLibraryItemsListView.this._itemsAdapter).getNumColumnsInSection(i);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeWaterFallLayoutManager.SectionDetailsDelegate
            public int getGCMOfSpans() {
                return integer;
            }
        });
        return this._waterFallLayoutManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldDisableLibraryItem(AdobeLibraryElement adobeLibraryElement) {
        AdobeAssetDesignLibraryItemFilter designLibraryItemFilter;
        EnumSet<AdobeAssetDesignLibraryItemType> inclusiveDesignLibraryItems;
        if (AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getHostActivity())) {
            return false;
        }
        if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType) || adobeLibraryElement.getType().equals("application/vnd.adobe.element.look+dcx")) {
            return true;
        }
        if (this._designLibraryItemsClientConfiguration != null && (designLibraryItemFilter = this._designLibraryItemsClientConfiguration.getDesignLibraryItemFilter()) != null && (inclusiveDesignLibraryItems = designLibraryItemFilter.getInclusiveDesignLibraryItems()) != null) {
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItemColors);
            }
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItemColorThemes);
            }
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItemImages);
            }
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItemPattern);
            }
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItemTemplate);
            }
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItem3DMaterial);
            }
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItem3DLight);
            }
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItem3DModel);
            }
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType)) {
                return !inclusiveDesignLibraryItems.contains(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItemAnimation);
            }
        }
        return false;
    }

    private boolean shouldDisplayExtendedLibraryItemsInOneUpView() {
        return AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getHostActivity());
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleItemClick(View view, int i) {
        AdobeLibraryElement libraryElement = ((AdobeDesignLibraryItemsCellHolders.BaseCellHolder) view.getTag()).getLibraryElement();
        if (libraryElement != null && !shouldDisableLibraryItem(libraryElement)) {
            LibraryDesignItemsOneUpData libraryDesignItemsOneUpData = new LibraryDesignItemsOneUpData();
            libraryDesignItemsOneUpData.library = this._targetLibrary;
            libraryDesignItemsOneUpData._itemsList = new ArrayList<>();
            if (this._colorElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._colorElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._colorElems);
                }
            }
            if (this._colorThemeElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._colorThemeElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._colorThemeElems);
                }
            }
            if (this._imageElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._imageElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._imageElems);
                }
            }
            if (this._patternElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._patternElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._patternElems);
                }
            }
            if (this._templateElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._templateElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._templateElems);
                }
            }
            if (this._3dMaterialElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._3dMaterialElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._3dMaterialElems);
                }
            }
            if (this._3dLightElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._3dLightElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._3dLightElems);
                }
            }
            if (this._3dModelElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._3dModelElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._3dModelElems);
                }
            }
            if (this._animationElems.size() > 0) {
                if (!shouldDisableLibraryItem(this._animationElems.get(0))) {
                    libraryDesignItemsOneUpData._itemsList.addAll(this._animationElems);
                }
            }
            if (shouldDisplayExtendedLibraryItemsInOneUpView()) {
                libraryDesignItemsOneUpData._itemsList.addAll(new ACLMBrushAssetsListProvider().getElements(this._targetLibrary));
                libraryDesignItemsOneUpData._itemsList.addAll(new ACLMCharStyleAssetsListProvider().getElements(this._targetLibrary));
                libraryDesignItemsOneUpData._itemsList.addAll(new ACLMLayerStyleAssetsListProvider().getElements(this._targetLibrary));
                libraryDesignItemsOneUpData._itemsList.addAll(new ACLMLooksAssetsListProvider().getElements(this._targetLibrary));
            }
            libraryDesignItemsOneUpData.startIndex = libraryDesignItemsOneUpData._itemsList.indexOf(libraryElement);
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = this._parentContainer.get();
            if (iAdobeAssetContainerListViewDelegate != null) {
                iAdobeAssetContainerListViewDelegate.handleAssetClickAction(libraryDesignItemsOneUpData);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleListItemLongClick(View view, int i) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeLibraryElement libraryElement = ((AdobeDesignLibraryItemsCellHolders.BaseCellHolder) view.getTag()).getLibraryElement();
        if (libraryElement != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handleLongClickOnAsset(libraryElement);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handlePopupMenuClick(int i, View view) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeLibraryElement libraryElement = ((AdobeDesignLibraryItemsCellHolders.BaseCellHolder) view.getTag()).getLibraryElement();
        if (libraryElement != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handlePopupMenuClick(libraryElement, view);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToDataChange() {
        this._libraryItemsAdapter.invalidateAdapter();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToNewItemsInsertion() {
        this._libraryItemsAdapter.invalidateAdapter();
    }

    public void setClientViewConfiguration(AdobeDesignLibraryCollectionConfiguration adobeDesignLibraryCollectionConfiguration) {
        this._designLibraryItemsClientConfiguration = adobeDesignLibraryCollectionConfiguration;
    }

    public void setupUpload(AdobeUploadSession<AdobeDCXManifest> adobeUploadSession) {
        if (this._uploadingImageItemsArray == null) {
            this._uploadSession = adobeUploadSession;
            this._uploadingImageItemsArray = new ArrayList<>();
            this._uploadingImageItemsArray.addAll(this._uploadSession.getAssetsList());
            this._libraryItemsAdapter.invalidateAdapter();
        }
    }

    public void cleanUpUpload() {
        this._imageUploadObservers.resetBinder();
        this._uploadSession = null;
        this._uploadingImageItemsArray = null;
    }

    public abstract class SimpleSectionedRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private static final int SECTION_TYPE = 0;
        private HashSet<Integer> _sectionsPositions;
        private final Context mContext;
        private LayoutInflater mLayoutInflater;
        private boolean mSectionInfoValid = false;
        private SparseArray<Section> mSections = new SparseArray<>();
        private int _totalItemsCount = 0;

        protected abstract void calculateItemLayoutProperties(RecyclerView.ViewHolder viewHolder, ItemPositionData itemPositionData);

        protected abstract RecyclerView.ViewHolder createViewHolderOfType(ViewGroup viewGroup, int i);

        protected abstract int getNumOfItemsInSection(int i);

        protected abstract int getSectionCount();

        protected abstract int getSectionItemViewType(int i, int i2);

        protected abstract int getSectionViewType(int i);

        protected abstract void onBindViewHolderOfSection(RecyclerView.ViewHolder viewHolder, int i);

        protected abstract void onBindViewHolderOfSectionItem(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3);

        public SimpleSectionedRecyclerViewAdapter(Context context) {
            this.mLayoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            this.mContext = context;
        }

        public Set<Integer> getSectionPositions() {
            if (this._sectionsPositions != null) {
                return this._sectionsPositions;
            }
            this._sectionsPositions = new HashSet<>();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mSections.size()) {
                    this._sectionsPositions.add(Integer.valueOf(this.mSections.valueAt(i2).firstPosition));
                    i = i2 + 1;
                } else {
                    return this._sectionsPositions;
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return createViewHolderOfType(viewGroup, i);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ItemPositionData itemPositionDataFromGlobalPosition = getItemPositionDataFromGlobalPosition(i);
            if (itemPositionDataFromGlobalPosition.isSectionHeader) {
                onBindViewHolderOfSection(viewHolder, itemPositionDataFromGlobalPosition.sectionNum);
            } else {
                onBindViewHolderOfSectionItem(viewHolder, itemPositionDataFromGlobalPosition.sectionNum, itemPositionDataFromGlobalPosition.positionWithinSection, i);
            }
            calculateItemLayoutProperties(viewHolder, itemPositionDataFromGlobalPosition);
            viewHolder.itemView.setTag(viewHolder);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            ItemPositionData itemPositionDataFromGlobalPosition = getItemPositionDataFromGlobalPosition(i);
            if (itemPositionDataFromGlobalPosition.isSectionHeader) {
                return getSectionViewType(itemPositionDataFromGlobalPosition.sectionNum);
            }
            return getSectionItemViewType(itemPositionDataFromGlobalPosition.sectionNum, itemPositionDataFromGlobalPosition.positionWithinSection);
        }

        public class ItemPositionData {
            public boolean isSectionHeader;
            public int positionWithinSection;
            public int sectionNum;

            public ItemPositionData() {
            }
        }

        public class Section {
            int firstPosition;
            int sectionedPosition;

            public Section(int i) {
                this.firstPosition = i;
            }
        }

        public void setSections(Section[] sectionArr) {
            this.mSections.clear();
            Arrays.sort(sectionArr, new Comparator<Section>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter.1
                @Override // java.util.Comparator
                public int compare(Section section, Section section2) {
                    if (section.firstPosition == section2.firstPosition) {
                        return 0;
                    }
                    return section.firstPosition < section2.firstPosition ? -1 : 1;
                }
            });
            int i = 0;
            for (Section section : sectionArr) {
                section.sectionedPosition = section.firstPosition + i;
                this.mSections.append(section.sectionedPosition, section);
                i++;
            }
            notifyDataSetChanged();
        }

        private int getSectionNumFromGlobalPos(int i) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.mSections.size() && this.mSections.valueAt(i3).sectionedPosition > i; i3++) {
                i2++;
            }
            return i2;
        }

        public ItemPositionData getItemPositionDataFromGlobalPosition(int i) {
            boolean z;
            int i2;
            int i3;
            int size = this.mSections.size() - 1;
            int i4 = 0;
            while (true) {
                if (size < 0) {
                    z = false;
                    i2 = i4;
                    i3 = -1;
                    break;
                }
                int i5 = this.mSections.valueAt(size).sectionedPosition;
                if (i5 == i) {
                    i2 = size;
                    i3 = -1;
                    z = true;
                    break;
                }
                if (i5 >= i) {
                    i4 = size;
                    size--;
                } else {
                    i3 = (i - i5) - 1;
                    z = false;
                    i2 = size;
                    break;
                }
            }
            ItemPositionData itemPositionData = new ItemPositionData();
            itemPositionData.sectionNum = i2;
            itemPositionData.positionWithinSection = i3;
            itemPositionData.isSectionHeader = z;
            return itemPositionData;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - i;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getTotalItemCount();
        }

        protected int getTotalItemCount() {
            int sectionCount = getSectionCount();
            int numOfItemsInSection = 0;
            for (int i = 0; i < sectionCount; i++) {
                numOfItemsInSection += getNumOfItemsInSection(i);
            }
            this._totalItemsCount = numOfItemsInSection + sectionCount;
            return this._totalItemsCount;
        }

        private void buildSectionInformation() {
            if (!this.mSectionInfoValid) {
                int sectionCount = getSectionCount();
                Section[] sectionArr = new Section[sectionCount];
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < sectionCount; i3++) {
                    sectionArr[i3] = new Section(i2);
                    int numOfItemsInSection = getNumOfItemsInSection(i3);
                    i2 += numOfItemsInSection;
                    i += numOfItemsInSection;
                }
                this._totalItemsCount = i + sectionCount;
                setSections(sectionArr);
                this.mSectionInfoValid = true;
            }
        }

        public void invalidateAdapter() {
            this.mSectionInfoValid = false;
            buildSectionInformation();
        }
    }

    class LibraryItemsSectionAdapter extends SimpleSectionedRecyclerViewAdapter {
        final int SECTION_VIEW_TYPES;
        private SectionColumnDetais _sectionColumnCountDetails;
        private SparseArray<Integer> _sectionNumToLibrarySection;
        private Boolean isLoki;
        private final Context mContext;
        private Typeface typeface;

        public LibraryItemsSectionAdapter(Context context) {
            super(context);
            this.SECTION_VIEW_TYPES = 1;
            this.mContext = context;
            this._sectionNumToLibrarySection = new SparseArray<>();
            invalidateAdapter();
            this.isLoki = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(DesignLibraryItemsListView.this.getHostActivity()));
            this.typeface = Typeface.createFromAsset(DesignLibraryItemsListView.this.getHostActivity().getAssets(), "fonts/AdobeClean-SemiLight.otf");
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        public void invalidateAdapter() {
            this._sectionColumnCountDetails = null;
            DesignLibraryItemsListView.this.rebuildLibraryItems();
            super.invalidateAdapter();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        protected RecyclerView.ViewHolder createViewHolderOfType(ViewGroup viewGroup, int i) {
            if (i == 7) {
                return new AdobeDesignLibraryItemsCellHolders.HeaderCellHolder(LayoutInflater.from(this.mContext).inflate(R.layout.adobe_library_items_headercell, viewGroup, false));
            }
            if (i == 0) {
                AdobeDesignLibraryItemsCellHolders.ColorCellHolder colorCellHolder = new AdobeDesignLibraryItemsCellHolders.ColorCellHolder(LayoutInflater.from(this.mContext).inflate(R.layout.adobe_library_items_colorcell, viewGroup, false));
                if (!this.isLoki.booleanValue()) {
                    colorCellHolder.getMenuIcon().setVisibility(8);
                    return colorCellHolder;
                }
                return colorCellHolder;
            }
            if (i == 1) {
                AdobeDesignLibraryItemsCellHolders.ColorThemeCellHolder colorThemeCellHolder = new AdobeDesignLibraryItemsCellHolders.ColorThemeCellHolder(LayoutInflater.from(this.mContext).inflate(R.layout.adobe_library_items_colorthemecell, viewGroup, false));
                if (!this.isLoki.booleanValue()) {
                    colorThemeCellHolder.getMenuIcon().setVisibility(8);
                    return colorThemeCellHolder;
                }
                return colorThemeCellHolder;
            }
            if (i == 2 || i == 4 || i == 3 || i == 5 || i == 6 || i == 8 || i == 9 || i == 10 || i == 11 || i == 12 || i == 13) {
                AdobeDesignLibraryItemsCellHolders.ImageCollectionCellHolder imageCollectionCellHolder = new AdobeDesignLibraryItemsCellHolders.ImageCollectionCellHolder(LayoutInflater.from(this.mContext).inflate(R.layout.adobe_library_items_imagecollectioncell, viewGroup, false));
                if (!this.isLoki.booleanValue()) {
                    imageCollectionCellHolder.getMenuIcon().setVisibility(8);
                    return imageCollectionCellHolder;
                }
                return imageCollectionCellHolder;
            }
            if (i == 33) {
                AdobeDesignLibraryItemsCellHolders.UploadingImageCollectionCellHolder uploadingImageCollectionCellHolderCreateInstance = AdobeDesignLibraryItemsCellHolders.UploadingImageCollectionCellHolder.createInstance(LayoutInflater.from(this.mContext), viewGroup);
                if (!this.isLoki.booleanValue()) {
                    uploadingImageCollectionCellHolderCreateInstance.getMenuIcon().setVisibility(8);
                    return uploadingImageCollectionCellHolderCreateInstance;
                }
                return uploadingImageCollectionCellHolderCreateInstance;
            }
            return null;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        protected void calculateItemLayoutProperties(RecyclerView.ViewHolder viewHolder, SimpleSectionedRecyclerViewAdapter.ItemPositionData itemPositionData) {
            View view = viewHolder.itemView;
            view.setLayoutParams(DesignLibraryItemsListView.this._waterFallLayoutManager.getLayoutParamsForItem((StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams(), itemPositionData.sectionNum, itemPositionData.isSectionHeader));
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        protected int getSectionCount() {
            int i = 0;
            if (DesignLibraryItemsListView.this._colorElems != null && DesignLibraryItemsListView.this._colorElems.size() > 0) {
                this._sectionNumToLibrarySection.put(0, 0);
                i = 1;
            }
            if (DesignLibraryItemsListView.this._colorThemeElems != null && DesignLibraryItemsListView.this._colorThemeElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 1);
                i++;
            }
            if (DesignLibraryItemsListView.this._brushElems != null && DesignLibraryItemsListView.this._brushElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 2);
                i++;
            }
            if ((DesignLibraryItemsListView.this._imageElems != null && DesignLibraryItemsListView.this._imageElems.size() > 0) || (DesignLibraryItemsListView.this._uploadingImageItemsArray != null && DesignLibraryItemsListView.this._uploadingImageItemsArray.size() > 0)) {
                this._sectionNumToLibrarySection.put(i, 3);
                i++;
            }
            if (DesignLibraryItemsListView.this._charStyleElems != null && DesignLibraryItemsListView.this._charStyleElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 4);
                i++;
            }
            if (DesignLibraryItemsListView.this._layoutStyleElems != null && DesignLibraryItemsListView.this._layoutStyleElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 5);
                i++;
            }
            if (DesignLibraryItemsListView.this._looksElems != null && DesignLibraryItemsListView.this._looksElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 6);
                i++;
            }
            if (DesignLibraryItemsListView.this._patternElems != null && DesignLibraryItemsListView.this._patternElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 8);
                i++;
            }
            if (DesignLibraryItemsListView.this._templateElems != null && DesignLibraryItemsListView.this._templateElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 9);
                i++;
            }
            if (DesignLibraryItemsListView.this._3dMaterialElems != null && DesignLibraryItemsListView.this._3dMaterialElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 10);
                i++;
            }
            if (DesignLibraryItemsListView.this._3dLightElems != null && DesignLibraryItemsListView.this._3dLightElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 11);
                i++;
            }
            if (DesignLibraryItemsListView.this._3dModelElems != null && DesignLibraryItemsListView.this._3dModelElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 12);
                i++;
            }
            if (DesignLibraryItemsListView.this._animationElems != null && DesignLibraryItemsListView.this._animationElems.size() > 0) {
                this._sectionNumToLibrarySection.put(i, 13);
                return i + 1;
            }
            return i;
        }

        private int getLibrarySectionFromRawSectionNum(int i) {
            return this._sectionNumToLibrarySection.get(i).intValue();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        protected int getNumOfItemsInSection(int i) {
            switch (getLibrarySectionFromRawSectionNum(i)) {
                case 0:
                    return DesignLibraryItemsListView.this._colorElems.size();
                case 1:
                    return DesignLibraryItemsListView.this._colorThemeElems.size();
                case 2:
                    return DesignLibraryItemsListView.this._brushElems.size();
                case 3:
                    return DesignLibraryItemsListView.this._imageElems.size() + DesignLibraryItemsListView.this.getUploadingImagesSize();
                case 4:
                    return DesignLibraryItemsListView.this._charStyleElems.size();
                case 5:
                    return DesignLibraryItemsListView.this._layoutStyleElems.size();
                case 6:
                    return DesignLibraryItemsListView.this._looksElems.size();
                case 7:
                default:
                    return 0;
                case 8:
                    return DesignLibraryItemsListView.this._patternElems.size();
                case 9:
                    return DesignLibraryItemsListView.this._templateElems.size();
                case 10:
                    return DesignLibraryItemsListView.this._3dMaterialElems.size();
                case 11:
                    return DesignLibraryItemsListView.this._3dLightElems.size();
                case 12:
                    return DesignLibraryItemsListView.this._3dModelElems.size();
                case 13:
                    return DesignLibraryItemsListView.this._animationElems.size();
            }
        }

        private void bindColorItem(RecyclerView.ViewHolder viewHolder, int i, int i2) {
            AdobeLibraryElement adobeLibraryElement = (AdobeLibraryElement) DesignLibraryItemsListView.this._colorElems.get(i);
            AdobeDesignLibraryItemsCellHolders.ColorCellHolder colorCellHolder = (AdobeDesignLibraryItemsCellHolders.ColorCellHolder) viewHolder;
            boolean zShouldDisableLibraryItem = DesignLibraryItemsListView.this.shouldDisableLibraryItem(adobeLibraryElement);
            colorCellHolder.setLibraryElement(adobeLibraryElement);
            colorCellHolder.setDisabled(zShouldDisableLibraryItem);
            colorCellHolder.setColor(AdobeDesignLibraryUtils.getRGBColorForElement(adobeLibraryElement, DesignLibraryItemsListView.this._targetLibrary).intValue());
            colorCellHolder.setColorRgbText(AdobeDesignLibraryUtilsInternal.getNameOrIdForDisplay(adobeLibraryElement));
            colorCellHolder.setModifiedDate(AdobeDesignLibraryUtilsInternal.getModifiedDate(adobeLibraryElement));
            colorCellHolder.setTypeface(this.typeface);
            colorCellHolder.setAssetClickListener(new AssetsRecyclerListView.AssetClickListener(i2));
            DesignLibraryItemsListView.this.contextMenuClickListener = new AssetsRecyclerListView.AssetContextMenuClickListener(i2);
            colorCellHolder.setContextMenuClickListener(DesignLibraryItemsListView.this.contextMenuClickListener);
        }

        private double getImageAspectRatioOfLibraryItem(int i, AdobeLibraryElement adobeLibraryElement) {
            switch (i) {
                case 2:
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    AdobeAssetImageDimensions dimsofRenditionForElement = AdobeDesignLibraryUtilsInternal.getDimsofRenditionForElement(adobeLibraryElement, DesignLibraryItemsListView.this._targetLibrary);
                    if (dimsofRenditionForElement != null && dimsofRenditionForElement.width > 0.0f && dimsofRenditionForElement.height > 0.0f) {
                        break;
                    }
                    break;
                case 3:
                    AdobeAssetImageDimensions dimsForImgElement = AdobeDesignLibraryUtilsInternal.getDimsForImgElement(adobeLibraryElement, DesignLibraryItemsListView.this._targetLibrary);
                    if (dimsForImgElement != null && dimsForImgElement.width > 0.0f && dimsForImgElement.height > 0.0f) {
                        break;
                    }
                    break;
            }
            return 1.0d;
        }

        private void bindImageCollectionLibraryItem(int i, RecyclerView.ViewHolder viewHolder, final AdobeLibraryElement adobeLibraryElement, int i2) {
            final AdobeDesignLibraryItemsCellHolders.ImageCollectionCellHolder imageCollectionCellHolder = (AdobeDesignLibraryItemsCellHolders.ImageCollectionCellHolder) viewHolder;
            imageCollectionCellHolder.setLibraryElement(adobeLibraryElement);
            imageCollectionCellHolder.setTitle(AdobeDesignLibraryUtilsInternal.getNameOrIdForDisplay(adobeLibraryElement));
            imageCollectionCellHolder.setImageHeightRatio(getImageAspectRatioOfLibraryItem(i, adobeLibraryElement));
            imageCollectionCellHolder.setDisabled(DesignLibraryItemsListView.this.shouldDisableLibraryItem(adobeLibraryElement));
            imageCollectionCellHolder.setModifiedDate(AdobeDesignLibraryUtilsInternal.getModifiedDate(adobeLibraryElement));
            imageCollectionCellHolder.setTypeface(this.typeface);
            imageCollectionCellHolder.getDynamicImageView().setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageCollectionCellHolder.setAssetClicKListener(new AssetsRecyclerListView.AssetClickListener(i2));
            DesignLibraryItemsListView.this.contextMenuClickListener = new AssetsRecyclerListView.AssetContextMenuClickListener(i2);
            imageCollectionCellHolder.setContextMenuClickListener(DesignLibraryItemsListView.this.contextMenuClickListener);
            if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType)) {
                imageCollectionCellHolder.getDynamicImageView().setScaleType(ImageView.ScaleType.CENTER);
            }
            final AdobeAssetImageDimensions adobeAssetImageDimensions = new AdobeAssetImageDimensions(450.0f, 0.0f);
            imageCollectionCellHolder.displayThumbnail((Bitmap) null);
            BitmapDrawable bitmapDrawableLoadImage = DesignLibraryItemsListView.this._reusableImageWorker.loadImage(adobeLibraryElement.getElementId());
            if (bitmapDrawableLoadImage == null) {
                IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<String, AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.LibraryItemsSectionAdapter.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(String str) {
                        if (str == null || str.isEmpty()) {
                            imageCollectionCellHolder.displayThumbnail((Bitmap) null);
                        } else if (new File(str).exists()) {
                            DesignLibraryItemsListView.this._reusableImageWorker.loadImageFromFile(adobeLibraryElement.getElementId(), str, adobeAssetImageDimensions, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.LibraryItemsSectionAdapter.1.1
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                public void onCompletion(BitmapDrawable bitmapDrawable) {
                                    if (imageCollectionCellHolder.getLibraryElement().getElementId().equals(adobeLibraryElement.getElementId())) {
                                        imageCollectionCellHolder.displayThumbnail(bitmapDrawable);
                                    } else {
                                        imageCollectionCellHolder.displayThumbnail((BitmapDrawable) null);
                                    }
                                }
                            }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.LibraryItemsSectionAdapter.1.2
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeAssetException adobeAssetException) {
                                    imageCollectionCellHolder.displayThumbnail((BitmapDrawable) null);
                                }
                            });
                        } else {
                            imageCollectionCellHolder.displayThumbnail((BitmapDrawable) null);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeLibraryException adobeLibraryException) {
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }
                };
                Handler handler = new Handler(Looper.getMainLooper());
                int iMaxthumbnailSize = ACLibraryAssetRenditionUtils.maxthumbnailSize(adobeLibraryElement, 3, DesignLibraryItemsListView.this.getHostActivity(), true);
                if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType)) {
                    AdobeLibraryRepresentation firstRepresentationOfType = adobeLibraryElement.getFirstRepresentationOfType("image/png");
                    if (firstRepresentationOfType != null) {
                        ACLibraryAssetRenditionUtils.fetchRenditionForRepresentation(iMaxthumbnailSize, DesignLibraryItemsListView.this._targetLibrary, firstRepresentationOfType, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
                        return;
                    }
                    AdobeLibraryRepresentation firstRepresentationOfType2 = adobeLibraryElement.getFirstRepresentationOfType("image/jpeg");
                    if (firstRepresentationOfType2 != null) {
                        ACLibraryAssetRenditionUtils.fetchRenditionForRepresentation(iMaxthumbnailSize, DesignLibraryItemsListView.this._targetLibrary, firstRepresentationOfType2, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
                        return;
                    }
                }
                ACLibraryAssetRenditionUtils.fetchAnyImageRepresentation(iMaxthumbnailSize, DesignLibraryItemsListView.this._targetLibrary, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
                return;
            }
            imageCollectionCellHolder.displayThumbnail(bitmapDrawableLoadImage);
        }

        private ArrayList<Integer> getRGBColors(AdobeLibraryElement adobeLibraryElement) {
            ArrayList<Integer> arrayList;
            JSONObject jSONObjectOptJSONObject;
            JSONObject colorThemeDataForElement = AdobeDesignLibraryUtilsInternal.getColorThemeDataForElement(adobeLibraryElement, DesignLibraryItemsListView.this._targetLibrary);
            if (colorThemeDataForElement != null) {
                colorThemeDataForElement.optString("rule");
                colorThemeDataForElement.optString("mood");
                JSONArray jSONArray = (JSONArray) colorThemeDataForElement.opt("swatches");
                if (jSONArray == null) {
                    return null;
                }
                int length = jSONArray.length();
                ArrayList<Integer> arrayList2 = new ArrayList<>(length);
                for (int i = 0; i < length; i++) {
                    Object objOpt = jSONArray.opt(i);
                    if (objOpt instanceof JSONArray) {
                        jSONObjectOptJSONObject = ((JSONArray) objOpt).optJSONObject(0);
                    } else {
                        jSONObjectOptJSONObject = objOpt instanceof JSONObject ? (JSONObject) objOpt : null;
                    }
                    if (jSONObjectOptJSONObject != null) {
                        Object objOpt2 = jSONObjectOptJSONObject.opt("value");
                        if (objOpt2 == null) {
                            objOpt2 = jSONObjectOptJSONObject.opt("values");
                        }
                        if (objOpt2 instanceof JSONObject) {
                            JSONObject jSONObject = (JSONObject) objOpt2;
                            arrayList2.add(Integer.valueOf(Color.rgb(jSONObject.optInt("r"), jSONObject.optInt(GoogleBaseNamespaces.G_ALIAS), jSONObject.optInt("b"))));
                        } else if (objOpt2 instanceof JSONArray) {
                            JSONArray jSONArray2 = (JSONArray) objOpt2;
                            arrayList2.add(Integer.valueOf(Color.rgb((int) (jSONArray2.optDouble(0) * 255.0d), (int) (jSONArray2.optDouble(1) * 255.0d), (int) (jSONArray2.optDouble(2) * 255.0d))));
                        }
                    }
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            return arrayList;
        }

        private void bindColorThemeItem(RecyclerView.ViewHolder viewHolder, int i, int i2) {
            AdobeLibraryElement adobeLibraryElement = (AdobeLibraryElement) DesignLibraryItemsListView.this._colorThemeElems.get(i);
            AdobeDesignLibraryItemsCellHolders.ColorThemeCellHolder colorThemeCellHolder = (AdobeDesignLibraryItemsCellHolders.ColorThemeCellHolder) viewHolder;
            boolean zShouldDisableLibraryItem = DesignLibraryItemsListView.this.shouldDisableLibraryItem(adobeLibraryElement);
            colorThemeCellHolder.setLibraryElement(adobeLibraryElement);
            colorThemeCellHolder.setDisabled(zShouldDisableLibraryItem);
            colorThemeCellHolder.setRgbColors(getRGBColors(adobeLibraryElement));
            colorThemeCellHolder.setTitle(AdobeDesignLibraryUtilsInternal.getNameOrIdForDisplay(adobeLibraryElement));
            colorThemeCellHolder.setModifiedDate(AdobeDesignLibraryUtilsInternal.getModifiedDate(adobeLibraryElement));
            colorThemeCellHolder.setTypeface(this.typeface);
            colorThemeCellHolder.setAssetClickListener(new AssetsRecyclerListView.AssetClickListener(i2));
            DesignLibraryItemsListView.this.contextMenuClickListener = new AssetsRecyclerListView.AssetContextMenuClickListener(i2);
            colorThemeCellHolder.setContextMenuClickListener(DesignLibraryItemsListView.this.contextMenuClickListener);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        protected void onBindViewHolderOfSectionItem(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3) {
            int librarySectionFromRawSectionNum = getLibrarySectionFromRawSectionNum(i);
            switch (librarySectionFromRawSectionNum) {
                case 0:
                    bindColorItem(viewHolder, i2, i3);
                    break;
                case 1:
                    bindColorThemeItem(viewHolder, i2, i3);
                    break;
                case 2:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._brushElems.get(i2), i3);
                    break;
                case 3:
                    if (i2 < DesignLibraryItemsListView.this.getUploadingImagesSize()) {
                        bindUploadingImageItem((AdobeDesignLibraryItemsCellHolders.UploadingImageCollectionCellHolder) viewHolder, (AdobeUploadAssetData) DesignLibraryItemsListView.this._uploadingImageItemsArray.get(i2), i3);
                    } else {
                        bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._imageElems.get(i2 - DesignLibraryItemsListView.this.getUploadingImagesSize()), i3);
                    }
                    break;
                case 4:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._charStyleElems.get(i2), i3);
                    break;
                case 5:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._layoutStyleElems.get(i2), i3);
                    break;
                case 6:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._looksElems.get(i2), i3);
                    break;
                case 8:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._patternElems.get(i2), i3);
                    break;
                case 9:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._templateElems.get(i2), i3);
                    break;
                case 10:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._3dMaterialElems.get(i2), i3);
                    break;
                case 11:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._3dLightElems.get(i2), i3);
                    break;
                case 12:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._3dModelElems.get(i2), i3);
                    break;
                case 13:
                    bindImageCollectionLibraryItem(librarySectionFromRawSectionNum, viewHolder, (AdobeLibraryElement) DesignLibraryItemsListView.this._animationElems.get(i2), i3);
                    break;
            }
        }

        private void bindUploadingImageItem(AdobeDesignLibraryItemsCellHolders.UploadingImageCollectionCellHolder uploadingImageCollectionCellHolder, AdobeUploadAssetData adobeUploadAssetData, int i) {
            DesignLibraryItemsListView.this._imageUploadObservers.bindCellViewToAsset(adobeUploadAssetData, uploadingImageCollectionCellHolder.getImageUploadCellView());
            AdobeAssetImageDimensions adobeAssetImageDimensionsAdjustRenditionSizeBasedOnDeviceScale = AssetsAbsListView.adjustRenditionSizeBasedOnDeviceScale(AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION);
            String path = adobeUploadAssetData.getLocalAssetURL().getPath();
            Bitmap bitmapDecodeSampledBitmapFromResource = null;
            try {
                bitmapDecodeSampledBitmapFromResource = AdobeUploadThumbnailMgr.decodeSampledBitmapFromResource(path, 512, 384);
            } catch (Exception e2) {
                Log.e(DesignLibraryItemsListView.T, e2.getMessage());
            } catch (OutOfMemoryError e3) {
                Log.e(DesignLibraryItemsListView.T, e3.getMessage());
            }
            uploadingImageCollectionCellHolder.setTitle(FilenameUtils.getBaseName(path));
            if (bitmapDecodeSampledBitmapFromResource != null) {
                uploadingImageCollectionCellHolder.displayThumbnail(ThumbnailUtils.extractThumbnail(bitmapDecodeSampledBitmapFromResource, (int) adobeAssetImageDimensionsAdjustRenditionSizeBasedOnDeviceScale.width, (int) (adobeAssetImageDimensionsAdjustRenditionSizeBasedOnDeviceScale.width * (bitmapDecodeSampledBitmapFromResource.getHeight() / bitmapDecodeSampledBitmapFromResource.getWidth()))));
            }
            uploadingImageCollectionCellHolder.setAssetClicKListener(new AssetsRecyclerListView.AssetClickListener(i));
            DesignLibraryItemsListView.this.contextMenuClickListener = new AssetsRecyclerListView.AssetContextMenuClickListener(i);
            uploadingImageCollectionCellHolder.setContextMenuClickListener(DesignLibraryItemsListView.this.contextMenuClickListener);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        protected void onBindViewHolderOfSection(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            int size;
            AdobeDesignLibraryItemsCellHolders.HeaderCellHolder headerCellHolder = (AdobeDesignLibraryItemsCellHolders.HeaderCellHolder) viewHolder;
            String str = null;
            switch (getLibrarySectionFromRawSectionNum(i)) {
                case 0:
                    size = DesignLibraryItemsListView.this._colorElems.size();
                    i2 = R.string.adobe_csdk_design_library_header_color;
                    break;
                case 1:
                    size = DesignLibraryItemsListView.this._colorThemeElems.size();
                    i2 = R.string.adobe_csdk_design_library_header_colortheme;
                    break;
                case 2:
                    size = DesignLibraryItemsListView.this._brushElems.size();
                    i2 = R.string.adobe_csdk_design_library_header_brushes;
                    break;
                case 3:
                    size = DesignLibraryItemsListView.this.getUploadingImagesSize() + DesignLibraryItemsListView.this._imageElems.size();
                    i2 = R.string.adobe_csdk_design_library_header_graphics;
                    break;
                case 4:
                    i2 = R.string.adobe_csdk_design_library_header_textstyle;
                    size = DesignLibraryItemsListView.this._charStyleElems.size();
                    break;
                case 5:
                    i2 = R.string.adobe_csdk_design_library_header_layoutstyle;
                    size = DesignLibraryItemsListView.this._layoutStyleElems.size();
                    break;
                case 6:
                    i2 = R.string.adobe_csdk_design_library_header_looks;
                    size = DesignLibraryItemsListView.this._looksElems.size();
                    break;
                case 7:
                default:
                    i2 = 0;
                    size = 0;
                    break;
                case 8:
                    i2 = R.string.adobe_csdk_design_library_header_patterns;
                    size = DesignLibraryItemsListView.this._patternElems.size();
                    break;
                case 9:
                    i2 = R.string.adobe_csdk_design_library_header_templates;
                    size = DesignLibraryItemsListView.this._templateElems.size();
                    break;
                case 10:
                    i2 = R.string.adobe_csdk_design_library_header_materials;
                    size = DesignLibraryItemsListView.this._3dMaterialElems.size();
                    break;
                case 11:
                    i2 = R.string.adobe_csdk_design_library_header_lights;
                    size = DesignLibraryItemsListView.this._3dLightElems.size();
                    break;
                case 12:
                    i2 = R.string.adobe_csdk_design_library_header_models;
                    size = DesignLibraryItemsListView.this._3dModelElems.size();
                    break;
                case 13:
                    i2 = R.string.adobe_csdk_design_library_header_animations;
                    size = DesignLibraryItemsListView.this._animationElems.size();
                    break;
            }
            if (i2 != 0) {
                str = String.format(DesignLibraryItemsListView.this.getHostActivity().getResources().getString(i2), Integer.valueOf(size));
            }
            if (str != null) {
                headerCellHolder.setTitle(str);
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        protected int getSectionItemViewType(int i, int i2) {
            int librarySectionFromRawSectionNum = getLibrarySectionFromRawSectionNum(i);
            if (librarySectionFromRawSectionNum == 3 && i2 < DesignLibraryItemsListView.this.getUploadingImagesSize()) {
                return 33;
            }
            return librarySectionFromRawSectionNum;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.SimpleSectionedRecyclerViewAdapter
        protected int getSectionViewType(int i) {
            return 7;
        }

        private void initializeSectionColumnDetails() {
            if (this._sectionColumnCountDetails == null) {
                this._sectionColumnCountDetails = new SectionColumnDetais();
                this._sectionColumnCountDetails.defaultColumns = this.mContext.getResources().getInteger(R.integer.adobe_csdk_library_items_default_columns);
                this._sectionColumnCountDetails.colorSectionColumns = this.mContext.getResources().getInteger(R.integer.adobe_csdk_library_items_color_section_columns);
                this._sectionColumnCountDetails.colorThemeSectionColumns = this.mContext.getResources().getInteger(R.integer.adobe_csdk_library_items_colortheme_section_columns);
                this._sectionColumnCountDetails.imageSectionColumns = this.mContext.getResources().getInteger(R.integer.adobe_csdk_library_items_image_section_columns);
            }
        }

        public int getNumColumnsInSection(int i) {
            int librarySectionFromRawSectionNum = getLibrarySectionFromRawSectionNum(i);
            initializeSectionColumnDetails();
            int i2 = this._sectionColumnCountDetails.defaultColumns;
            switch (librarySectionFromRawSectionNum) {
                case 0:
                    return this._sectionColumnCountDetails.colorSectionColumns;
                case 1:
                    return this._sectionColumnCountDetails.colorThemeSectionColumns;
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    return this._sectionColumnCountDetails.imageSectionColumns;
                case 7:
                default:
                    return i2;
            }
        }

        class SectionColumnDetais {
            public int colorSectionColumns;
            public int colorThemeSectionColumns;
            public int defaultColumns;
            public int imageSectionColumns;

            SectionColumnDetais() {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getUploadingImagesSize() {
        if (this._uploadingImageItemsArray == null) {
            return 0;
        }
        return this._uploadingImageItemsArray.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rebuildLibraryItems() {
        sortLibraryElementsIntoArraysOfValues();
    }

    public class LibraryImageUploadCellView extends UploadAssetCellView {
        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView
        protected RelativeLayout getProgressBarContainer() {
            return (RelativeLayout) getRootView().findViewById(R.id.adobe_csdk_library_image_progressbar_container);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
        protected void performOnFinishInflate() {
            createAttachProgressBarToView();
            this._imageViewAssetPicture = (ImageView) getRootView().findViewById(R.id.adobe_csdk_library_items_imagecollection_image);
        }
    }

    class ImageUploadObservers {
        Map<String, Observer> _assetsUploadObservers;

        private ImageUploadObservers() {
            this._assetsUploadObservers = new HashMap();
        }

        public void resetBinder() {
            for (Map.Entry<String, Observer> entry : this._assetsUploadObservers.entrySet()) {
                AdobeUploadAssetData adobeUploadAssetData = new AdobeUploadAssetData();
                adobeUploadAssetData.guid = entry.getKey();
                DesignLibraryItemsListView.this._uploadSession.removeObserverForAssetUpload(adobeUploadAssetData, entry.getValue());
            }
            this._assetsUploadObservers.clear();
        }

        protected void updateUploadCellViewStatus(final AdobeUploadAssetData adobeUploadAssetData, final UploadAssetCellView uploadAssetCellView) {
            ((Activity) DesignLibraryItemsListView.this.context).runOnUiThread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.ImageUploadObservers.1
                @Override // java.lang.Runnable
                public void run() {
                    uploadAssetCellView.setUploadStatus(adobeUploadAssetData.getStatus());
                    uploadAssetCellView.setUploadProgres(adobeUploadAssetData.getProgress());
                }
            });
        }

        public void bindCellViewToAsset(AdobeUploadAssetData adobeUploadAssetData, final UploadAssetCellView uploadAssetCellView) {
            unBindCellView(adobeUploadAssetData);
            Observer observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView.ImageUploadObservers.2
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    ImageUploadObservers.this.updateUploadCellViewStatus((AdobeUploadAssetData) obj, uploadAssetCellView);
                }
            };
            this._assetsUploadObservers.put(adobeUploadAssetData.guid, observer);
            DesignLibraryItemsListView.this._uploadSession.addObserverForAssetUpload(adobeUploadAssetData, observer);
            updateUploadCellViewStatus(adobeUploadAssetData, uploadAssetCellView);
        }

        public void unBindCellView(AdobeUploadAssetData adobeUploadAssetData) {
            Observer observer = this._assetsUploadObservers.get(adobeUploadAssetData.guid);
            if (observer != null) {
                this._assetsUploadObservers.remove(adobeUploadAssetData.guid);
                DesignLibraryItemsListView.this._uploadSession.removeObserverForAssetUpload(adobeUploadAssetData, observer);
            }
        }
    }
}
