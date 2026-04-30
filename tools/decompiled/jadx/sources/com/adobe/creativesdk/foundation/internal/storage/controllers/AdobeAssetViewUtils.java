package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.AbsListView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFolderInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewListViewScrollDirectionChange;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderByProperty;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderRelation;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKTypeFace;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKTypefaceSpan;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderBy;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderDirection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetViewUtils {
    public static final String ASSETVIEW_NAVIGATE_ISROOT_KEY = "isCollectionRoot";
    public static final String ASSETVIEW_NAVIGATE_TARGETCOLLECTION_NAME = "targetCollectionName";
    public static final int ASSET_ONE_UP_ACTIVITY_REQUEST = 2134;
    public static final int LIBRARY_ITEMS_ONE_UP_ACTIVITY_REQUEST = 2136;
    public static final int MOBILE_PACKAGE_ITEMS_ONE_UP_ACTIVITY_REQUEST = 2137;
    public static final int OFFLINE_ITEMS_ONE_UP_ACTIVITY_REQUEST = 2138;
    public static final int PHOTO_ONE_UP_ACTIVITY_REQUEST = 2135;
    private static final int SCROLL_DIRECTION_CHANGE_DPs_DELTA = 5;
    public static final String TARGET_COLLECTION_KEY = "TARGET_COLLECTION";
    private static int k_ONE_DP_TO_PIXELS = 0;
    private static String _appIdFromPreference = null;
    private static int _cameraCheckedResult = -1;
    private static Map<String, String> _guidToLibraryNameMap = new HashMap();
    public static boolean isFirstAsset = false;

    public class ListViewScrollChangeData {
        public int lastFirstVisibleItem = -1;
        public int lastFirstItemTop = 0;
        AdobeAssetViewListViewScrollDirectionChange.Direction scrollDirection = AdobeAssetViewListViewScrollDirectionChange.Direction.SCROLL_UNKNOWN;
        public int lastScrollTop = 0;
    }

    public static boolean shouldEnableLokiSpecificFeatures(Context context) {
        if (context == null) {
            return false;
        }
        if (_appIdFromPreference == null) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.adobe.ccsdk.ccAssetsContainer_private_preference", 0);
                if (sharedPreferences != null) {
                    _appIdFromPreference = sharedPreferences.getString("ccfilescontainer_private_appId", null);
                }
            } catch (Exception e2) {
            }
        }
        return _appIdFromPreference != null && _appIdFromPreference.equalsIgnoreCase("com.adobe.cc.android.loki");
    }

    public static boolean deviceHasCameraFeature(Context context) {
        boolean zHasSystemFeature;
        if (_cameraCheckedResult == -1) {
            try {
                zHasSystemFeature = context.getPackageManager().hasSystemFeature("android.hardware.camera.any");
            } catch (Exception e2) {
                zHasSystemFeature = true;
            }
            _cameraCheckedResult = zHasSystemFeature ? 1 : 2;
        }
        return _cameraCheckedResult == 1;
    }

    public static int convertDpToPx(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }

    public static ListViewScrollChangeData publishAnyListViewScrollDirectionChange(AbsListView absListView, ListViewScrollChangeData listViewScrollChangeData) {
        boolean z;
        if (absListView.getCount() != 0) {
            if (listViewScrollChangeData == null) {
                listViewScrollChangeData = new ListViewScrollChangeData();
            }
            int firstVisiblePosition = absListView.getFirstVisiblePosition();
            if (listViewScrollChangeData.lastFirstVisibleItem != -1) {
                if (k_ONE_DP_TO_PIXELS == 0) {
                    k_ONE_DP_TO_PIXELS = convertDpToPx(1);
                }
                if (listViewScrollChangeData.lastFirstVisibleItem == firstVisiblePosition) {
                    View childAt = absListView.getChildAt(0);
                    if (childAt != null) {
                        int top = childAt.getTop();
                        if (Math.abs(listViewScrollChangeData.lastFirstItemTop - top) >= k_ONE_DP_TO_PIXELS * 5) {
                            z = top < listViewScrollChangeData.lastFirstItemTop;
                            listViewScrollChangeData.lastFirstItemTop = top;
                        }
                    }
                } else {
                    z = listViewScrollChangeData.lastFirstVisibleItem < firstVisiblePosition;
                    View childAt2 = absListView.getChildAt(0);
                    if (childAt2 != null) {
                        listViewScrollChangeData.lastFirstItemTop = childAt2.getTop();
                    } else {
                        listViewScrollChangeData.lastFirstItemTop = 0;
                    }
                }
                AdobeAssetViewListViewScrollDirectionChange.Direction direction = listViewScrollChangeData.scrollDirection;
                AdobeAssetViewListViewScrollDirectionChange.Direction direction2 = z ? AdobeAssetViewListViewScrollDirectionChange.Direction.SCROLL_DOWN : AdobeAssetViewListViewScrollDirectionChange.Direction.SCROLL_UP;
                if (direction != direction2) {
                    AdobeAssetViewListViewScrollDirectionChange adobeAssetViewListViewScrollDirectionChange = new AdobeAssetViewListViewScrollDirectionChange();
                    adobeAssetViewListViewScrollDirectionChange.setNewScrollDirection(direction2);
                    adobeAssetViewListViewScrollDirectionChange.setOffsetChange(0);
                    AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ASSETVIEW_LISTVIEW_SCROLL_DIRECTION_CHANGE, adobeAssetViewListViewScrollDirectionChange);
                }
                listViewScrollChangeData.scrollDirection = direction2;
                listViewScrollChangeData.lastFirstVisibleItem = firstVisiblePosition;
            } else {
                listViewScrollChangeData.lastFirstVisibleItem = firstVisiblePosition;
            }
        }
        return listViewScrollChangeData;
    }

    public static SpannableString getAdobeFontFormattedString(String str, Activity activity) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new AdobeCSDKTypefaceSpan(null, AdobeCSDKTypeFace.getTypeface(activity)), 0, spannableString.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(activity.getResources().getColor(R.color.adobe_csdk_asset_browser_dark_text)), 0, spannableString.length(), 33);
        return spannableString;
    }

    public static AdobeAssetFolderOrderBy getLastOrderField() {
        if (AdobeCommonLearnedSettings.lastSortType() == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
            return AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_NAME;
        }
        return AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED;
    }

    public static AdobeAssetFolderOrderDirection getLastOrderDirection() {
        if (AdobeCommonLearnedSettings.lastSortState() == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.SORT_STATE_ASCENDING) {
            return AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_ASCENDING;
        }
        return AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_DESCENDING;
    }

    public static AdobeAssetFolder getAssetFolderFromCollection(AdobeStorageResourceCollection adobeStorageResourceCollection) {
        try {
            return new AdobeAssetFolderInternal(adobeStorageResourceCollection, AdobeStorageOrderByProperty.ADOBE_STORAGE_ORDER_BY_NAME, AdobeStorageOrderRelation.ADOBE_STORAGE_ORDER_ASCENDING, new URI(AdobeStorageLastPathComponentUtil.stringByDeletingLastPathComponent(adobeStorageResourceCollection.href.getRawPath())));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static AdobeAssetFolder getAssetFolderFromHref(String str, boolean z) {
        AdobeAssetFolder folderFromDirectHref;
        AdobeAssetFolderOrderBy lastOrderField = getLastOrderField();
        AdobeAssetFolderOrderDirection lastOrderDirection = getLastOrderDirection();
        if (str == null) {
            folderFromDirectHref = null;
        } else {
            try {
                folderFromDirectHref = AdobeAssetFolder.getFolderFromDirectHref(new URI(str), lastOrderField, lastOrderDirection);
            } catch (URISyntaxException e2) {
                e2.printStackTrace();
                folderFromDirectHref = null;
            }
        }
        if (folderFromDirectHref == null && z) {
            return AdobeAssetFolder.getRootOrderedByField(lastOrderField, lastOrderDirection);
        }
        return folderFromDirectHref;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewUtils$1DecodeImageInBackgroundTask] */
    public static void getBitmapFromData(byte[] bArr, final IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
        new AsyncTask<byte[], Integer, Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewUtils.1DecodeImageInBackgroundTask
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(byte[]... bArr2) {
                byte[] bArr3 = bArr2[0];
                if (bArr3 != null) {
                    return BitmapFactory.decodeByteArray(bArr3, 0, bArr3.length);
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                iAdobeGenericCompletionCallback.onCompletion(bitmap);
            }
        }.execute(bArr);
    }

    public static void getAssetRenditionUtil(AdobeAssetFile adobeAssetFile, AdobeAssetImageDimensions adobeAssetImageDimensions, final IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
        adobeAssetFile.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, AssetsAbsListView.adjustRenditionSizeBasedOnDeviceScale(adobeAssetImageDimensions), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewUtils.1
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(byte[] bArr) {
                AdobeAssetViewUtils.getBitmapFromData(bArr, iAdobeGenericCompletionCallback);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                iAdobeGenericCompletionCallback.onCompletion(null);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public static void populateGuidToLibraryNameMap(String str, String str2) {
        _guidToLibraryNameMap.put(str, str2);
    }

    public static String getLibraryNameForGuid(String str) {
        return _guidToLibraryNameMap.get(str);
    }

    public static boolean hasLibraryGuidAlreadyRegistered(String str) {
        return _guidToLibraryNameMap.containsKey(str);
    }
}
