package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import android.graphics.Bitmap;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetLibraryItemCharacterStyle;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetLibraryItemLayoutStyle;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeDesignLibraryUtilsInternal;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewUtils;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem3DLight;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem3DMaterial;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem3DModel;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItemAnimation;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItemBrush;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItemImage;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItemLook;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItemPattern;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItemStockImage;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItemTemplate;
import java.util.EnumSet;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryItemUtils {
    private static AdobeAssetFile getRenditionFileForImageLibraryItem(AdobeAssetLibraryItemImage adobeAssetLibraryItemImage) {
        if (adobeAssetLibraryItemImage.getPrimaryComponentType().equals(AdobeAssetFileExtensions.kAdobeMimeTypeShape)) {
            return adobeAssetLibraryItemImage.getRendition();
        }
        return adobeAssetLibraryItemImage.getImage();
    }

    public static AdobeAssetFile getRenditionFile(AdobeAssetLibraryItem adobeAssetLibraryItem) {
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItemImage) {
            return getRenditionFileForImageLibraryItem((AdobeAssetLibraryItemImage) adobeAssetLibraryItem);
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItemBrush) {
            return ((AdobeAssetLibraryItemBrush) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItemCharacterStyle) {
            return ((AdobeAssetLibraryItemCharacterStyle) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItemLayoutStyle) {
            return ((AdobeAssetLibraryItemLayoutStyle) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItemLook) {
            return ((AdobeAssetLibraryItemLook) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItemPattern) {
            return ((AdobeAssetLibraryItemPattern) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItemTemplate) {
            return ((AdobeAssetLibraryItemTemplate) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItem3DMaterial) {
            return ((AdobeAssetLibraryItem3DMaterial) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItem3DLight) {
            return ((AdobeAssetLibraryItem3DLight) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItem3DModel) {
            return ((AdobeAssetLibraryItem3DModel) adobeAssetLibraryItem).getRendition();
        }
        if (adobeAssetLibraryItem instanceof AdobeAssetLibraryItemAnimation) {
            return ((AdobeAssetLibraryItemAnimation) adobeAssetLibraryItem).getRendition();
        }
        return null;
    }

    public static void loadImageItemRendition(AdobeAssetLibraryItemImage adobeAssetLibraryItemImage, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
        AdobeAssetFile renditionFileForImageLibraryItem = getRenditionFileForImageLibraryItem(adobeAssetLibraryItemImage);
        if (renditionFileForImageLibraryItem == null) {
            iAdobeGenericCompletionCallback.onCompletion(null);
        } else {
            getImageRendition(renditionFileForImageLibraryItem, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, iAdobeGenericCompletionCallback);
        }
    }

    public static void getImageRendition(AdobeAssetFile adobeAssetFile, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericCompletionCallback iAdobeGenericCompletionCallback) {
        byte[] renditionFromCacheWithType = Cache.getRenditionFromCacheWithType(adobeAssetFile, adobeAssetFileRenditionType, AssetsAbsListView.adjustRenditionSizeBasedOnDeviceScale(adobeAssetImageDimensions));
        if (renditionFromCacheWithType != null) {
            AdobeAssetViewUtils.getBitmapFromData(renditionFromCacheWithType, iAdobeGenericCompletionCallback);
        } else {
            AdobeAssetViewUtils.getAssetRenditionUtil(adobeAssetFile, adobeAssetImageDimensions, iAdobeGenericCompletionCallback);
        }
    }

    public static void getStockLicensedData(final AdobeAssetLibraryItemStockImage adobeAssetLibraryItemStockImage, final IAdobeGenericCompletionCallback iAdobeGenericCompletionCallback) {
        final Handler handler = new Handler();
        byte[] renditionFromCacheWithType = Cache.getRenditionFromCacheWithType(adobeAssetLibraryItemStockImage.getItemID(), "LICENSED_RENDITION_DATA_400");
        if (renditionFromCacheWithType != null) {
            AdobeAssetViewUtils.getBitmapFromData(renditionFromCacheWithType, iAdobeGenericCompletionCallback);
        } else {
            AdobeDesignLibraryUtilsInternal.getLicensedData(adobeAssetLibraryItemStockImage.getAssetURL(), new IAdobeGenericCompletionCallback<byte[]>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeLibraryItemUtils.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(byte[] bArr) {
                    AdobeCommonCache.getSharedInstance().addData(bArr, adobeAssetLibraryItemStockImage.getItemID(), "LICENSED_RENDITION_DATA_400", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), "com.adobe.cc.storage", new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeLibraryItemUtils.1.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Boolean bool) {
                        }
                    });
                    AdobeAssetViewUtils.getBitmapFromData(bArr, iAdobeGenericCompletionCallback);
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeLibraryItemUtils.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (adobeAssetLibraryItemStockImage.getUnlicensedURL() != null && adobeAssetLibraryItemStockImage.getUnlicensedURL().length() > 0) {
                        AdobeDesignLibraryUtilsInternal.getLicensedData(adobeAssetLibraryItemStockImage.getUnlicensedURL(), new IAdobeGenericCompletionCallback<byte[]>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeLibraryItemUtils.2.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(byte[] bArr) {
                                AdobeCommonCache.getSharedInstance().addData(bArr, adobeAssetLibraryItemStockImage.getItemID(), "LICENSED_RENDITION_DATA_400", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), "com.adobe.cc.storage", new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeLibraryItemUtils.2.1.1
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                    public void onCompletion(Boolean bool) {
                                    }
                                });
                                AdobeAssetViewUtils.getBitmapFromData(bArr, iAdobeGenericCompletionCallback);
                            }
                        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeLibraryItemUtils.2.2
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeCSDKException adobeCSDKException2) {
                                iAdobeGenericCompletionCallback.onCompletion(null);
                            }
                        }, handler);
                    }
                }
            }, handler);
        }
    }

    public static boolean isStockFileRenderable(AdobeAssetLibraryItemStockImage adobeAssetLibraryItemStockImage) {
        String mediaType = adobeAssetLibraryItemStockImage.getMediaType();
        return mediaType == null || !(mediaType.contains("illustrator") || mediaType.contains("video") || mediaType.contains("vector"));
    }

    public class Cache {
        private static String cacheGUID(AdobeAssetFile adobeAssetFile) {
            String guid = adobeAssetFile.getGUID();
            if (guid == null) {
                return adobeAssetFile.getHref().getPath().split(URIUtil.SLASH)[r0.length - 1];
            }
            return guid;
        }

        public static byte[] getRenditionFromCacheWithType(AdobeAssetFile adobeAssetFile, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
            return getRenditionFromCacheWithType(adobeAssetFile, adobeAssetFileRenditionType, adobeAssetImageDimensions, 0);
        }

        private static String cacheKey(AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, int i) {
            return String.format("%d_%d-%d-%d", Integer.valueOf(adobeAssetFileRenditionType.getIntVal()), Integer.valueOf((int) adobeAssetImageDimensions.width), Integer.valueOf((int) adobeAssetImageDimensions.height), Integer.valueOf(i));
        }

        public static byte[] getRenditionFromCacheWithType(AdobeAssetFile adobeAssetFile, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, int i) {
            return (byte[]) AdobeCommonCache.getSharedInstance().getDataFromGUID(cacheGUID(adobeAssetFile), cacheKey(adobeAssetFileRenditionType, adobeAssetImageDimensions, 0), EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), "com.adobe.cc.storage");
        }

        public static byte[] getRenditionFromCacheWithType(String str, String str2) {
            return (byte[]) AdobeCommonCache.getSharedInstance().getDataFromGUID(str, str2, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), "com.adobe.cc.storage");
        }
    }
}
