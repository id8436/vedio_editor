package com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop;

import android.graphics.Bitmap;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSSendToDesktopEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.sendtodesktop.AdobeNotificationSession;
import com.adobe.creativesdk.foundation.internal.sendtodesktop.AdobeSendToDesktopErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.sendtodesktop.AdobeCreativeCloudApplication;
import com.adobe.creativesdk.foundation.sendtodesktop.AdobeSendToDesktopErrorCode;
import com.adobe.creativesdk.foundation.sendtodesktop.AdobeSendToDesktopException;
import com.adobe.creativesdk.foundation.sendtodesktop.IAdobeSendToDesktopCallBack;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.google.common.net.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeSendToDesktopApplicationAdobeInternal {
    public static final String kAdobeSendToDesktopApplicationItemKeyData = "AdobeSendToDesktopApplicationItemKeyData";
    public static final String kAdobeSendToDesktopApplicationItemKeyDataExtension = "AdobeSendToDesktopApplicationItemKeyDataExtension";
    public static final String kAdobeSendToDesktopApplicationItemKeyDataType = "AdobeSendToDesktopApplicationItemKeyDataType";
    private static final String kAdobeSendToDesktopApplicationItemKeyFacebookAppId = "AdobeSendToDesktopApplicationItemKeyFacebookAppId";
    public static final String kAdobeSendToDesktopApplicationItemKeyImage = "AdobeSendToDesktopApplicationItemKeyImage";
    public static final String kAdobeSendToDesktopApplicationItemKeyName = "AdobeSendToDesktopApplicationItemKeyName";
    private static final String kAdobeSendToDesktopApplicationItemKeyProjectTags = "AdobeSendToDesktopApplicationItemKeyProjectTags";
    private static final String kAdobeSendToDesktopApplicationItemKeyRevisionId = "AdobeSendToDesktopApplicationItemKeyRevisionId";
    private static final String kAdobeSendToDesktopApplicationItemKeyWipId = "AdobeSendToDesktopApplicationItemKeyWipId";
    private static final String kAdobeSendToDesktopApplicationItemKeyXMPMetadata = "AdobeSendToDesktopApplicationItemKeyXMPMetadata";

    public static void sendImage(Bitmap bitmap, AdobeCreativeCloudApplication adobeCreativeCloudApplication, String str, AdobeCloud adobeCloud, final IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        if (adobeCloud == null) {
            adobeCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        if (checkEntitlementsForApplication(adobeCreativeCloudApplication, new IAdobeGenericErrorCallback<AdobeSendToDesktopException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeSendToDesktopException adobeSendToDesktopException) {
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopException.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopException);
            }
        })) {
            HashMap map = new HashMap();
            map.put(kAdobeSendToDesktopApplicationItemKeyName, str);
            map.put(kAdobeSendToDesktopApplicationItemKeyImage, bitmap);
            sendItem(map, adobeCreativeCloudApplication, adobeCloud, iAdobeSendToDesktopCallBack);
        }
    }

    public static void sendData(InputStream inputStream, String str, AdobeCreativeCloudApplication adobeCreativeCloudApplication, String str2, AdobeCloud adobeCloud, final IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        if (adobeCloud == null) {
            adobeCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        if (checkEntitlementsForApplication(adobeCreativeCloudApplication, new IAdobeGenericErrorCallback<AdobeSendToDesktopException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeSendToDesktopException adobeSendToDesktopException) {
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopException.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopException);
            }
        })) {
            FilenameUtils.removeExtension(str2);
            String strUpdateExtension = updateExtension(FilenameUtils.getExtension(str2), str);
            if (strUpdateExtension == null) {
                iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME));
                return;
            }
            HashMap map = new HashMap();
            map.put(kAdobeSendToDesktopApplicationItemKeyName, str2);
            map.put(kAdobeSendToDesktopApplicationItemKeyData, inputStream);
            map.put(kAdobeSendToDesktopApplicationItemKeyDataType, str);
            map.put(kAdobeSendToDesktopApplicationItemKeyDataExtension, strUpdateExtension);
            sendItem(map, adobeCreativeCloudApplication, adobeCloud, iAdobeSendToDesktopCallBack);
        }
    }

    public static void sendLocalFile(String str, String str2, AdobeCreativeCloudApplication adobeCreativeCloudApplication, String str3, AdobeCloud adobeCloud, final IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        if (adobeCloud == null) {
            adobeCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        if (checkEntitlementsForApplication(adobeCreativeCloudApplication, new IAdobeGenericErrorCallback<AdobeSendToDesktopException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeSendToDesktopException adobeSendToDesktopException) {
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopException.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopException);
            }
        })) {
            FilenameUtils.removeExtension(str3);
            String strUpdateExtension = updateExtension(FilenameUtils.getExtension(str3), str2);
            if (strUpdateExtension == null) {
                iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME));
                return;
            }
            HashMap map = new HashMap();
            File file = new File(str);
            map.put(kAdobeSendToDesktopApplicationItemKeyName, str3);
            map.put(kAdobeSendToDesktopApplicationItemKeyImage, file);
            map.put(kAdobeSendToDesktopApplicationItemKeyDataType, str2);
            map.put(kAdobeSendToDesktopApplicationItemKeyDataExtension, strUpdateExtension);
            sendFile(map, adobeCreativeCloudApplication, adobeCloud, iAdobeSendToDesktopCallBack);
        }
    }

    public static void sendFile(Map<String, Object> map, AdobeCreativeCloudApplication adobeCreativeCloudApplication, AdobeCloud adobeCloud, final IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        byte[] bArr;
        int i;
        String str = (String) map.get(kAdobeSendToDesktopApplicationItemKeyName);
        String str2 = (String) map.get(kAdobeSendToDesktopApplicationItemKeyDataType);
        try {
            File file = (File) map.get(kAdobeSendToDesktopApplicationItemKeyImage);
            if (file == null) {
                AdobeSendToDesktopException adobeSendToDesktopExceptionCreateSendToDesktopError = AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE, null, "No File To Share");
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopExceptionCreateSendToDesktopError.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopExceptionCreateSendToDesktopError);
                return;
            }
            if (str == null || str.length() == 0) {
                AdobeSendToDesktopException adobeSendToDesktopExceptionCreateSendToDesktopError2 = AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE, null, "Empty File Name");
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopExceptionCreateSendToDesktopError2.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopExceptionCreateSendToDesktopError2);
                return;
            }
            try {
                byte[] bArr2 = new byte[(int) file.length()];
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    fileInputStream.read(bArr2);
                    fileInputStream.close();
                    bArr = bArr2;
                } catch (FileNotFoundException e2) {
                    bArr = bArr2;
                } catch (IOException e3) {
                    bArr = bArr2;
                }
            } catch (FileNotFoundException e4) {
                bArr = null;
            } catch (IOException e5) {
                bArr = null;
            }
            int iLastIndexOf = str.lastIndexOf(47);
            if (iLastIndexOf == -1) {
                i = 0;
            } else {
                i = iLastIndexOf + 1;
            }
            String strSubstring = str.substring(i);
            if (strSubstring == null || strSubstring.length() == 0) {
                AdobeSendToDesktopException adobeSendToDesktopExceptionCreateSendToDesktopError3 = AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE, null, "Empty File Name");
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopExceptionCreateSendToDesktopError3.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopExceptionCreateSendToDesktopError3);
            } else {
                AdobeCloud defaultCloud = adobeCloud == null ? AdobeCloudManager.getSharedCloudManager().getDefaultCloud() : adobeCloud;
                if (checkEntitlementsForApplication(adobeCreativeCloudApplication, new IAdobeGenericErrorCallback<AdobeSendToDesktopException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.4
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeSendToDesktopException adobeSendToDesktopException) {
                        AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopException.getDescription());
                        iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopException);
                    }
                })) {
                    sendItemUtil(strSubstring, bArr, str2, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack, defaultCloud);
                }
            }
        } catch (ClassCastException e6) {
            AdobeSendToDesktopException adobeSendToDesktopExceptionCreateSendToDesktopError4 = AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE, null, "Illegal data type.  Expected Bitmap.");
            AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", null, e6);
            iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopExceptionCreateSendToDesktopError4);
        }
    }

    public static void sendAsset(AdobeAssetFile adobeAssetFile, AdobeCreativeCloudApplication adobeCreativeCloudApplication, AdobeCloud adobeCloud, String str, final IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        if (adobeCloud == null) {
            adobeCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        if (checkEntitlementsForApplication(adobeCreativeCloudApplication, new IAdobeGenericErrorCallback<AdobeSendToDesktopException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.5
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeSendToDesktopException adobeSendToDesktopException) {
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopException.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopException);
            }
        })) {
            if (str == null || str.length() == 0) {
                iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_EMPTY_FILE_NAME, null, "Empty File Name"));
            } else if (!validAssetName(str)) {
                iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME, null, "Invalid File Name"));
            } else {
                sendAssetUtil(str, adobeAssetFile, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack, adobeCloud);
            }
        }
    }

    private static void sendAssetUtil(String str, AdobeAssetFile adobeAssetFile, AdobeCreativeCloudApplication adobeCreativeCloudApplication, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack, AdobeCloud adobeCloud) {
        URI uri;
        URI uri2;
        try {
            uri = new URI("temp/");
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
            uri = null;
        }
        AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(uri);
        String strGenerateUuid = AdobeStorageUtils.generateUuid();
        try {
            uri2 = new URI(adobeStorageResourceCollectionCollectionFromHref.href + strGenerateUuid + "?invocation_mode=sync,async");
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            uri2 = null;
        }
        if (uri2 == null) {
            iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
            return;
        }
        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(uri2);
        adobeStorageResourceItemResourceFromHref.type = adobeAssetFile.getType();
        String str2 = String.format("<%s>;rel=source", adobeAssetFile.getHref().toString().substring(1));
        AdobeStorageSession adobeStorageSession = (AdobeStorageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        if (adobeStorageSession == null) {
            iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
            return;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = adobeStorageSession.requestFor(adobeStorageResourceItemResourceFromHref, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, false);
        adobeNetworkHttpRequestRequestFor.setRequestProperty(HttpHeaders.LINK, str2);
        AdobeNotificationSession adobeNotificationSession = (AdobeNotificationSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeNotification);
        if (adobeNotificationSession == null) {
            iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
            return;
        }
        String extensionForMimeType = AdobeAssetFileExtensions.getExtensionForMimeType(adobeAssetFile.getType());
        if (extensionForMimeType == null) {
            int iLastIndexOf = str.lastIndexOf(".");
            extensionForMimeType = iLastIndexOf == -1 ? null : str.substring(iLastIndexOf + 1);
            if (extensionForMimeType == null) {
                extensionForMimeType = "xyz";
            }
        }
        AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent = new AdobeAnalyticsETSSendToDesktopEvent();
        adobeAnalyticsETSSendToDesktopEvent.trackCloud(adobeCloud);
        adobeAnalyticsETSSendToDesktopEvent.trackContentInfo(adobeAssetFile.getEtag(), adobeAssetFile.getName(), extensionForMimeType, AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_CC_FILE, "" + adobeAssetFile.getFileSize());
        adobeAnalyticsETSSendToDesktopEvent.trackEnvironment("", "", adobeNotificationSession.getCloudEndpoint().toString(), "");
        adobeAnalyticsETSSendToDesktopEvent.trackConsumerDetails(analyticsNameForApplication(adobeCreativeCloudApplication));
        adobeStorageSession.getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new AnonymousClass6(str, adobeAssetFile, extensionForMimeType, adobeNotificationSession, strGenerateUuid, adobeCloud, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack, adobeAnalyticsETSSendToDesktopEvent));
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal$6, reason: invalid class name */
    final class AnonymousClass6 implements AdobeStorageSession.IStorageResponseCallback {
        final /* synthetic */ AdobeCreativeCloudApplication val$application;
        final /* synthetic */ AdobeAssetFile val$asset;
        final /* synthetic */ AdobeCloud val$cloud;
        final /* synthetic */ String val$cloudAsset;
        final /* synthetic */ AdobeAnalyticsETSSendToDesktopEvent val$etsEvent;
        final /* synthetic */ String val$extension;
        final /* synthetic */ String val$name;
        final /* synthetic */ AdobeNotificationSession val$notificationSession;
        final /* synthetic */ IAdobeSendToDesktopCallBack val$sendItemCallback;

        AnonymousClass6(String str, AdobeAssetFile adobeAssetFile, String str2, AdobeNotificationSession adobeNotificationSession, String str3, AdobeCloud adobeCloud, AdobeCreativeCloudApplication adobeCreativeCloudApplication, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack, AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent) {
            this.val$name = str;
            this.val$asset = adobeAssetFile;
            this.val$extension = str2;
            this.val$notificationSession = adobeNotificationSession;
            this.val$cloudAsset = str3;
            this.val$cloud = adobeCloud;
            this.val$application = adobeCreativeCloudApplication;
            this.val$sendItemCallback = iAdobeSendToDesktopCallBack;
            this.val$etsEvent = adobeAnalyticsETSSendToDesktopEvent;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
        public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
            try {
                AdobeSendToDesktopApplicationAdobeInternal.waitForCompletion(adobeNetworkHttpResponse, new JSONObject(adobeNetworkHttpResponse.getDataString()).optString("href"), AdobeNotificationSession.getTimeIntervalSince1970(), new IAdobeSendToDesktopNotificationCallBack() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.6.1
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.IAdobeSendToDesktopNotificationCallBack
                    public void onComplete() {
                        String str;
                        Handler handler;
                        String name = AnonymousClass6.this.val$name != null ? AnonymousClass6.this.val$name : AnonymousClass6.this.val$asset.getName();
                        int iLastIndexOf = name.lastIndexOf(".");
                        if (iLastIndexOf == -1) {
                            iLastIndexOf = name.length();
                        }
                        String strSubstring = name.substring(0, iLastIndexOf);
                        if (AnonymousClass6.this.val$extension.startsWith(".")) {
                            str = strSubstring + AnonymousClass6.this.val$extension;
                        } else {
                            str = strSubstring + "." + AnonymousClass6.this.val$extension;
                        }
                        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = AnonymousClass6.this.val$notificationSession.requestFor(AnonymousClass6.this.val$cloudAsset, str, AnonymousClass6.this.val$cloud, AnonymousClass6.this.val$application, "image/png");
                        if (adobeNetworkHttpRequestRequestFor != null) {
                            try {
                                handler = new Handler();
                            } catch (Exception e2) {
                                handler = null;
                            }
                            AnonymousClass6.this.val$notificationSession.responseFor(adobeNetworkHttpRequestRequestFor, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.6.1.1
                                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                                    int statusCode = adobeNetworkHttpResponse2.getStatusCode();
                                    if (statusCode >= 200 && statusCode <= 300) {
                                        AnonymousClass6.this.val$sendItemCallback.onSuccess();
                                        AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypeProductShares, AdobeSendToDesktopApplicationAdobeInternal.analyticsNameForApplication(AnonymousClass6.this.val$application));
                                        AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent = AnonymousClass6.this.val$etsEvent;
                                        AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = AnonymousClass6.this.val$etsEvent;
                                        adobeAnalyticsETSSendToDesktopEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                                        return;
                                    }
                                    String dataString = adobeNetworkHttpResponse2.getDataString();
                                    AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", dataString);
                                    AnonymousClass6.this.val$sendItemCallback.onError(AdobeSendToDesktopApplicationAdobeInternal.getSendToDesktopExceptionFromNetworkResponse(adobeNetworkHttpResponse2, AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR, dataString));
                                    AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent3 = AnonymousClass6.this.val$etsEvent;
                                    AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent4 = AnonymousClass6.this.val$etsEvent;
                                    adobeAnalyticsETSSendToDesktopEvent3.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                                }

                                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                                public void onError(AdobeNetworkException adobeNetworkException) {
                                    AdobeNetworkHttpResponse adobeNetworkHttpResponse2 = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                                    AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeNetworkException.getDescription());
                                    AnonymousClass6.this.val$sendItemCallback.onError(AdobeSendToDesktopApplicationAdobeInternal.getSendToDesktopExceptionFromNetworkResponse(adobeNetworkHttpResponse2, AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR, adobeNetworkException.getDescription()));
                                    AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent = AnonymousClass6.this.val$etsEvent;
                                    AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = AnonymousClass6.this.val$etsEvent;
                                    adobeAnalyticsETSSendToDesktopEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                                }
                            }, handler);
                        } else {
                            AnonymousClass6.this.val$sendItemCallback.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
                            AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent = AnonymousClass6.this.val$etsEvent;
                            AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = AnonymousClass6.this.val$etsEvent;
                            adobeAnalyticsETSSendToDesktopEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.IAdobeSendToDesktopNotificationCallBack
                    public void onError(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                        AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", null);
                        AnonymousClass6.this.val$sendItemCallback.onError(AdobeSendToDesktopApplicationAdobeInternal.getSendToDesktopExceptionFromNetworkResponse(adobeNetworkHttpResponse2, AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR, adobeNetworkHttpResponse2.getDataString()));
                        AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent = AnonymousClass6.this.val$etsEvent;
                        AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = AnonymousClass6.this.val$etsEvent;
                        adobeAnalyticsETSSendToDesktopEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.IAdobeSendToDesktopNotificationCallBack
                    public void onError(AdobeSendToDesktopException adobeSendToDesktopException) {
                        AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopException.getDescription());
                        AnonymousClass6.this.val$sendItemCallback.onError(adobeSendToDesktopException);
                        AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent = AnonymousClass6.this.val$etsEvent;
                        AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = AnonymousClass6.this.val$etsEvent;
                        adobeAnalyticsETSSendToDesktopEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    }
                }, this.val$cloud);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
        public void onError(AdobeNetworkException adobeNetworkException) {
            AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
            AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", null);
            this.val$sendItemCallback.onError(AdobeSendToDesktopApplicationAdobeInternal.getSendToDesktopExceptionFromNetworkResponse(adobeNetworkHttpResponse, AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR, adobeNetworkException.getDescription()));
            AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent = this.val$etsEvent;
            AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = this.val$etsEvent;
            adobeAnalyticsETSSendToDesktopEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
        }

        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
        public void onProgress(double d2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void waitForCompletion(final AdobeNetworkHttpResponse adobeNetworkHttpResponse, final String str, final long j, final IAdobeSendToDesktopNotificationCallBack iAdobeSendToDesktopNotificationCallBack, final AdobeCloud adobeCloud) {
        URI uri;
        URI uri2;
        int i;
        AdobeStorageSession adobeStorageSession = (AdobeStorageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        if (adobeStorageSession == null) {
            iAdobeSendToDesktopNotificationCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
            return;
        }
        if (AdobeNotificationSession.getTimeIntervalSince1970() - j > 300000) {
            AdobeSendToDesktopException adobeSendToDesktopExceptionCreateSendToDesktopError = AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_RESPONSE_TIME_OUT, String.format("Service monitor call timed out after %d time", 300000L), null);
            AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopExceptionCreateSendToDesktopError.getDescription());
            iAdobeSendToDesktopNotificationCallBack.onError(adobeSendToDesktopExceptionCreateSendToDesktopError);
            return;
        }
        if (adobeNetworkHttpResponse.getStatusCode() == 202) {
            List<String> list = adobeNetworkHttpResponse.getHeaders().get(AdobeCommunityConstants.AdobeCommunityResponseHeadersKeyRetryAfter);
            if (list != null && (i = Integer.parseInt(list.get(0))) != 0) {
                try {
                    Thread.sleep(i);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            try {
                uri = new URI("");
            } catch (URISyntaxException e3) {
                e3.printStackTrace();
                uri = null;
            }
            try {
                uri2 = new URI(AdobeStorageResourceCollection.collectionFromHref(uri).href.toString() + str);
            } catch (URISyntaxException e4) {
                e4.printStackTrace();
                uri2 = null;
            }
            if (uri2 == null) {
                iAdobeSendToDesktopNotificationCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
                return;
            }
            AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(uri2);
            adobeStorageResourceItemResourceFromHref.type = "application/http";
            adobeStorageSession.getResponseFor(adobeStorageSession.requestFor(adobeStorageResourceItemResourceFromHref, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, false), null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.7
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                    AdobeSendToDesktopApplicationAdobeInternal.waitForCompletion(adobeNetworkHttpResponse2, str, j, iAdobeSendToDesktopNotificationCallBack, adobeCloud);
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeNetworkException.getDescription());
                    iAdobeSendToDesktopNotificationCallBack.onError(adobeNetworkHttpResponse);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
            return;
        }
        if ((adobeNetworkHttpResponse.getStatusCode() >= 200 && adobeNetworkHttpResponse.getStatusCode() < 300) || adobeNetworkHttpResponse.getStatusCode() == 304) {
            iAdobeSendToDesktopNotificationCallBack.onComplete();
        } else if (adobeNetworkHttpResponse.getStatusCode() >= 400 && adobeNetworkHttpResponse.getStatusCode() < 600) {
            iAdobeSendToDesktopNotificationCallBack.onError(adobeNetworkHttpResponse);
        }
    }

    protected static void sendItemUtil(final String str, byte[] bArr, final String str2, final AdobeCreativeCloudApplication adobeCreativeCloudApplication, final IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack, final AdobeCloud adobeCloud) {
        URI uri;
        URI uri2;
        try {
            uri = new URI("temp/");
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
            uri = null;
        }
        AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(uri);
        final String strGenerateUuid = AdobeStorageUtils.generateUuid();
        try {
            uri2 = new URI(adobeStorageResourceCollectionCollectionFromHref.href + strGenerateUuid);
        } catch (Exception e3) {
            e3.printStackTrace();
            uri2 = null;
        }
        if (uri2 == null) {
            iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
            return;
        }
        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(uri2);
        adobeStorageResourceItemResourceFromHref.type = str2;
        AdobeStorageSession adobeStorageSession = (AdobeStorageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        if (adobeStorageSession == null) {
            iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
            return;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = adobeStorageSession.requestFor(adobeStorageResourceItemResourceFromHref, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, true, null);
        final AdobeNotificationSession adobeNotificationSession = (AdobeNotificationSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeNotification);
        if (adobeNotificationSession == null) {
            iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
            return;
        }
        final AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent = new AdobeAnalyticsETSSendToDesktopEvent();
        adobeAnalyticsETSSendToDesktopEvent.trackCloud(adobeCloud);
        adobeAnalyticsETSSendToDesktopEvent.trackContentInfo(strGenerateUuid, str, ".png", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LOCAL_FILE, "" + bArr.length);
        adobeAnalyticsETSSendToDesktopEvent.trackEnvironment("", "", adobeNotificationSession.getCloudEndpoint().toString(), "");
        adobeAnalyticsETSSendToDesktopEvent.trackConsumerDetails(analyticsNameForApplication(adobeCreativeCloudApplication));
        adobeStorageSession.getResponseFor(adobeNetworkHttpRequestRequestFor, null, bArr, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.8
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                Handler handler;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode >= 200 && statusCode <= 300) {
                    AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor2 = adobeNotificationSession.requestFor(strGenerateUuid, str, adobeCloud, adobeCreativeCloudApplication, str2);
                    if (adobeNetworkHttpRequestRequestFor2 != null) {
                        try {
                            handler = new Handler();
                        } catch (Exception e4) {
                            handler = null;
                        }
                        adobeNotificationSession.responseFor(adobeNetworkHttpRequestRequestFor2, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.8.1
                            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                                int statusCode2 = adobeNetworkHttpResponse2.getStatusCode();
                                if (statusCode2 >= 200 && statusCode2 <= 300) {
                                    iAdobeSendToDesktopCallBack.onSuccess();
                                    AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypeProductShares, AdobeSendToDesktopApplicationAdobeInternal.analyticsNameForApplication(adobeCreativeCloudApplication));
                                    AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = adobeAnalyticsETSSendToDesktopEvent;
                                    AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent3 = adobeAnalyticsETSSendToDesktopEvent;
                                    adobeAnalyticsETSSendToDesktopEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                                    return;
                                }
                                String dataString = adobeNetworkHttpResponse2.getDataString();
                                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", dataString);
                                iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopApplicationAdobeInternal.getSendToDesktopExceptionFromNetworkResponse(adobeNetworkHttpResponse2, AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR, dataString));
                                AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent4 = adobeAnalyticsETSSendToDesktopEvent;
                                AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent5 = adobeAnalyticsETSSendToDesktopEvent;
                                adobeAnalyticsETSSendToDesktopEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                            public void onError(AdobeNetworkException adobeNetworkException) {
                                iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopApplicationAdobeInternal.getSendToDesktopExceptionFromNetworkResponse((AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response"), AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR, adobeNetworkException.getDescription()));
                                AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = adobeAnalyticsETSSendToDesktopEvent;
                                AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent3 = adobeAnalyticsETSSendToDesktopEvent;
                                adobeAnalyticsETSSendToDesktopEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                            }
                        }, handler);
                        return;
                    }
                    iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE, null, "Unexpected Error"));
                    AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = adobeAnalyticsETSSendToDesktopEvent;
                    AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent3 = adobeAnalyticsETSSendToDesktopEvent;
                    adobeAnalyticsETSSendToDesktopEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeSendToDesktopCallBack.onError(AdobeSendToDesktopApplicationAdobeInternal.getSendToDesktopExceptionFromNetworkResponse((AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response"), AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR, adobeNetworkException.getDescription()));
                AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent2 = adobeAnalyticsETSSendToDesktopEvent;
                AdobeAnalyticsETSSendToDesktopEvent adobeAnalyticsETSSendToDesktopEvent3 = adobeAnalyticsETSSendToDesktopEvent;
                adobeAnalyticsETSSendToDesktopEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public static void sendItem(Map<String, Object> map, AdobeCreativeCloudApplication adobeCreativeCloudApplication, AdobeCloud adobeCloud, final IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        String str;
        String str2;
        byte[] byteArray;
        String str3 = (String) map.get(kAdobeSendToDesktopApplicationItemKeyName);
        try {
            Bitmap bitmap = (Bitmap) map.get(kAdobeSendToDesktopApplicationItemKeyImage);
            InputStream inputStream = (InputStream) map.get(kAdobeSendToDesktopApplicationItemKeyData);
            byte[] byteArray2 = inputStream != null ? IOUtils.toByteArray(inputStream) : null;
            if ((bitmap == null && byteArray2 == null) || str3 == null || str3.length() == 0) {
                AdobeSendToDesktopException adobeSendToDesktopExceptionCreateSendToDesktopError = AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT, null, "Illegal Argument.");
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopExceptionCreateSendToDesktopError.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopExceptionCreateSendToDesktopError);
                return;
            }
            int iLastIndexOf = str3.lastIndexOf(47);
            int i = iLastIndexOf == -1 ? 0 : iLastIndexOf + 1;
            int iIndexOf = str3.indexOf(46);
            if (iIndexOf == -1 || i > iIndexOf) {
                iIndexOf = str3.length();
            }
            String strSubstring = str3.substring(i, iIndexOf);
            if (strSubstring == null || strSubstring.length() == 0) {
                AdobeSendToDesktopException adobeSendToDesktopExceptionCreateSendToDesktopError2 = AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE, null, "Empty File Name");
                AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopExceptionCreateSendToDesktopError2.getDescription());
                iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopExceptionCreateSendToDesktopError2);
                return;
            }
            AdobeCloud defaultCloud = adobeCloud == null ? AdobeCloudManager.getSharedCloudManager().getDefaultCloud() : adobeCloud;
            if (checkEntitlementsForApplication(adobeCreativeCloudApplication, new IAdobeGenericErrorCallback<AdobeSendToDesktopException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal.9
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeSendToDesktopException adobeSendToDesktopException) {
                    AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopException.getDescription());
                    iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopException);
                }
            })) {
                if (bitmap != null) {
                    if (bitmap != null) {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                        byteArray = byteArrayOutputStream.toByteArray();
                        str = String.format("%s.png", strSubstring);
                        str2 = "image/png";
                    } else {
                        str = null;
                        str2 = null;
                        byteArray = null;
                    }
                } else if (byteArray2 != null) {
                    String str4 = (String) map.get(kAdobeSendToDesktopApplicationItemKeyDataType);
                    Object[] objArr = {strSubstring, map.get(kAdobeSendToDesktopApplicationItemKeyDataExtension)};
                    str2 = str4;
                    str = String.format("%s.%s", objArr);
                    byteArray = byteArray2;
                } else {
                    str = null;
                    str2 = null;
                    byteArray = byteArray2;
                }
                sendItemUtil(str, byteArray, str2, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack, defaultCloud);
            }
        } catch (IOException | ClassCastException e2) {
            AdobeSendToDesktopException adobeSendToDesktopExceptionCreateSendToDesktopError3 = AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE, null, "Illegal data type.  Expected Bitmap.");
            AdobeLogger.log(Level.ERROR, "AdobeSendToDesktopApplication", adobeSendToDesktopExceptionCreateSendToDesktopError3.getDescription());
            iAdobeSendToDesktopCallBack.onError(adobeSendToDesktopExceptionCreateSendToDesktopError3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AdobeSendToDesktopException getSendToDesktopExceptionFromNetworkResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeSendToDesktopErrorCode adobeSendToDesktopErrorCode, String str) {
        return AdobeSendToDesktopErrorUtils.createSendToDesktopError(adobeSendToDesktopErrorCode, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String analyticsNameForApplication(AdobeCreativeCloudApplication adobeCreativeCloudApplication) {
        switch (adobeCreativeCloudApplication) {
            case AdobeIllustratorCreativeCloud:
                return AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetIllustrator;
            case AdobePhotoshopCreativeCloud:
                return "Photoshop";
            case AdobeInDesignCreativeCloud:
                return AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetInDesign;
            default:
                return "";
        }
    }

    private static boolean validAssetName(String str) {
        if (str == null) {
            return false;
        }
        return (str.matches(".*[\\\\:\\*\\?\"\\/<>\\|\\x00-\\x1F]+.*") || str.matches(".*[\\ \\.]$")) ? false : true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000a. Please report as an issue. */
    protected static boolean checkEntitlementsForApplication(AdobeCreativeCloudApplication adobeCreativeCloudApplication, IAdobeGenericErrorCallback<AdobeSendToDesktopException> iAdobeGenericErrorCallback) {
        String str;
        String str2;
        switch (adobeCreativeCloudApplication) {
        }
        if (1 != 0) {
            return true;
        }
        String str3 = null;
        switch (adobeCreativeCloudApplication) {
            case AdobeIllustratorCreativeCloud:
                str3 = "Adobe Illustrator";
                break;
            case AdobePhotoshopCreativeCloud:
                str3 = "Adobe Photoshop";
                break;
            case AdobeInDesignCreativeCloud:
                str3 = "Adobe InDesign";
                break;
        }
        if (str3 == null) {
            str = "SEND_TO_UNKNOWN_DESKTOP_PERMISSION_DENIED_DUE_TO_ENTITLEMENTS_MESSAGE";
            str2 = "You do not have permission to send your designs to this application. Contact your IT administrator to gain access";
        } else {
            str2 = String.format("You do not have permission to send your designs to %s. Contact your IT administrator to gain access.", str3);
            str = "SEND_TO_DESKTOP_PERMISSION_DENIED_DUE_TO_ENTITLEMENTS_MESSAGE";
        }
        iAdobeGenericErrorCallback.onError(AdobeSendToDesktopErrorUtils.createSendToDesktopError(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_USER_NOT_ENTITLED, str2, str));
        return false;
    }

    private static String updateExtension(String str, String str2) {
        if (str == null || str2 == null || !str.equals(AdobeAssetFileExtensions.getMimeTypeForExtension(str))) {
            String extensionForMimeType = AdobeAssetFileExtensions.getExtensionForMimeType(str2);
            if (str2 == null) {
                extensionForMimeType = null;
            }
            if (extensionForMimeType != null && !extensionForMimeType.equals("")) {
                return extensionForMimeType;
            }
            if (str == null || str.equals("")) {
                return null;
            }
            return str;
        }
        return str;
    }
}
