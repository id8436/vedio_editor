package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Build;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetLibraryInternal;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibrary;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryUtils {
    static Set<String> pngRenditionSupportedSet = null;

    public static AdobeLibraryException createLibraryError(AdobeLibraryErrorCode adobeLibraryErrorCode, Exception exc, String str, String str2) {
        HashMap map = new HashMap();
        if (str != null) {
            map.put(AdobeCSDKException.AdobeErrorPathKey, str);
        }
        return new AdobeLibraryException(adobeLibraryErrorCode, str2, map, exc);
    }

    public static boolean canComputerRenditionForType(String str) {
        synchronized (AdobeLibraryUtils.class) {
            if (pngRenditionSupportedSet == null) {
                pngRenditionSupportedSet = new HashSet();
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypeInDesign);
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypePostscript);
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypeIllustrator);
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypePDF);
                pngRenditionSupportedSet.add("application/vnd.adobe.psremix");
                pngRenditionSupportedSet.add("application/vnd.adobe.pstouch");
                pngRenditionSupportedSet.add("application/vnd.adobe.ideas");
                pngRenditionSupportedSet.add("application/vnd.adobe.ase");
                pngRenditionSupportedSet.add("image/jpeg");
                pngRenditionSupportedSet.add(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRenditionContentTypeJPG);
                pngRenditionSupportedSet.add("image/pjpeg");
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypeTIFF);
                pngRenditionSupportedSet.add("image/gif");
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypeBMP);
                pngRenditionSupportedSet.add("image/x-ms-bmp");
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypeSVG);
                pngRenditionSupportedSet.add("image/png");
                pngRenditionSupportedSet.add("image/x-png");
                pngRenditionSupportedSet.add("image/jp2");
                pngRenditionSupportedSet.add("image/psd");
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypePhotoshop);
                pngRenditionSupportedSet.add("application/photoshop");
                pngRenditionSupportedSet.add("application/x-photoshop");
                pngRenditionSupportedSet.add("image/raw");
                pngRenditionSupportedSet.add("image/dng");
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypeDNG);
                pngRenditionSupportedSet.add("video/mp4");
                pngRenditionSupportedSet.add("video/mpeg");
                pngRenditionSupportedSet.add("video/x-ms-wmv");
                pngRenditionSupportedSet.add("video/3gpp");
                pngRenditionSupportedSet.add("video/3gpp2");
                pngRenditionSupportedSet.add(AdobeAssetFileExtensions.kAdobeMimeTypeQuicktime);
                pngRenditionSupportedSet.add("video/x-msvideo");
                pngRenditionSupportedSet.add("video/x-flv");
                pngRenditionSupportedSet.add("video/x-ms-asf");
                pngRenditionSupportedSet.add("video/x-m4v");
                pngRenditionSupportedSet.add("video/mp2t");
                pngRenditionSupportedSet.add("application/mxf");
                pngRenditionSupportedSet.add("application/x-shockwave-flash");
                pngRenditionSupportedSet.add("application/vnd.adobe.brushes.brush+ucf");
                pngRenditionSupportedSet.add("application/vnd.adobe.collage");
                pngRenditionSupportedSet.add("application/vnd.adobe.proto");
                pngRenditionSupportedSet.add("application/msword");
                pngRenditionSupportedSet.add("application/msexcel");
                pngRenditionSupportedSet.add("application/mspowerpoint");
                pngRenditionSupportedSet.add("application/vnd.ms-publisher");
                pngRenditionSupportedSet.add("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
                pngRenditionSupportedSet.add("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
                pngRenditionSupportedSet.add("application/vnd.openxmlformats-officedocument.presentationml.presentation");
                pngRenditionSupportedSet.add(MimeTypes.TEXT_PLAIN);
                pngRenditionSupportedSet.add("text/rtf");
            }
        }
        return pngRenditionSupportedSet.contains(str);
    }

    public static long getCurrentTimeInMilliseconds() {
        return new Date().getTime();
    }

    public static String getActiveAppName() {
        Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        if (applicationContext == null) {
            return null;
        }
        return applicationContext.getString(applicationContext.getApplicationInfo().labelRes);
    }

    public static String getActiveAppVersion() {
        Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        if (applicationContext == null) {
            return null;
        }
        try {
            return Integer.toString(applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryUtils.class.getSimpleName(), "Failure in getActiveAppVersion", e2);
            return null;
        }
    }

    public static String getDeviceOSVersion() {
        return Build.VERSION.RELEASE + " " + Integer.toString(Build.VERSION.SDK_INT);
    }

    public static String getShortElementType(String str) {
        Matcher matcher = Pattern.compile("application/vnd.adobe.element.(.+)\\\\+dcx").matcher(str);
        matcher.region(0, str.length());
        if (matcher.find() && matcher.groupCount() == 2) {
            return matcher.group(1);
        }
        return str;
    }

    public static boolean isCompatibleType(String str, String str2) {
        return str2.equals(str) || (str.equals(AdobeAssetFileExtensions.kAdobeMimeTypeSVG) && str2.equals(AdobeAssetFileExtensions.kAdobeMimeTypeShape));
    }

    public static void removeLocalLibraryFilesInRootFolder(String str) throws IOException {
        FileUtils.forceDelete(new File(AdobeDCXUtils.stringByAppendingLastPathComponent(str, "libraries")));
        FileUtils.forceDelete(new File(AdobeDCXUtils.stringByAppendingLastPathComponent(str, "renditions")));
    }

    public static String getRenditionQueryParamsForEndpoint(String str, int i) {
        if (str == null) {
            return null;
        }
        if (str.equalsIgnoreCase("stock.adobe.io") || str.equalsIgnoreCase("stock.adobe.com") || str.equalsIgnoreCase("stock-stage.adobe.io") || str.equalsIgnoreCase("staging-astock1.fotolia.net")) {
            return Integer.toString(i);
        }
        return null;
    }

    public static AdobeAssetLibrary getAssetLibraryObject(AdobeLibraryComposite adobeLibraryComposite) {
        if (adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return null;
        }
        AdobeAssetLibraryInternal adobeAssetLibraryInternal = new AdobeAssetLibraryInternal(((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getManifest());
        adobeAssetLibraryInternal.loadMetadataForLibrary();
        return adobeAssetLibraryInternal;
    }

    public static AdobeAssetLibraryItem getAssetLibraryItemObject(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        AdobeAssetLibrary assetLibraryObject = getAssetLibraryObject(adobeLibraryComposite);
        if (assetLibraryObject == null || !(assetLibraryObject instanceof AdobeAssetLibraryInternal)) {
            return null;
        }
        return ((AdobeAssetLibraryInternal) assetLibraryObject).getItemFromId(adobeLibraryElement.getElementId(), adobeLibraryElement.getType());
    }

    public static BitmapFactory.Options getImageSize(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return options;
    }

    public static boolean isUUID(String str) {
        return Pattern.compile("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}").matcher(str).matches();
    }

    public static boolean isJUnitTest() {
        Iterator it = Arrays.asList(Thread.currentThread().getStackTrace()).iterator();
        while (it.hasNext()) {
            if (((StackTraceElement) it.next()).getClassName().startsWith("org.junit.")) {
                return true;
            }
        }
        return false;
    }
}
