package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetCompFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetDrawFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetLibraryInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetPSFixFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetPSMixFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetPackageInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetSharedProjectInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetSketchbookInternal;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderByProperty;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderRelation;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderBy;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderDirection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.IAdobeAssetFolderNextPageCallback;
import com.google.common.base.Ascii;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetProductFolder extends AdobeAssetFolder {
    static final String kAdobeProductIdComp = "adobe-layup";
    static final String kAdobeProductIdCompAndroid = "adobecompandroid";
    static final String kAdobeProductIdDraw = "adobedraw";
    static final String kAdobeProductIdDrawAndroid = "adobedrawandroid";
    static final String kAdobeProductIdFix = "adobe-psfix";
    static final String kAdobeProductIdFixAndroid = "adobefixandroid";
    static final String kAdobeProductIdFixCLS = "adobe-psfix-cls";
    static final String kAdobeProductIdLibrary = "adobe-libraries";
    static final String kAdobeProductIdMix = "adobe-psmix";
    static final String kAdobeProductIdMixCLS = "adobeclsmix";
    static final String kAdobeProductIdSharedMaxDemo = "adobeclsdemo";
    static final String kAdobeProductIdSharedMultiPage = "adobeclsprojects";
    static final String kAdobeProductIdSharedSinglePage = "adobecls";
    static final String kAdobeProductIdSketch = "adobesketch";
    static final String kAdobeProductIdSketchAndroid = "adobesketch-android";
    static Map<Number, String> productMap;

    static {
        productMap = null;
        productMap = new HashMap();
        productMap.put(Integer.valueOf(AdobeAssetProduct.AdobeAssetProductDraw.ordinal()), kAdobeProductIdDraw);
        productMap.put(Integer.valueOf(AdobeAssetProduct.AdobeAssetProductLibrary.ordinal()), "adobe-libraries");
        productMap.put(Integer.valueOf(AdobeAssetProduct.AdobeAssetProductSketch.ordinal()), kAdobeProductIdSketch);
        productMap.put(Integer.valueOf(AdobeAssetProduct.AdobeAssetProductPSMix.ordinal()), kAdobeProductIdMix);
        productMap.put(Integer.valueOf(AdobeAssetProduct.AdobeAssetProductPSFix.ordinal()), kAdobeProductIdFix);
        productMap.put(Integer.valueOf(AdobeAssetProduct.AdobeAssetProductComposition.ordinal()), kAdobeProductIdComp);
    }

    protected AdobeAssetProductFolder(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageOrderByProperty adobeStorageOrderByProperty, AdobeStorageOrderRelation adobeStorageOrderRelation, URI uri) {
        super(adobeStorageResourceCollection, adobeStorageOrderByProperty, adobeStorageOrderRelation, uri);
    }

    public static AdobeAssetProductFolder getRootForProduct(AdobeAssetProduct adobeAssetProduct, AdobeCloud adobeCloud) {
        return getRootForProduct(adobeAssetProduct, adobeCloud, AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED, AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_DESCENDING);
    }

    public static List<AdobeAssetProductFolder> getRootsForProduct(AdobeAssetProduct adobeAssetProduct, AdobeCloud adobeCloud) {
        return getRootsForProduct(adobeAssetProduct, adobeCloud, AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED, AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_DESCENDING);
    }

    public static AdobeAssetProductFolder getRootForProduct(AdobeAssetProduct adobeAssetProduct, AdobeCloud adobeCloud, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        if (adobeAssetProduct != null) {
            return getRootsForProduct(adobeAssetProduct, adobeCloud, adobeAssetFolderOrderBy, adobeAssetFolderOrderDirection).get(0);
        }
        AdobeLogger.log(Level.ERROR, "AdobeAssetProductFolder.getRootForProduct", "AdobeAssetProduct enum is null");
        return null;
    }

    public static List<AdobeAssetProductFolder> getRootsForProduct(AdobeAssetProduct adobeAssetProduct, AdobeCloud adobeCloud, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        ArrayList arrayList = new ArrayList();
        String str = productMap.get(Integer.valueOf(adobeAssetProduct.ordinal()));
        if (str == null) {
            AdobeLogger.log(Level.DEBUG, AdobeAssetProductFolder.class.getSimpleName(), String.format("Undefined product: %s", adobeAssetProduct));
            return arrayList;
        }
        AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(URI.create(String.format("/assets/%s/", str)));
        adobeStorageResourceCollectionCollectionFromHref.setCloud(adobeCloud);
        arrayList.add(new AdobeAssetProductFolder(adobeStorageResourceCollectionCollectionFromHref, AdobeAssetFolder.getStorageOrderByProperty(adobeAssetFolderOrderBy), AdobeAssetFolder.getStorageOrderRelation(adobeAssetFolderOrderDirection), null));
        addAlternateRootsForProduct(adobeAssetProduct, adobeCloud, adobeAssetFolderOrderBy, adobeAssetFolderOrderDirection, arrayList);
        return arrayList;
    }

    private static void addAlternateRootsForProduct(AdobeAssetProduct adobeAssetProduct, AdobeCloud adobeCloud, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection, List<AdobeAssetProductFolder> list) {
        ArrayList arrayList = new ArrayList();
        switch (adobeAssetProduct) {
            case AdobeAssetProductComposition:
                arrayList.add(kAdobeProductIdCompAndroid);
                break;
            case AdobeAssetProductDraw:
                arrayList.add(kAdobeProductIdDrawAndroid);
                break;
            case AdobeAssetProductPSMix:
                arrayList.add(kAdobeProductIdMixCLS);
                break;
            case AdobeAssetProductPSFix:
                arrayList.add(kAdobeProductIdFixAndroid);
                arrayList.add(kAdobeProductIdFixCLS);
                break;
            case AdobeAssetProductSketch:
                arrayList.add(kAdobeProductIdSketchAndroid);
                break;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(URI.create(String.format("/assets/%s/", (String) it.next())));
            adobeStorageResourceCollectionCollectionFromHref.setCloud(adobeCloud);
            list.add(new AdobeAssetProductFolder(adobeStorageResourceCollectionCollectionFromHref, AdobeAssetFolder.getStorageOrderByProperty(adobeAssetFolderOrderBy), AdobeAssetFolder.getStorageOrderRelation(adobeAssetFolderOrderDirection), null));
        }
    }

    private static void addRootForPackage(AdobeAssetPackagePages adobeAssetPackagePages, AdobeAssetPackagePages.AdobeAssetPackageSharedProjectType adobeAssetPackageSharedProjectType, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection, List<AdobeAssetProductFolder> list) {
        String str;
        if (adobeAssetPackagePages.supportsSharedProjectType(adobeAssetPackageSharedProjectType)) {
            switch (adobeAssetPackageSharedProjectType) {
                case AdobeAssetPackageSharedProjectTypeSinglePage:
                    str = kAdobeProductIdSharedSinglePage;
                    break;
                case AdobeAssetPackageSharedProjectTypeMultiPage:
                    str = kAdobeProductIdSharedMultiPage;
                    break;
                case AdobeAssetPackageSharedProjectTypeMaxDemo:
                    str = kAdobeProductIdSharedMaxDemo;
                    break;
                default:
                    str = null;
                    break;
            }
            if (str != null) {
                AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(URI.create(String.format("/assets/%s/", str)));
                adobeStorageResourceCollectionCollectionFromHref.setCloud(adobeAssetPackagePages.getCloud());
                list.add(new AdobeAssetProductFolder(adobeStorageResourceCollectionCollectionFromHref, AdobeAssetFolder.getStorageOrderByProperty(adobeAssetFolderOrderBy), AdobeAssetFolder.getStorageOrderRelation(adobeAssetFolderOrderDirection), null));
            }
        }
    }

    public static AdobeAssetFolder getFolderFromHref(URI uri, AdobeCloud adobeCloud, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        AdobeAssetProductFolder adobeAssetProductFolder;
        if (uri == null) {
            return null;
        }
        String rawPath = uri.getRawPath();
        if (rawPath.startsWith(URIUtil.SLASH)) {
            try {
                URI uri2 = new URI(String.format("/assets%s", rawPath));
                AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(uri2);
                adobeStorageResourceCollectionCollectionFromHref.setCloud(adobeCloud);
                adobeAssetProductFolder = new AdobeAssetProductFolder(adobeStorageResourceCollectionCollectionFromHref, AdobeAssetFolder.getStorageOrderByProperty(adobeAssetFolderOrderBy), AdobeAssetFolder.getStorageOrderRelation(adobeAssetFolderOrderDirection), new URI(AdobeStorageLastPathComponentUtil.stringByDeletingLastPathComponent(uri2.getRawPath())));
            } catch (Exception e2) {
                e2.printStackTrace();
                adobeAssetProductFolder = null;
            }
        } else {
            adobeAssetProductFolder = null;
        }
        return adobeAssetProductFolder;
    }

    public static AdobeAssetFolder getFolderFromHref(URI uri) {
        return getFolderFromHref(uri, AdobeCloudManager.getSharedCloudManager().getDefaultCloud(), AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_NAME, AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_ASCENDING);
    }

    public static AdobeAssetFolder getFolderFromHref(URI uri, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        return getFolderFromHref(uri, AdobeCloudManager.getSharedCloudManager().getDefaultCloud(), adobeAssetFolderOrderBy, adobeAssetFolderOrderDirection);
    }

    public static AdobeAssetFolder getFolderFromHref(URI uri, AdobeCloud adobeCloud) {
        return getFolderFromHref(uri, adobeCloud, AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_NAME, AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_ASCENDING);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetFolder
    public void getNextPage(int i, final IAdobeAssetFolderNextPageCallback iAdobeAssetFolderNextPageCallback) {
        resourceCollection().setLimit(i);
        resourceCollection().etag = null;
        IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler = new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetProductFolder.1
            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection) {
                if (adobeStorageResourceCollection != null) {
                    AdobeAssetProductFolder.this.asrCollection = adobeStorageResourceCollection;
                    AdobeAssetProductFolder.this.firstPageLoaded = true;
                    Pattern patternCompile = Pattern.compile("assets/([-_\\w]+)/", 2);
                    ArrayList<AdobeStorageResource> children = adobeStorageResourceCollection.getChildren();
                    ArrayList<AdobeAsset> arrayList = new ArrayList<>();
                    if (children != null) {
                        for (AdobeStorageResource adobeStorageResource : children) {
                            if (adobeStorageResource instanceof AdobeStorageResourceCollection) {
                                AdobeStorageResourceCollection adobeStorageResourceCollection2 = (AdobeStorageResourceCollection) adobeStorageResource;
                                Matcher matcher = patternCompile.matcher(adobeStorageResourceCollection2.href.getPath());
                                String strGroup = "";
                                while (matcher.find()) {
                                    strGroup = matcher.group(1);
                                }
                                String lowerCase = strGroup.toLowerCase();
                                byte b2 = -1;
                                switch (lowerCase.hashCode()) {
                                    case -2094251973:
                                        if (lowerCase.equals("adobe-libraries")) {
                                            b2 = 2;
                                        }
                                        break;
                                    case -1906481573:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdSketch)) {
                                            b2 = 3;
                                        }
                                        break;
                                    case -1469336143:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdFixCLS)) {
                                            b2 = 9;
                                        }
                                        break;
                                    case -1191443663:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdCompAndroid)) {
                                            b2 = Ascii.VT;
                                        }
                                        break;
                                    case -918586149:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdSharedSinglePage)) {
                                            b2 = Ascii.FF;
                                        }
                                        break;
                                    case -620262827:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdSharedMultiPage)) {
                                            b2 = 13;
                                        }
                                        break;
                                    case -383257347:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdSketchAndroid)) {
                                            b2 = 4;
                                        }
                                        break;
                                    case -245459650:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdSharedMaxDemo)) {
                                            b2 = Ascii.SO;
                                        }
                                        break;
                                    case 89883625:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdFixAndroid)) {
                                            b2 = 8;
                                        }
                                        break;
                                    case 246419292:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdDrawAndroid)) {
                                            b2 = 1;
                                        }
                                        break;
                                    case 385254881:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdComp)) {
                                            b2 = 10;
                                        }
                                        break;
                                    case 389466580:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdFix)) {
                                            b2 = 7;
                                        }
                                        break;
                                    case 389473307:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdMix)) {
                                            b2 = 5;
                                        }
                                        break;
                                    case 1588635571:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdDraw)) {
                                            b2 = 0;
                                        }
                                        break;
                                    case 1931753377:
                                        if (lowerCase.equals(AdobeAssetProductFolder.kAdobeProductIdMixCLS)) {
                                            b2 = 6;
                                        }
                                        break;
                                }
                                switch (b2) {
                                    case 0:
                                    case 1:
                                        AdobeAssetDrawFileInternal adobeAssetDrawFileInternal = new AdobeAssetDrawFileInternal(adobeStorageResourceCollection2, AdobeAssetProductFolder.this.resourceCollection());
                                        adobeAssetDrawFileInternal.setCloud(this.getCloud());
                                        arrayList.add(adobeAssetDrawFileInternal);
                                        break;
                                    case 2:
                                        AdobeAssetLibraryInternal adobeAssetLibraryInternal = new AdobeAssetLibraryInternal(adobeStorageResourceCollection2, AdobeAssetProductFolder.this.resourceCollection());
                                        adobeAssetLibraryInternal.setCloud(this.getCloud());
                                        arrayList.add(adobeAssetLibraryInternal);
                                        break;
                                    case 3:
                                    case 4:
                                        AdobeAssetSketchbookInternal adobeAssetSketchbookInternal = new AdobeAssetSketchbookInternal(adobeStorageResourceCollection2, AdobeAssetProductFolder.this.resourceCollection());
                                        adobeAssetSketchbookInternal.setCloud(this.getCloud());
                                        arrayList.add(adobeAssetSketchbookInternal);
                                        break;
                                    case 5:
                                    case 6:
                                        AdobeAssetPSMixFileInternal adobeAssetPSMixFileInternal = new AdobeAssetPSMixFileInternal(adobeStorageResourceCollection2, AdobeAssetProductFolder.this.resourceCollection());
                                        adobeAssetPSMixFileInternal.setCloud(this.getCloud());
                                        arrayList.add(adobeAssetPSMixFileInternal);
                                        break;
                                    case 7:
                                    case 8:
                                    case 9:
                                        AdobeAssetPSFixFileInternal adobeAssetPSFixFileInternal = new AdobeAssetPSFixFileInternal(adobeStorageResourceCollection2, AdobeAssetProductFolder.this.resourceCollection());
                                        adobeAssetPSFixFileInternal.setCloud(this.getCloud());
                                        arrayList.add(adobeAssetPSFixFileInternal);
                                        break;
                                    case 10:
                                    case 11:
                                        AdobeAssetCompFileInternal adobeAssetCompFileInternal = new AdobeAssetCompFileInternal(adobeStorageResourceCollection2, AdobeAssetProductFolder.this.resourceCollection());
                                        adobeAssetCompFileInternal.setCloud(this.getCloud());
                                        arrayList.add(adobeAssetCompFileInternal);
                                        break;
                                    case 12:
                                    case 13:
                                    case 14:
                                        AdobeAssetSharedProjectInternal adobeAssetSharedProjectInternal = new AdobeAssetSharedProjectInternal(adobeStorageResourceCollection2, AdobeAssetProductFolder.this.resourceCollection());
                                        adobeAssetSharedProjectInternal.setCloud(this.getCloud());
                                        arrayList.add(adobeAssetSharedProjectInternal);
                                        break;
                                    default:
                                        AdobeAssetPackageInternal adobeAssetPackageInternal = new AdobeAssetPackageInternal(adobeStorageResourceCollection2, AdobeAssetProductFolder.this.resourceCollection());
                                        adobeAssetPackageInternal.setCloud(this.getCloud());
                                        arrayList.add(adobeAssetPackageInternal);
                                        break;
                                }
                            }
                        }
                    }
                    iAdobeAssetFolderNextPageCallback.onCompletion(arrayList, adobeStorageResourceCollection.getNumChildren());
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                if (adobeAssetException != null) {
                    iAdobeAssetFolderNextPageCallback.onError(adobeAssetException);
                }
            }
        };
        AdobeStorageSession session = getSession();
        if (session != null) {
            session.getDirectory(resourceCollection(), this.firstPageLoaded ? AdobeStoragePagingMode.AdobeStorageNextPageReplace : AdobeStoragePagingMode.AdobeStorageFirstPage, iAdobeStorageCollectionRequestCompletionHandler);
        }
    }

    public static AdobeAssetProductFolder getRootForSharedProjectType(AdobeAssetPackagePages.AdobeAssetPackageSharedProjectType adobeAssetPackageSharedProjectType, AdobeCloud adobeCloud, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        String str;
        switch (adobeAssetPackageSharedProjectType) {
            case AdobeAssetPackageSharedProjectTypeSinglePage:
                str = kAdobeProductIdSharedSinglePage;
                break;
            case AdobeAssetPackageSharedProjectTypeMultiPage:
                str = kAdobeProductIdSharedMultiPage;
                break;
            case AdobeAssetPackageSharedProjectTypeMaxDemo:
                str = kAdobeProductIdSharedMaxDemo;
                break;
            default:
                str = null;
                break;
        }
        if (str == null) {
            return null;
        }
        AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(URI.create(String.format("/assets/%s/", str)));
        adobeStorageResourceCollectionCollectionFromHref.setCloud(adobeCloud);
        return new AdobeAssetProductFolder(adobeStorageResourceCollectionCollectionFromHref, AdobeAssetFolder.getStorageOrderByProperty(adobeAssetFolderOrderBy), AdobeAssetFolder.getStorageOrderRelation(adobeAssetFolderOrderDirection), null);
    }
}
