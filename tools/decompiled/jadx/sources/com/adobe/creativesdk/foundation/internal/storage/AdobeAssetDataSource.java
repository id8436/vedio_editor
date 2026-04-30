package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetProduct;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetProductFolder;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderBy;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderDirection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackage;
import com.adobe.creativesdk.foundation.storage.IAdobeAssetFolderNextPageCallback;
import com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetDataSource implements IAdobeAssetDataSource {
    private static int kAssetDataSourceItemsPerPageLimit = 20;
    protected AdobeCloud _cloud;
    ArrayList<AdobeAsset> data;
    AdobeAssetDataSourceType dataSourceType;
    private IAdobeAssetDataSourceDelegate delegate;
    boolean loadingItems;
    boolean loadingItemsFromScratch;
    private AdobeAssetFolder targetFolder;

    public IAdobeAssetDataSourceDelegate getDelegate() {
        return this.delegate;
    }

    public void setDelegate(IAdobeAssetDataSourceDelegate iAdobeAssetDataSourceDelegate) {
        this.delegate = iAdobeAssetDataSourceDelegate;
    }

    public AdobeAssetFolder getTargetFolder() {
        return this.targetFolder;
    }

    public void setTargetFolder(AdobeAssetFolder adobeAssetFolder) {
        this.targetFolder = adobeAssetFolder;
    }

    public AdobeAssetDataSource(AdobeAssetDataSourceType adobeAssetDataSourceType, AdobeCloud adobeCloud) {
        this.dataSourceType = adobeAssetDataSourceType;
        this._cloud = adobeCloud;
    }

    public void setDataSourceType(AdobeAssetDataSourceType adobeAssetDataSourceType) {
        this.dataSourceType = adobeAssetDataSourceType;
    }

    public void setLoadingItems(Boolean bool) {
        this.loadingItems = bool.booleanValue();
    }

    public ArrayList<AdobeAsset> assetsToDisplay() {
        return this.data;
    }

    public ArrayList<AdobeAsset> searchAssets(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return assetsToDisplay();
        }
        ArrayList<AdobeAsset> arrayList = new ArrayList<>();
        if (this.data != null) {
            for (AdobeAsset adobeAsset : this.data) {
                if (adobeAsset.getName() != null && adobeAsset.getName().toLowerCase().contains(str.toLowerCase())) {
                    arrayList.add(adobeAsset);
                }
            }
        }
        return arrayList;
    }

    public void loadItems() {
        loadItemsFromScratch(false);
    }

    public void resetTargetFolder() {
        this.targetFolder = null;
    }

    public boolean loadItemsFromScratch(boolean z) {
        IAdobeAssetDataSourceDelegate delegate;
        if (this.loadingItems) {
            return false;
        }
        if (this.targetFolder != null) {
            this.loadingItemsFromScratch = z;
            if (z) {
                this.targetFolder.resetPagingOrderedByField(AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED, AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_DESCENDING);
                IAdobeAssetDataSourceDelegate delegate2 = getDelegate();
                if (delegate2 != null) {
                    delegate2.willLoadDataFromScratch();
                }
            }
            if (this.targetFolder.hasNextPage()) {
                IAdobeAssetDataSourceDelegate delegate3 = getDelegate();
                if (delegate3 != null) {
                    delegate3.willLoadNextPageForExistingPackage();
                }
                return loadNextPage();
            }
            IAdobeAssetDataSourceDelegate delegate4 = getDelegate();
            if (delegate4 != null) {
                delegate4.didFinishLoading();
            }
            return true;
        }
        AdobeAssetProduct adobeAssetProduct = AdobeAssetProduct.AdobeAssetProductUndefined;
        if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceDraw)) {
            adobeAssetProduct = AdobeAssetProduct.AdobeAssetProductDraw;
        } else if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceSketches)) {
            adobeAssetProduct = AdobeAssetProduct.AdobeAssetProductSketch;
        } else if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary)) {
            adobeAssetProduct = AdobeAssetProduct.AdobeAssetProductLibrary;
        } else if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourcePSMix)) {
            adobeAssetProduct = AdobeAssetProduct.AdobeAssetProductPSMix;
        } else if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions)) {
            adobeAssetProduct = AdobeAssetProduct.AdobeAssetProductComposition;
        }
        this.targetFolder = AdobeAssetProductFolder.getRootForProduct(adobeAssetProduct, this._cloud);
        if (z && (delegate = getDelegate()) != null) {
            delegate.willLoadDataFromScratch();
        }
        return loadNextPage();
    }

    public boolean loadNextPage() {
        if (this.loadingItems) {
            return false;
        }
        if (!this.targetFolder.hasNextPage()) {
            IAdobeAssetDataSourceDelegate delegate = getDelegate();
            if (delegate == null) {
                return false;
            }
            delegate.didFinishLoading();
            return false;
        }
        this.loadingItems = true;
        this.targetFolder.getNextPage(kAssetDataSourceItemsPerPageLimit, new AnonymousClass1(new WeakReference(this)));
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource$1, reason: invalid class name */
    class AnonymousClass1 implements IAdobeAssetFolderNextPageCallback {
        final /* synthetic */ WeakReference val$weakThis;
        final int[] numberProcessed = {0};
        final ArrayList<AdobeAsset> newData = new ArrayList<>();

        AnonymousClass1(WeakReference weakReference) {
            this.val$weakThis = weakReference;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void allItemsLoaded() {
            Collections.sort(this.newData, new Comparator<AdobeAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource.1.1
                @Override // java.util.Comparator
                public int compare(AdobeAsset adobeAsset, AdobeAsset adobeAsset2) {
                    return ((AdobeAssetPackage) adobeAsset2).getModificationDate().compareTo(((AdobeAssetPackage) adobeAsset).getModificationDate());
                }
            });
            AdobeAssetDataSource adobeAssetDataSource = (AdobeAssetDataSource) this.val$weakThis.get();
            if (adobeAssetDataSource != null) {
                if (adobeAssetDataSource.loadingItemsFromScratch) {
                    adobeAssetDataSource.data.clear();
                    adobeAssetDataSource.loadingItemsFromScratch = false;
                }
                adobeAssetDataSource.data.addAll(this.newData);
                IAdobeAssetDataSourceDelegate delegate = AdobeAssetDataSource.this.getDelegate();
                if (delegate != null) {
                    delegate.didLoadMoreDataWithCount(adobeAssetDataSource.data.size());
                }
                if (delegate != null) {
                    delegate.didFinishLoading();
                }
                adobeAssetDataSource.loadingItems = false;
            }
        }

        @Override // com.adobe.creativesdk.foundation.storage.IAdobeAssetFolderNextPageCallback
        public void onCompletion(final ArrayList<AdobeAsset> arrayList, int i) {
            AdobeAssetDataSource adobeAssetDataSource = (AdobeAssetDataSource) this.val$weakThis.get();
            if (adobeAssetDataSource != null) {
                if (adobeAssetDataSource.data == null) {
                    adobeAssetDataSource.data = new ArrayList<>(i);
                }
                if (arrayList.size() == 0) {
                    IAdobeAssetDataSourceDelegate delegate = AdobeAssetDataSource.this.getDelegate();
                    if (delegate != null) {
                        delegate.didFinishLoading();
                    }
                    adobeAssetDataSource.data.clear();
                    adobeAssetDataSource.loadingItems = false;
                }
                for (AdobeAsset adobeAsset : arrayList) {
                    if (adobeAsset instanceof AdobeAssetPackage) {
                        final AdobeAssetPackage adobeAssetPackage = (AdobeAssetPackage) adobeAsset;
                        adobeAssetPackage.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource.1.2
                            @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
                            public void onCompletion() {
                                AnonymousClass1.this.newData.add(adobeAssetPackage);
                                int[] iArr = AnonymousClass1.this.numberProcessed;
                                iArr[0] = iArr[0] + 1;
                                if (arrayList.size() == AnonymousClass1.this.numberProcessed[0]) {
                                    AnonymousClass1.this.allItemsLoaded();
                                }
                            }
                        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource.1.3
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeCSDKException adobeCSDKException) {
                                int[] iArr = AnonymousClass1.this.numberProcessed;
                                iArr[0] = iArr[0] + 1;
                                IAdobeAssetDataSourceDelegate delegate2 = AdobeAssetDataSource.this.getDelegate();
                                if (adobeCSDKException instanceof AdobeAssetException) {
                                    AdobeAssetException adobeAssetException = (AdobeAssetException) adobeCSDKException;
                                    if (adobeAssetException.getErrorCode().getValue() != 404) {
                                        if (delegate2 != null) {
                                            delegate2.didFailToLoadMoreDataWithError(adobeAssetException);
                                        }
                                    } else {
                                        AdobeLogger.log(Level.ERROR, "AdobeAssetDataSource.loadNextPage", String.format("Failed to load the package metadata: %s", adobeCSDKException.getMessage()));
                                    }
                                }
                                if (arrayList.size() == AnonymousClass1.this.numberProcessed[0]) {
                                    AnonymousClass1.this.allItemsLoaded();
                                }
                            }
                        });
                    }
                }
            }
        }

        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
        public void onError(AdobeAssetException adobeAssetException) {
            IAdobeAssetDataSourceDelegate delegate = AdobeAssetDataSource.this.getDelegate();
            if (delegate != null) {
                delegate.didFailToLoadMoreDataWithError(adobeAssetException);
                delegate.didFinishLoading();
            }
            AdobeAssetDataSource adobeAssetDataSource = (AdobeAssetDataSource) this.val$weakThis.get();
            if (adobeAssetDataSource != null) {
                adobeAssetDataSource.loadingItems = false;
            }
            AdobeLogger.log(Level.ERROR, "AdobeAssetDataSource.loadNextPage", String.format("Failed to list product packages: %s", adobeAssetException.getMessage()));
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public int getCount() {
        if (this.data != null) {
            return this.data.size();
        }
        return 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public boolean loadItemsFromScratch() {
        return loadItemsFromScratch(true);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void loadNextPageOfData() {
        loadNextPage();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void resetDelegate() {
        setDelegate(null);
    }
}
