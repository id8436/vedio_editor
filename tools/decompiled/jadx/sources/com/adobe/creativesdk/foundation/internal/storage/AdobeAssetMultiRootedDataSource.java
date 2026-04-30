package com.adobe.creativesdk.foundation.internal.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetProduct;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetProductFolder;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderBy;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderDirection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackage;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.IAdobeAssetFolderNextPageCallback;
import com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetMultiRootedDataSource extends AdobeAssetMultiRootedData {
    private static int kAssetDataSourceItemsPerPageLimit = 20;
    private EnumSet<AdobeAssetDataSourceType> dataSourceTypes;
    private volatile int foldersProcessed;
    private Map<String, AdobeAssetMultiRootedData> multiRootedData;
    private volatile int numberOfEmptyFolders;
    private volatile int numberOfErrors;
    private volatile int numberOfOfflineErrors;
    private List<AdobeAssetProductFolder> rootFolders;

    static /* synthetic */ int access$008(AdobeAssetMultiRootedDataSource adobeAssetMultiRootedDataSource) {
        int i = adobeAssetMultiRootedDataSource.foldersProcessed;
        adobeAssetMultiRootedDataSource.foldersProcessed = i + 1;
        return i;
    }

    static /* synthetic */ int access$108(AdobeAssetMultiRootedDataSource adobeAssetMultiRootedDataSource) {
        int i = adobeAssetMultiRootedDataSource.numberOfErrors;
        adobeAssetMultiRootedDataSource.numberOfErrors = i + 1;
        return i;
    }

    static /* synthetic */ int access$208(AdobeAssetMultiRootedDataSource adobeAssetMultiRootedDataSource) {
        int i = adobeAssetMultiRootedDataSource.numberOfEmptyFolders;
        adobeAssetMultiRootedDataSource.numberOfEmptyFolders = i + 1;
        return i;
    }

    static /* synthetic */ int access$308(AdobeAssetMultiRootedDataSource adobeAssetMultiRootedDataSource) {
        int i = adobeAssetMultiRootedDataSource.numberOfOfflineErrors;
        adobeAssetMultiRootedDataSource.numberOfOfflineErrors = i + 1;
        return i;
    }

    public AdobeAssetMultiRootedDataSource(AdobeAssetDataSourceType adobeAssetDataSourceType, AdobeCloud adobeCloud) {
        super(adobeAssetDataSourceType, adobeCloud);
        this.foldersProcessed = 0;
        this.numberOfErrors = 0;
        this.numberOfEmptyFolders = 0;
        this.numberOfOfflineErrors = 0;
        this.rootFolders = new ArrayList();
        this.multiRootedData = new HashMap();
    }

    public AdobeAssetMultiRootedDataSource(EnumSet<AdobeAssetDataSourceType> enumSet, AdobeCloud adobeCloud) {
        super(AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations, adobeCloud);
        this.foldersProcessed = 0;
        this.numberOfErrors = 0;
        this.numberOfEmptyFolders = 0;
        this.numberOfOfflineErrors = 0;
        this.rootFolders = new ArrayList();
        this.multiRootedData = new HashMap();
        this.dataSourceTypes = enumSet;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource
    public void setTargetFolder(AdobeAssetFolder adobeAssetFolder) {
        super.setTargetFolder(adobeAssetFolder);
        if (this.rootFolders.size() == 0) {
            this.rootFolders.add((AdobeAssetProductFolder) adobeAssetFolder);
        } else {
            AdobeLogger.log(Level.ERROR, AdobeAssetMultiRootedDataSource.class.getSimpleName(), "rootFolders already present for the data source.");
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource
    public boolean loadItemsFromScratch(boolean z) {
        boolean zHasNextPage = false;
        boolean z2 = true;
        synchronized (this) {
            if (this.loadingItems) {
                return false;
            }
            if (this.rootFolders != null && this.rootFolders.size() > 0) {
                if (z) {
                    this.loadingItemsFromScratch = true;
                    Iterator<AdobeAssetProductFolder> it = this.rootFolders.iterator();
                    while (it.hasNext()) {
                        it.next().resetPagingOrderedByField(AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED, AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_DESCENDING);
                    }
                    this.multiRootedData.clear();
                    IAdobeAssetDataSourceDelegate delegate = getDelegate();
                    if (delegate != null) {
                        delegate.willLoadDataFromScratch();
                    }
                }
                Iterator<AdobeAssetProductFolder> it2 = this.rootFolders.iterator();
                while (it2.hasNext()) {
                    zHasNextPage |= it2.next().hasNextPage();
                }
                if (zHasNextPage) {
                    IAdobeAssetDataSourceDelegate delegate2 = getDelegate();
                    if (delegate2 != null) {
                        delegate2.willLoadNextPageForExistingPackage();
                    }
                    return loadNextPage();
                }
                IAdobeAssetDataSourceDelegate delegate3 = getDelegate();
                if (delegate3 != null) {
                    delegate3.didFinishLoading();
                }
                return true;
            }
            AdobeAssetProduct productForDatasource = getProductForDatasource(this.dataSourceType);
            if (productForDatasource != AdobeAssetProduct.AdobeAssetProductUndefined) {
                this.rootFolders = AdobeAssetProductFolder.getRootsForProduct(productForDatasource, this._cloud);
            } else if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations) && this.dataSourceTypes == null) {
                this.rootFolders.addAll(AdobeAssetProductFolder.getRootsForProduct(AdobeAssetProduct.AdobeAssetProductDraw, this._cloud));
                this.rootFolders.addAll(AdobeAssetProductFolder.getRootsForProduct(AdobeAssetProduct.AdobeAssetProductSketch, this._cloud));
                this.rootFolders.addAll(AdobeAssetProductFolder.getRootsForProduct(AdobeAssetProduct.AdobeAssetProductPSMix, this._cloud));
                this.rootFolders.addAll(AdobeAssetProductFolder.getRootsForProduct(AdobeAssetProduct.AdobeAssetProductPSFix, this._cloud));
                this.rootFolders.addAll(AdobeAssetProductFolder.getRootsForProduct(AdobeAssetProduct.AdobeAssetProductComposition, this._cloud));
            } else if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations)) {
                Iterator it3 = this.dataSourceTypes.iterator();
                while (it3.hasNext()) {
                    this.rootFolders.addAll(AdobeAssetProductFolder.getRootsForProduct(getProductForDatasource((AdobeAssetDataSourceType) it3.next()), this._cloud));
                }
            } else {
                AdobeAssetPackagePages.AdobeAssetPackageSharedProjectType adobeAssetPackageSharedProjectType = null;
                if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceSharedFile)) {
                    adobeAssetPackageSharedProjectType = AdobeAssetPackagePages.AdobeAssetPackageSharedProjectType.AdobeAssetPackageSharedProjectTypeSinglePage;
                } else if (this.dataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceSharedProject)) {
                    adobeAssetPackageSharedProjectType = AdobeAssetPackagePages.AdobeAssetPackageSharedProjectType.AdobeAssetPackageSharedProjectTypeMultiPage;
                } else {
                    z2 = false;
                }
                if (z2) {
                    this.rootFolders = new ArrayList();
                    this.rootFolders.add(AdobeAssetProductFolder.getRootForSharedProjectType(adobeAssetPackageSharedProjectType, this._cloud, AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED, AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_DESCENDING));
                }
            }
            return loadNextPage();
        }
    }

    private AdobeAssetProduct getProductForDatasource(AdobeAssetDataSourceType adobeAssetDataSourceType) {
        AdobeAssetProduct adobeAssetProduct = AdobeAssetProduct.AdobeAssetProductUndefined;
        if (adobeAssetDataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceDraw)) {
            return AdobeAssetProduct.AdobeAssetProductDraw;
        }
        if (adobeAssetDataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceSketches)) {
            return AdobeAssetProduct.AdobeAssetProductSketch;
        }
        if (adobeAssetDataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary)) {
            return AdobeAssetProduct.AdobeAssetProductLibrary;
        }
        if (adobeAssetDataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourcePSMix)) {
            return AdobeAssetProduct.AdobeAssetProductPSMix;
        }
        if (adobeAssetDataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourcePSFix)) {
            return AdobeAssetProduct.AdobeAssetProductPSFix;
        }
        if (adobeAssetDataSourceType.equals(AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions)) {
            return AdobeAssetProduct.AdobeAssetProductComposition;
        }
        return adobeAssetProduct;
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0179, code lost:
    
        r2 = false;
     */
    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean loadNextPage() {
        /*
            Method dump skipped, instruction units count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.loadNextPage():boolean");
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ List val$foldersToPull;
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ int val$pageLimit;
        final /* synthetic */ AdobeAssetMultiRootedDataSource val$that;

        AnonymousClass1(AdobeAssetMultiRootedDataSource adobeAssetMultiRootedDataSource, List list, int i, Handler handler) {
            this.val$that = adobeAssetMultiRootedDataSource;
            this.val$foldersToPull = list;
            this.val$pageLimit = i;
            this.val$handler = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            final ReentrantLock reentrantLock = new ReentrantLock();
            final Condition conditionNewCondition = reentrantLock.newCondition();
            AdobeAssetMultiRootedDataSource.this.foldersProcessed = 0;
            AdobeAssetMultiRootedDataSource.this.numberOfErrors = 0;
            AdobeAssetMultiRootedDataSource.this.numberOfEmptyFolders = 0;
            AdobeAssetMultiRootedDataSource.this.numberOfOfflineErrors = 0;
            final boolean[] zArr = {false};
            final HashMap map = new HashMap();
            final WeakReference weakReference = new WeakReference(this.val$that);
            final Comparator<AdobeAsset> comparator = new Comparator<AdobeAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.1
                @Override // java.util.Comparator
                public int compare(AdobeAsset adobeAsset, AdobeAsset adobeAsset2) {
                    return adobeAsset2.getModificationDate().compareTo(adobeAsset.getModificationDate());
                }
            };
            for (final AdobeAssetFolder adobeAssetFolder : this.val$foldersToPull) {
                adobeAssetFolder.getNextPage(this.val$pageLimit, new IAdobeAssetFolderNextPageCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.2
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeAssetFolderNextPageCallback
                    public void onCompletion(ArrayList<AdobeAsset> arrayList, int i) {
                        AdobeAssetMultiRootedData adobeAssetMultiRootedData;
                        final ArrayList arrayList2 = new ArrayList(arrayList);
                        AdobeAssetMultiRootedData adobeAssetMultiRootedData2 = (AdobeAssetMultiRootedData) ((AdobeAssetMultiRootedDataSource) weakReference.get()).multiRootedData.get(adobeAssetFolder.getGUID());
                        if (adobeAssetMultiRootedData2 == null) {
                            AdobeAssetMultiRootedData adobeAssetMultiRootedData3 = new AdobeAssetMultiRootedData();
                            adobeAssetMultiRootedData3.GUID = adobeAssetFolder.getGUID();
                            adobeAssetMultiRootedData3.href = adobeAssetFolder.getHref();
                            adobeAssetMultiRootedData = adobeAssetMultiRootedData3;
                        } else {
                            adobeAssetMultiRootedData = adobeAssetMultiRootedData2;
                        }
                        if (arrayList2.size() == 0) {
                            adobeAssetMultiRootedData.done = true;
                        } else {
                            adobeAssetMultiRootedData.startTime = ((AdobeAsset) arrayList2.get(0)).getModificationDate();
                            adobeAssetMultiRootedData.endTime = ((AdobeAsset) arrayList2.get(arrayList2.size() - 1)).getModificationDate();
                            adobeAssetMultiRootedData.done = !adobeAssetFolder.hasNextPage();
                        }
                        ((AdobeAssetMultiRootedDataSource) weakReference.get()).multiRootedData.put(adobeAssetFolder.getGUID(), adobeAssetMultiRootedData);
                        final int[] iArr = {0};
                        final ArrayList arrayList3 = new ArrayList();
                        if (arrayList2.size() > 0) {
                            Iterator it = arrayList2.iterator();
                            while (it.hasNext()) {
                                final AdobeAssetPackage adobeAssetPackage = (AdobeAssetPackage) ((AdobeAsset) it.next());
                                adobeAssetPackage.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.2.1
                                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
                                    public void onCompletion() {
                                        if (!(adobeAssetPackage instanceof AdobeAssetPackagePages) || ((AdobeAssetPackagePages) adobeAssetPackage).getPages() != null) {
                                            arrayList3.add(adobeAssetPackage);
                                        }
                                        int[] iArr2 = iArr;
                                        iArr2[0] = iArr2[0] + 1;
                                        if (iArr[0] >= arrayList2.size()) {
                                            Collections.sort(arrayList3, comparator);
                                            ((AdobeAssetMultiRootedDataSource) weakReference.get()).data.addAll(arrayList3);
                                            reentrantLock.lock();
                                            AdobeAssetMultiRootedDataSource.access$008(AdobeAssetMultiRootedDataSource.this);
                                            conditionNewCondition.signal();
                                            reentrantLock.unlock();
                                        }
                                    }
                                }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.2.2
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                    public void onError(AdobeCSDKException adobeCSDKException) {
                                        int[] iArr2 = iArr;
                                        iArr2[0] = iArr2[0] + 1;
                                        if ((adobeCSDKException instanceof AdobeNetworkException) && ((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorFileDoesNotExist) {
                                            map.put(adobeAssetFolder, new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure));
                                        }
                                        if (iArr[0] >= arrayList2.size()) {
                                            if (arrayList3.size() > 0) {
                                                Collections.sort(arrayList3, comparator);
                                                ((AdobeAssetMultiRootedDataSource) weakReference.get()).data.addAll(arrayList3);
                                            } else {
                                                if ((adobeCSDKException instanceof AdobeNetworkException) && ((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest) {
                                                    AdobeAssetMultiRootedDataSource.access$208(AdobeAssetMultiRootedDataSource.this);
                                                }
                                                AdobeAssetMultiRootedDataSource.access$108(AdobeAssetMultiRootedDataSource.this);
                                            }
                                            reentrantLock.lock();
                                            AdobeAssetMultiRootedDataSource.access$008(AdobeAssetMultiRootedDataSource.this);
                                            conditionNewCondition.signal();
                                            reentrantLock.unlock();
                                        }
                                    }
                                });
                            }
                        } else {
                            reentrantLock.lock();
                            AdobeAssetMultiRootedDataSource.access$108(AdobeAssetMultiRootedDataSource.this);
                            AdobeAssetMultiRootedDataSource.access$208(AdobeAssetMultiRootedDataSource.this);
                            AdobeAssetMultiRootedDataSource.access$008(AdobeAssetMultiRootedDataSource.this);
                            conditionNewCondition.signal();
                            reentrantLock.unlock();
                        }
                        zArr[0] = true;
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        reentrantLock.lock();
                        if (adobeAssetException.getHttpStatusCode().intValue() != 404) {
                            if (adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorTimeout || adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorOffline) {
                                AdobeAssetMultiRootedDataSource.access$308(AdobeAssetMultiRootedDataSource.this);
                            } else if (adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse) {
                                AdobeAssetMultiRootedDataSource.access$208(AdobeAssetMultiRootedDataSource.this);
                            }
                            map.put(adobeAssetFolder, adobeAssetException);
                        } else {
                            if (!AdobeNetworkReachabilityUtil.isOnline()) {
                                AdobeAssetMultiRootedDataSource.access$308(AdobeAssetMultiRootedDataSource.this);
                                map.put(adobeAssetFolder, adobeAssetException);
                            }
                            if (adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse) {
                                AdobeAssetMultiRootedDataSource.access$208(AdobeAssetMultiRootedDataSource.this);
                            }
                        }
                        AdobeAssetMultiRootedDataSource.access$108(AdobeAssetMultiRootedDataSource.this);
                        AdobeAssetMultiRootedDataSource.access$008(AdobeAssetMultiRootedDataSource.this);
                        conditionNewCondition.signal();
                        reentrantLock.unlock();
                    }
                });
            }
            reentrantLock.lock();
            while (AdobeAssetMultiRootedDataSource.this.foldersProcessed < this.val$foldersToPull.size()) {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            reentrantLock.unlock();
            Iterator it = ((AdobeAssetMultiRootedDataSource) weakReference.get()).multiRootedData.values().iterator();
            boolean z = true;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                boolean zIsDone = ((AdobeAssetMultiRootedData) it.next()).isDone() & z;
                if (!zIsDone) {
                    z = zIsDone;
                    break;
                }
                z = zIsDone;
            }
            if (zArr[0] && (AdobeAssetMultiRootedDataSource.this.foldersProcessed != AdobeAssetMultiRootedDataSource.this.numberOfErrors || AdobeAssetMultiRootedDataSource.this.foldersProcessed == AdobeAssetMultiRootedDataSource.this.numberOfEmptyFolders)) {
                Collections.sort(((AdobeAssetMultiRootedDataSource) weakReference.get()).data, comparator);
                final IAdobeAssetDataSourceDelegate delegate = AdobeAssetMultiRootedDataSource.this.getDelegate();
                if (delegate != null) {
                    this.val$handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            delegate.didLoadMoreDataWithCount(((AdobeAssetMultiRootedDataSource) weakReference.get()).data.size());
                        }
                    });
                } else {
                    AdobeLogger.log(Level.DEBUG, AdobeAssetMultiRootedDataSource.class.getSimpleName(), "Loaded more data but there is no delegate");
                }
                if (delegate != null) {
                    this.val$handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            delegate.didFinishLoading();
                        }
                    });
                } else {
                    AdobeLogger.log(Level.DEBUG, AdobeAssetMultiRootedDataSource.class.getSimpleName(), "Finished loading data but there is no delegate");
                }
            }
            if (z && (AdobeAssetMultiRootedDataSource.this.foldersProcessed != AdobeAssetMultiRootedDataSource.this.numberOfErrors || AdobeAssetMultiRootedDataSource.this.foldersProcessed == AdobeAssetMultiRootedDataSource.this.numberOfEmptyFolders)) {
                Collections.sort(((AdobeAssetMultiRootedDataSource) weakReference.get()).data, comparator);
                final IAdobeAssetDataSourceDelegate delegate2 = AdobeAssetMultiRootedDataSource.this.getDelegate();
                if (delegate2 != null) {
                    ((AdobeAssetMultiRootedDataSource) weakReference.get()).loadingItems = false;
                    this.val$handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.5
                        @Override // java.lang.Runnable
                        public void run() {
                            delegate2.didFinishLoading();
                        }
                    });
                }
            }
            if (map.size() > 0) {
                final IAdobeAssetDataSourceDelegate delegate3 = AdobeAssetMultiRootedDataSource.this.getDelegate();
                if (AdobeAssetMultiRootedDataSource.this.foldersProcessed == AdobeAssetMultiRootedDataSource.this.numberOfErrors && AdobeAssetMultiRootedDataSource.this.numberOfOfflineErrors > 0) {
                    final AdobeAssetException adobeAssetException = new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorOffline);
                    if (delegate3 != null) {
                        this.val$handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.6
                            @Override // java.lang.Runnable
                            public void run() {
                                delegate3.didFailToLoadMoreDataWithError(adobeAssetException);
                            }
                        });
                    }
                } else {
                    for (AdobeAssetFolder adobeAssetFolder2 : map.keySet()) {
                        final AdobeAssetException adobeAssetException2 = (AdobeAssetException) map.get(adobeAssetFolder2);
                        if (delegate3 != null) {
                            this.val$handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource.1.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    delegate3.didFailToLoadMoreDataWithError(adobeAssetException2);
                                    delegate3.didFinishLoading();
                                }
                            });
                        }
                        AdobeLogger.log(Level.DEBUG, AdobeAssetMultiRootedDataSource.class.getSimpleName(), String.format("Failed to list product packages in %s: %s", adobeAssetFolder2.getHref(), adobeAssetException2));
                    }
                }
            }
            ((AdobeAssetMultiRootedDataSource) weakReference.get()).loadingItems = false;
        }
    }
}
