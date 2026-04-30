package com.adobe.creativesdk.foundation.adobeinternal.imageservice;

import android.os.Handler;
import android.support.annotation.NonNull;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudEndpoint;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.agc.AdobeAGCCreationType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.agc.AdobeAGCImageComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.agc.AdobeAGCImageComponents;
import com.adobe.creativesdk.foundation.adobeinternal.storage.agc.AdobeAGCManifest;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeMultiPartData;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeImageSession extends AdobeCloudServiceSession {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String AdobeStorageSessionImageServiceTag = "imageservices";
    public static final String FACE_DETECT = "faceDetect";
    public static final String IMAGE = "image";
    public static final String MANIFEST = "manifest";
    public static final String RESPONSE = "Response";
    private static String TAG = null;
    public static final String UTF_8 = "UTF-8";
    private static long totalPhysicalMemory;
    private String imageSessionTmpDir;
    private Map<AdobeNetworkHttpRequest, AdobeNetworkHttpTaskHandle> requestMap;

    static {
        $assertionsDisabled = !AdobeImageSession.class.desiredAssertionStatus();
        totalPhysicalMemory = -1L;
        TAG = AdobeImageSession.class.getSimpleName();
    }

    protected static AdobeCloudEndpoint getServiceEndpoint() {
        String str;
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                str = "https://cc-api-image.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentStageUS:
                str = "https://cc-api-image-stage.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentCloudLabsUS:
                str = "https://cc-api-image-labs.adobe.io";
                break;
            default:
                AdobeLogger.log(Level.ERROR, AdobeImageSession.class.getSimpleName(), "An undefined authentication endpoint has been specified.");
                str = null;
                break;
        }
        try {
            return new AdobeCloudEndpoint(AdobeStorageSessionImageServiceTag, str != null ? new URL(str) : null, AdobeCloudServiceType.AdobeCloudServiceTypeImage);
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
            return null;
        }
    }

    public static AdobeCloudServiceSession getSessionForCloudEndpoint(AdobeCloudEndpoint adobeCloudEndpoint) {
        if (adobeCloudEndpoint == null) {
            adobeCloudEndpoint = getServiceEndpoint();
        }
        return new AdobeImageSession(adobeCloudEndpoint);
    }

    public AdobeImageSession(AdobeCloudEndpoint adobeCloudEndpoint) {
        super(adobeCloudEndpoint);
        this.imageSessionTmpDir = null;
        createTmpDir();
        setUpService();
        setDisconnectionNotifier(AdobeInternalNotificationID.AdobeImageServiceDisconnectedNotification);
        setupOngoingConnectionTimer(15L, false);
        this.requestMap = new HashMap();
    }

    public AdobeImageSession(AdobeNetworkHttpService adobeNetworkHttpService, String str) {
        super(adobeNetworkHttpService, str);
        this.imageSessionTmpDir = null;
        createTmpDir();
        this.requestMap = new HashMap();
    }

    public AdobeImageSession(AdobeNetworkHttpService adobeNetworkHttpService) {
        super(adobeNetworkHttpService, null);
        this.imageSessionTmpDir = null;
        this.requestMap = new HashMap();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void setUpService() {
    }

    public static String convertCropSortType(AdobeImageAutoCropSortType adobeImageAutoCropSortType) {
        switch (adobeImageAutoCropSortType) {
            case AdobeImageSortOnAll:
                return "all";
            case AdobeImageSortOnComposition:
                return "composition";
            case AdobeImageSortOnSaliency:
                return "saliency";
            case AdobeImageSortOnCutThrough:
                return "cutThrough";
            default:
                return null;
        }
    }

    public AdobeNetworkHttpTaskHandle autoCrop(AdobeStorageResourceItem adobeStorageResourceItem, int i, boolean z, double[] dArr, boolean z2, AdobeImageAutoCropSortType adobeImageAutoCropSortType, AdobeImageOutputParameters adobeImageOutputParameters, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        AdobeImageOperation adobeImageOperation = new AdobeImageOperation();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("image", adobeStorageResourceItem);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
        }
        adobeImageOperation.setInputs(jSONObject);
        Object objConvertCropSortType = convertCropSortType(adobeImageAutoCropSortType);
        if (objConvertCropSortType == null) {
            HashMap map2 = new HashMap();
            map2.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Unknown autoCrop sort type");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map2), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("numSuggestions", Integer.valueOf(i));
            jSONObject2.putOpt(FACE_DETECT, Boolean.valueOf(z));
            JSONArray jSONArray = new JSONArray();
            for (double d2 : dArr) {
                jSONArray.put(d2);
            }
            jSONObject2.putOpt("aspectRatios", jSONArray);
            jSONObject2.putOpt("perAspectRatio", Boolean.valueOf(z2));
            jSONObject2.putOpt("sortType", objConvertCropSortType);
        } catch (JSONException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
        }
        adobeImageOperation.setOptions(jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.putOpt("output", adobeImageOutputParameters);
        } catch (JSONException e4) {
            AdobeLogger.log(Level.ERROR, TAG, "", e4);
        }
        adobeImageOperation.setOutputDispositions(jSONObject3);
        return performImageOperation("autocrop", adobeImageOperation, iAdobeImageRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpTaskHandle autoTone(AdobeStorageResourceItem adobeStorageResourceItem, boolean z, boolean z2, AdobeImageOutputParameters adobeImageOutputParameters, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        AdobeImageOperation adobeImageOperation = new AdobeImageOperation();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("image", adobeStorageResourceItem);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
        }
        adobeImageOperation.setInputs(jSONObject);
        boolean z3 = adobeImageOutputParameters.disposition != AdobeImageOutputDispositionType.AdobeImageOutputDispositionNone;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt(FACE_DETECT, Boolean.valueOf(z));
            jSONObject2.putOpt("exportCurve", Boolean.valueOf(z2));
            jSONObject2.putOpt("applyCurve", Boolean.valueOf(z3));
        } catch (JSONException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
        }
        adobeImageOperation.setOptions(jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.putOpt("image", adobeImageOutputParameters);
        } catch (JSONException e4) {
            AdobeLogger.log(Level.ERROR, TAG, "", e4);
        }
        adobeImageOperation.setOutputDispositions(jSONObject3);
        return performImageOperation("autotone", adobeImageOperation, iAdobeImageRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpTaskHandle upright(AdobeStorageResourceItem adobeStorageResourceItem, AdobeImageAdjustType adobeImageAdjustType, AdobeImageCalibrateType adobeImageCalibrateType, float f2, boolean z, AdobeImageCropType adobeImageCropType, AdobeImageOutputParameters adobeImageOutputParameters, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        AdobeStorageResourceItem adobeStorageResourceItem2 = new AdobeStorageResourceItem(adobeStorageResourceItem);
        if (adobeStorageResourceItem2.href != null && adobeStorageResourceItem2.href.toString().charAt(0) != '/') {
            try {
                adobeStorageResourceItem2.href = new URI(URIUtil.SLASH + adobeStorageResourceItem2.href.toString());
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, TAG, "", e2);
            }
        }
        AdobeImageOperation adobeImageOperation = new AdobeImageOperation();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("image", adobeStorageResourceItem2);
        } catch (JSONException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
        }
        adobeImageOperation.setInputs(jSONObject);
        Object objConvertAdjustType = convertAdjustType(adobeImageAdjustType);
        if (objConvertAdjustType == null) {
            HashMap map2 = new HashMap();
            map2.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Unknown adjust type");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map2), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        Object objConvertCalibrateType = convertCalibrateType(adobeImageCalibrateType);
        if (objConvertCalibrateType == null) {
            HashMap map3 = new HashMap();
            map3.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Unknown caliber type");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map3), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        Object objConvertCropType = convertCropType(adobeImageCropType);
        if (objConvertCropType == null) {
            HashMap map4 = new HashMap();
            map4.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Unknown crop type");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map4), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        boolean z2 = adobeImageOutputParameters.disposition != AdobeImageOutputDispositionType.AdobeImageOutputDispositionNone;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("adjust", objConvertAdjustType);
            jSONObject2.putOpt("calibrate", objConvertCalibrateType);
            jSONObject2.putOpt("f", Float.valueOf(f2));
            jSONObject2.putOpt(FACE_DETECT, Boolean.valueOf(z));
            jSONObject2.putOpt("crop", objConvertCropType);
            jSONObject2.putOpt("applyMatrix", Boolean.valueOf(z2));
        } catch (JSONException e4) {
            AdobeLogger.log(Level.ERROR, TAG, "", e4);
        }
        adobeImageOperation.setOptions(jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.putOpt("image", adobeImageOutputParameters);
        } catch (JSONException e5) {
            AdobeLogger.log(Level.ERROR, TAG, "", e5);
        }
        adobeImageOperation.setOutputDispositions(jSONObject3);
        return performImageOperation("upright", adobeImageOperation, iAdobeImageRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpTaskHandle deblur(AdobeStorageResourceItem adobeStorageResourceItem, int i, int i2, int i3, int i4, AdobeImageOutputParameters adobeImageOutputParameters, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        if (adobeImageOutputParameters.disposition == AdobeImageOutputDispositionType.AdobeImageOutputDispositionNone) {
            HashMap map2 = new HashMap();
            map2.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Disposition type no allowed");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map2), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        AdobeImageOperation adobeImageOperation = new AdobeImageOperation();
        AdobeStorageResourceItem adobeStorageResourceItem2 = new AdobeStorageResourceItem(adobeStorageResourceItem);
        if (adobeStorageResourceItem2.href != null && adobeStorageResourceItem2.href.toString().charAt(0) != '/') {
            try {
                adobeStorageResourceItem2.href = new URI(URIUtil.SLASH + adobeStorageResourceItem2.href.toString());
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, TAG, "", e2);
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("image", adobeStorageResourceItem2);
        } catch (JSONException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
        }
        AdobeLogger.log(Level.DEBUG, "ImageSession", "inputs " + jSONObject.toString());
        adobeImageOperation.setInputs(jSONObject);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("noiseLevel", Integer.valueOf(i));
            jSONObject2.putOpt("kernelSize", Integer.valueOf(i2));
            jSONObject2.putOpt("maxKernels", Integer.valueOf(i3));
            jSONObject2.putOpt("kernelIndex", Integer.valueOf(i4));
        } catch (JSONException e4) {
            AdobeLogger.log(Level.ERROR, TAG, "", e4);
        }
        adobeImageOperation.setOptions(jSONObject2);
        if (i3 < 1) {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.putOpt("image", adobeImageOutputParameters);
            } catch (JSONException e5) {
                AdobeLogger.log(Level.ERROR, TAG, "", e5);
            }
            adobeImageOperation.setOutputDispositions(jSONObject3);
        } else {
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.putOpt("images", adobeImageOutputParameters);
            } catch (JSONException e6) {
                AdobeLogger.log(Level.ERROR, TAG, "", e6);
            }
            adobeImageOperation.setOutputDispositions(jSONObject4);
        }
        return performImageOperation("deblur", adobeImageOperation, iAdobeImageRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpTaskHandle contentAwareFill(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceItem adobeStorageResourceItem2, AdobeImageFillType adobeImageFillType, AdobeImageOutputParameters adobeImageOutputParameters, AdobeImageOutputParameters adobeImageOutputParameters2, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        AdobeImageOperation adobeImageOperation = new AdobeImageOperation();
        AdobeStorageResourceItem adobeStorageResourceItem3 = new AdobeStorageResourceItem(adobeStorageResourceItem);
        if (adobeStorageResourceItem3.href.toString().charAt(0) != '/') {
            try {
                adobeStorageResourceItem3.href = new URI(URIUtil.SLASH + adobeStorageResourceItem3.href.toString());
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, TAG, "", e2);
            }
        }
        JSONObject jSONObject = new JSONObject();
        if (adobeStorageResourceItem2 != null && imageInputIsValid(adobeStorageResourceItem2)) {
            AdobeStorageResourceItem adobeStorageResourceItem4 = new AdobeStorageResourceItem(adobeStorageResourceItem2);
            if (adobeStorageResourceItem4.href.toString().charAt(0) != '/') {
                try {
                    adobeStorageResourceItem4.href = new URI(URIUtil.SLASH + adobeStorageResourceItem4.href.toString());
                } catch (Exception e3) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e3);
                }
            }
            try {
                jSONObject.putOpt("image", adobeStorageResourceItem3);
                jSONObject.putOpt("mask", adobeStorageResourceItem4);
            } catch (JSONException e4) {
                AdobeLogger.log(Level.ERROR, TAG, "", e4);
            }
        } else {
            try {
                jSONObject.putOpt("image", adobeStorageResourceItem3);
            } catch (JSONException e5) {
                AdobeLogger.log(Level.ERROR, TAG, "", e5);
            }
        }
        adobeImageOperation.setInputs(jSONObject);
        boolean z = adobeImageOutputParameters.disposition != AdobeImageOutputDispositionType.AdobeImageOutputDispositionNone;
        Object objConvertFillType = convertFillType(adobeImageFillType);
        if (objConvertFillType == null) {
            HashMap map2 = new HashMap();
            map2.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Unknown fill type");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map2), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        boolean z2 = (adobeImageOutputParameters2 == null || adobeImageOutputParameters2.disposition == AdobeImageOutputDispositionType.AdobeImageOutputDispositionNone) ? false : true;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("fillType", objConvertFillType);
            jSONObject2.putOpt("outputNNF", Boolean.valueOf(z2));
            jSONObject2.putOpt("outputImage", Boolean.valueOf(z));
        } catch (JSONException e6) {
            AdobeLogger.log(Level.ERROR, TAG, "", e6);
        }
        adobeImageOperation.setOptions(jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.putOpt("image", adobeImageOutputParameters);
            if (z2) {
                adobeImageOutputParameters2.mediaRange = "*";
                jSONObject3.putOpt("nnf", adobeImageOutputParameters2);
            }
        } catch (JSONException e7) {
            AdobeLogger.log(Level.ERROR, TAG, "", e7);
        }
        adobeImageOperation.setOutputDispositions(jSONObject3);
        return performImageOperation("contentawarefill", adobeImageOperation, iAdobeImageRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpTaskHandle describePSD(AdobeStorageResourceItem adobeStorageResourceItem, AdobeImageOutputParameters adobeImageOutputParameters, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        AdobeImageOperation adobeImageOperation = new AdobeImageOperation();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("image", adobeStorageResourceItem);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
        }
        adobeImageOperation.setInputs(jSONObject);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("output", adobeImageOutputParameters);
        } catch (JSONException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
        }
        adobeImageOperation.setOutputDispositions(jSONObject2);
        return performImageOperation("introspect", adobeImageOperation, iAdobeImageRequestCompletionHandler, handler);
    }

    public AdobeStorageResourceItem getManifest(final AdobeStorageResourceItem adobeStorageResourceItem, String str, String str2) throws AdobeCSDKException {
        if (!$assertionsDisabled && adobeStorageResourceItem == null) {
            throw new AssertionError("Param 'resource' must not be null");
        }
        if (!$assertionsDisabled && !imageInputIsValid(adobeStorageResourceItem)) {
            throw new AssertionError("resource is invalid");
        }
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final boolean[] zArr = {false};
        final AdobeStorageResourceItem[] adobeStorageResourceItemArr = {null};
        final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
        getManifest(adobeStorageResourceItem, str, str2, new IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem2) {
                reentrantLock.lock();
                adobeStorageResourceItemArr[0] = adobeStorageResourceItem2;
                zArr[0] = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                adobeCSDKExceptionArr[0] = adobeCSDKException;
                adobeStorageResourceItemArr[0] = adobeStorageResourceItem;
                zArr[0] = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
                reentrantLock.lock();
                zArr[0] = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        }, null);
        reentrantLock.lock();
        while (!zArr[0]) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (adobeCSDKExceptionArr[0] != null) {
            throw adobeCSDKExceptionArr[0];
        }
        return adobeStorageResourceItemArr[0];
    }

    String percentEncode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
            return null;
        }
    }

    public AdobeNetworkHttpTaskHandle getManifest(final AdobeStorageResourceItem adobeStorageResourceItem, String str, String str2, final IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        URL url;
        URL url2;
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("Param 'psdHref' must not be null");
        }
        if (!$assertionsDisabled && !imageHrefIsValid(str)) {
            throw new AssertionError("psdHref is invalid");
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError("Param 'compositeHref' must not be null");
        }
        if (!$assertionsDisabled && !imageHrefIsValid(str2)) {
            throw new AssertionError("compositeHref is invalid");
        }
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeGenericRequestCallback, handler);
            return null;
        }
        if (getService() == null) {
            if (iAdobeGenericRequestCallback == null) {
                AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.2
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericRequestCallback.onError(adobeNetworkException);
                    }
                });
                return null;
            }
            iAdobeGenericRequestCallback.onError(adobeNetworkException);
            return null;
        }
        final AdobeNetworkException adobeNetworkExceptionCheckEntitlements = checkEntitlements();
        if (adobeNetworkExceptionCheckEntitlements != null) {
            if (iAdobeGenericRequestCallback != null) {
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.3
                        @Override // java.lang.Runnable
                        public void run() {
                            iAdobeGenericRequestCallback.onError(adobeNetworkExceptionCheckEntitlements);
                        }
                    });
                    return null;
                }
                iAdobeGenericRequestCallback.onError(adobeNetworkExceptionCheckEntitlements);
                return null;
            }
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), "Entitlement Check failed", adobeNetworkExceptionCheckEntitlements);
            return null;
        }
        try {
            URL url3 = new URL(AdobeStorageLastPathComponentUtil.getRelativeTo(AdobeAssetFileExtensions.kAdobeFileExtensionTypePSD, getService().baseURL().toString()));
            try {
                url = new URL(AdobeStorageLastPathComponentUtil.getRelativeTo(AdobeStorageUtils.encodeURL(str), url3.toString()));
                try {
                    url = new URL(AdobeStorageLastPathComponentUtil.getRelativeTo("manifest", url.toString()));
                } catch (MalformedURLException e2) {
                    e = e2;
                    AdobeLogger.log(Level.ERROR, TAG, "", e);
                }
            } catch (MalformedURLException e3) {
                e = e3;
                url = url3;
            }
            try {
                URI uri = url.toURI();
                String str3 = "dcx=" + percentEncode(str2);
                url2 = (!str3.isEmpty() ? new URI(uri.toString() + "?" + str3) : uri).toURL();
            } catch (MalformedURLException | URISyntaxException e4) {
                AdobeLogger.log(Level.ERROR, TAG, "", e4);
                url2 = url;
            }
            final AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url2);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            AdobeNetworkHttpTaskHandle responseForDataRequest = getService().getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.4
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobeNetworkException adobeNetworkException2;
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    if (statusCode == 200 || statusCode == 304) {
                        if (statusCode == 200) {
                            adobeStorageResourceItem.setData(adobeNetworkHttpResponse.getDataBytes());
                            Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                            String str4 = (headers == null || !headers.containsKey("etag")) ? null : headers.get("etag").get(0);
                            if (str4 != null) {
                                adobeStorageResourceItem.etag = str4;
                                iAdobeGenericRequestCallback.onCompletion(adobeStorageResourceItem);
                                adobeNetworkException2 = null;
                            } else {
                                HashMap map2 = new HashMap();
                                map2.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Missing header field 'etag'");
                                adobeNetworkException2 = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map2);
                                iAdobeGenericRequestCallback.onError(adobeNetworkException2);
                            }
                        } else {
                            adobeNetworkException2 = null;
                        }
                    } else {
                        adobeNetworkException2 = AdobeImageSession.this.errorFromResponse(adobeNetworkHttpResponse);
                    }
                    if (adobeNetworkException2 != null) {
                        iAdobeGenericRequestCallback.onError(adobeNetworkException2);
                    }
                    AdobeImageSession.this.requestMap.remove(adobeNetworkHttpRequest);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException2) {
                    Object objCreateStorageError = adobeNetworkException2;
                    if (adobeNetworkException2 != null) {
                        HashMap<String, Object> data = adobeNetworkException2.getData();
                        objCreateStorageError = adobeNetworkException2;
                        if (data != null) {
                            Object obj = adobeNetworkException2.getData().get("Response");
                            objCreateStorageError = adobeNetworkException2;
                            if (obj != null) {
                                AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException2.getData().get("Response");
                                objCreateStorageError = adobeNetworkException2;
                                if (adobeNetworkHttpResponse.getStatusCode() == 404) {
                                    objCreateStorageError = adobeNetworkException2;
                                    if (!AdobeNetworkReachabilityUtil.isOnline()) {
                                        objCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorOffline, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
                                    }
                                }
                            }
                        }
                    }
                    iAdobeGenericRequestCallback.onError(objCreateStorageError);
                }
            }, handler);
            this.requestMap.put(adobeNetworkHttpRequest, responseForDataRequest);
            return responseForDataRequest;
        } catch (MalformedURLException e5) {
            AdobeLogger.log(Level.ERROR, TAG, "", e5);
            return null;
        }
    }

    AdobeAssetException getAssetErrorFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        int statusCode;
        Object dataBytes;
        URL url;
        Map<String, List<String>> headers = null;
        HashMap map = new HashMap();
        if (adobeNetworkHttpResponse == null) {
            statusCode = -1;
            dataBytes = "[no data]";
            url = null;
        } else {
            adobeNetworkHttpResponse.getStatusCode();
            url = adobeNetworkHttpResponse.getUrl();
            statusCode = adobeNetworkHttpResponse.getStatusCode();
            dataBytes = adobeNetworkHttpResponse.getDataBytes();
            headers = adobeNetworkHttpResponse.getHeaders();
        }
        if (url != null) {
            map.put(AdobeAssetKeys.ADOBE_ASSET_REQUEST_URL_STRING_KEY, url);
        }
        map.put("AdobeNetworkHTTPStatus", Integer.valueOf(statusCode));
        map.put(AdobeAssetKeys.ADOBE_ASSET_RESPONSE_DATA_KEY, dataBytes);
        if (headers != null) {
            map.put(AdobeAssetKeys.ADOBE_ASSET_RESPONSE_HEADERS_KEY, headers);
        }
        return new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, map);
    }

    public AdobeNetworkHttpTaskHandle updatePSDAt(String str, final AdobeStorageResourceItem adobeStorageResourceItem, String str2, boolean z, final IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        URL url;
        URL url2;
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem) || str == null || !imageHrefIsValid(str) || str2 == null || !imageHrefIsValid(str2)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeGenericRequestCallback, handler);
            return null;
        }
        if (getService() == null) {
            if (iAdobeGenericRequestCallback == null) {
                AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.5
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericRequestCallback.onError(adobeNetworkException);
                    }
                });
                return null;
            }
            iAdobeGenericRequestCallback.onError(adobeNetworkException);
            return null;
        }
        final AdobeNetworkException adobeNetworkExceptionCheckEntitlements = checkEntitlements();
        if (adobeNetworkExceptionCheckEntitlements != null) {
            if (iAdobeGenericRequestCallback != null) {
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.6
                        @Override // java.lang.Runnable
                        public void run() {
                            iAdobeGenericRequestCallback.onError(adobeNetworkExceptionCheckEntitlements);
                        }
                    });
                    return null;
                }
                iAdobeGenericRequestCallback.onError(adobeNetworkExceptionCheckEntitlements);
                return null;
            }
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), "Entitlement Check failed", adobeNetworkExceptionCheckEntitlements);
            return null;
        }
        try {
            URL url3 = new URL(AdobeStorageLastPathComponentUtil.getRelativeTo(AdobeAssetFileExtensions.kAdobeFileExtensionTypePSD, getService().baseURL().toString()));
            try {
                url = new URL(AdobeStorageLastPathComponentUtil.getRelativeTo(AdobeStorageUtils.encodeURL(str), url3.toString()));
            } catch (MalformedURLException e2) {
                e = e2;
                url = url3;
            }
            try {
                url = new URL(AdobeStorageLastPathComponentUtil.getRelativeTo("manifest", url.toString()));
            } catch (MalformedURLException e3) {
                e = e3;
                AdobeLogger.log(Level.ERROR, TAG, "", e);
            }
            try {
                URI uri = url.toURI();
                String str3 = "dcx=" + percentEncode(str2);
                url2 = (!str3.isEmpty() ? new URI(uri.toString() + "?" + str3) : uri).toURL();
            } catch (MalformedURLException | URISyntaxException e4) {
                AdobeLogger.log(Level.ERROR, TAG, "", e4);
                url2 = url;
            }
            final AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url2);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT);
            String str4 = adobeStorageResourceItem.etag;
            if (str4 != null || z) {
                if (z) {
                    str4 = "*";
                }
                adobeNetworkHttpRequest.setRequestProperty("If-Match", str4);
            }
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", adobeStorageResourceItem.type);
            adobeNetworkHttpRequest.setBody(adobeStorageResourceItem.getData());
            AdobeNetworkHttpTaskHandle responseForDataRequest = getService().getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.7
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobeNetworkException adobeNetworkException2;
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    if (statusCode == 200 || statusCode == 201) {
                        adobeStorageResourceItem.setData(adobeNetworkHttpResponse.getDataBytes());
                        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                        String str5 = (headers == null || !headers.containsKey("etag")) ? null : headers.get("etag").get(0);
                        if (str5 != null) {
                            adobeStorageResourceItem.etag = str5;
                            iAdobeGenericRequestCallback.onCompletion(adobeStorageResourceItem);
                            adobeNetworkException2 = null;
                        } else {
                            HashMap map2 = new HashMap();
                            map2.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Missing header field 'etag'");
                            adobeNetworkException2 = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map2);
                            iAdobeGenericRequestCallback.onError(adobeNetworkException2);
                        }
                    } else {
                        adobeNetworkException2 = AdobeImageSession.this.errorFromResponse(adobeNetworkHttpResponse);
                    }
                    if (adobeNetworkException2 != null) {
                        iAdobeGenericRequestCallback.onError(adobeNetworkException2);
                    }
                    AdobeImageSession.this.requestMap.remove(adobeNetworkHttpRequest);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException2) {
                    Object objCreateStorageError = adobeNetworkException2;
                    if (adobeNetworkException2 != null) {
                        HashMap<String, Object> data = adobeNetworkException2.getData();
                        objCreateStorageError = adobeNetworkException2;
                        if (data != null) {
                            Object obj = adobeNetworkException2.getData().get("Response");
                            objCreateStorageError = adobeNetworkException2;
                            if (obj != null) {
                                AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException2.getData().get("Response");
                                objCreateStorageError = adobeNetworkException2;
                                if (adobeNetworkHttpResponse.getStatusCode() == 404) {
                                    objCreateStorageError = adobeNetworkException2;
                                    if (!AdobeNetworkReachabilityUtil.isOnline()) {
                                        objCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorOffline, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
                                    }
                                }
                            }
                        }
                    }
                    iAdobeGenericRequestCallback.onError(objCreateStorageError);
                }
            }, handler);
            this.requestMap.put(adobeNetworkHttpRequest, responseForDataRequest);
            return responseForDataRequest;
        } catch (MalformedURLException e5) {
            AdobeLogger.log(Level.ERROR, TAG, "", e5);
            return null;
        }
    }

    public AdobeNetworkHttpTaskHandle createAI(AdobeImageOutputParameters adobeImageOutputParameters, List<AdobeStorageResourceItem> list, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (list == null || !imageInputIsValid(list.get(0))) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        AdobeImageOperation adobeImageOperation = new AdobeImageOperation();
        URI uri = list.get(0).href;
        if (!$assertionsDisabled && !imageHrefIsValid(uri.toString())) {
            throw new AssertionError();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("manifest", uri);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
        }
        adobeImageOperation.setInputs(jSONObject);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("aifile", adobeImageOutputParameters);
        } catch (JSONException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
        }
        adobeImageOperation.setOutputDispositions(jSONObject2);
        return performImageOperation("createai", adobeImageOperation, iAdobeImageRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpTaskHandle render(AdobeStorageResourceItem adobeStorageResourceItem, Number number, String str, Number number2, Number number3, Number number4, AdobeImageFitType adobeImageFitType, Number number5, Number number6, String str2, AdobeImageOutputParameters adobeImageOutputParameters, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (adobeStorageResourceItem == null || !imageInputIsValid(adobeStorageResourceItem)) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "image null or not valid");
            callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map), iAdobeImageRequestCompletionHandler, handler);
            return null;
        }
        AdobeImageOperation adobeImageOperation = new AdobeImageOperation();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("image", adobeStorageResourceItem);
            adobeImageOperation.setInputs(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            if (number2 != null) {
                jSONObject2.put("scale", number2);
            }
            if (number3 != null) {
                jSONObject2.put("width", number3);
            }
            if (number4 != null) {
                jSONObject2.put("height", number4);
            }
            if (adobeImageFitType != null) {
                String strConvertFitModeType = convertFitModeType(adobeImageFitType);
                if (strConvertFitModeType == null) {
                    HashMap map2 = new HashMap();
                    map2.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Unknown fit type");
                    callCompletionHandler(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map2), iAdobeImageRequestCompletionHandler, handler);
                    return null;
                }
                jSONObject2.put("fit", strConvertFitModeType);
            }
            if (number != null) {
                jSONObject2.put("layerID", number);
            }
            if (str != null) {
                jSONObject2.put("layerName", str);
            }
            if (number5 != null) {
                jSONObject2.put("layerCompIndex", number5);
            }
            if (number6 != null) {
                jSONObject2.put("layerCompID", number6);
            }
            if (str2 != null) {
                jSONObject2.put("layerCompName", str2);
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("image", adobeImageOutputParameters);
            adobeImageOperation.setOptions(jSONObject2);
            adobeImageOperation.setInputs(jSONObject);
            adobeImageOperation.setOutputDispositions(jSONObject3);
            return performImageOperation("render", adobeImageOperation, iAdobeImageRequestCompletionHandler, handler);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
            return null;
        }
    }

    void callCompletionHandler(final AdobeNetworkException adobeNetworkException, final IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.8
            @Override // java.lang.Runnable
            public void run() {
                if (iAdobeImageRequestCompletionHandler != null) {
                    iAdobeImageRequestCompletionHandler.onError(adobeNetworkException);
                }
            }
        };
        if (handler != null) {
            handler.post(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    void callCompletionHandler(final AdobeNetworkException adobeNetworkException, final IAdobeGenericRequestCallback iAdobeGenericRequestCallback, Handler handler) {
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.9
            @Override // java.lang.Runnable
            public void run() {
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onError(adobeNetworkException);
                }
            }
        };
        if (handler != null) {
            handler.post(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    AdobeNetworkException errorFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        if (adobeNetworkHttpResponse.getStatusCode() == 400) {
            HashMap map = new HashMap();
            map.put("AdobeNetworkHTTPStatus", 400);
            return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map);
        }
        if (adobeNetworkHttpResponse.getStatusCode() == 401) {
            return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorAuthenticationFailed, null);
        }
        return null;
    }

    protected synchronized String createTmpDir() {
        String strConcat;
        strConcat = FilenameUtils.concat(FileUtils.getTempDirectoryPath(), "ImageSessionTemp");
        File file = new File(strConcat);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (file.exists()) {
            this.imageSessionTmpDir = strConcat;
        }
        if (!file.exists()) {
            strConcat = null;
        }
        return strConcat;
    }

    private String createTmpFile() {
        return FilenameUtils.concat(this.imageSessionTmpDir, "temp" + AdobeStorageUtils.generateUuid());
    }

    AdobeNetworkHttpTaskHandle performImageOperation(String str, final AdobeImageOperation adobeImageOperation, final IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler, Handler handler) {
        if (getService() == null) {
            if (iAdobeImageRequestCompletionHandler == null) {
                AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.10
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeImageRequestCompletionHandler.onError(adobeNetworkException);
                    }
                });
                return null;
            }
            iAdobeImageRequestCompletionHandler.onError(adobeNetworkException);
            return null;
        }
        final AdobeNetworkException adobeNetworkExceptionCheckEntitlements = checkEntitlements();
        if (adobeNetworkExceptionCheckEntitlements != null) {
            if (iAdobeImageRequestCompletionHandler != null) {
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.11
                        @Override // java.lang.Runnable
                        public void run() {
                            iAdobeImageRequestCompletionHandler.onError(adobeNetworkExceptionCheckEntitlements);
                        }
                    });
                    return null;
                }
                iAdobeImageRequestCompletionHandler.onError(adobeNetworkExceptionCheckEntitlements);
                return null;
            }
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), "Entitlement Check failed", adobeNetworkExceptionCheckEntitlements);
            return null;
        }
        final String strCreateTmpFile = createTmpFile();
        final String strCreateTmpFile2 = createTmpFile();
        final AdobeNetworkHttpRequest adobeNetworkHttpRequestCreateImageServiceRequestWithURLString = adobeImageOperation.createImageServiceRequestWithURLString(str, getService().baseURL(), strCreateTmpFile2);
        AdobeNetworkHttpTaskHandle responseForDownloadRequest = getService().getResponseForDownloadRequest(adobeNetworkHttpRequestCreateImageServiceRequestWithURLString, strCreateTmpFile, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.12
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                AdobeLogger.log(Level.DEBUG, AdobeImageSession.TAG, "onSuccess : " + statusCode);
                if (statusCode == 200 || statusCode == 201 || statusCode == 204) {
                    try {
                        AdobeImageOperation adobeImageOperationImageOperationWithImageServiceResponseFile = AdobeImageOperation.imageOperationWithImageServiceResponseFile(strCreateTmpFile, adobeImageOperation, adobeNetworkHttpResponse);
                        AdobeImageSession.deleteTempFiles(strCreateTmpFile, strCreateTmpFile2);
                        AdobeImageSession.this.requestMap.remove(adobeNetworkHttpRequestCreateImageServiceRequestWithURLString);
                        iAdobeImageRequestCompletionHandler.onComplete(adobeImageOperationImageOperationWithImageServiceResponseFile);
                        return;
                    } catch (AdobeNetworkException | AdobeAssetException | FileNotFoundException e2) {
                        AdobeLogger.log(Level.ERROR, AdobeImageSession.TAG, "", e2);
                        return;
                    }
                }
                AdobeImageSession.deleteTempFiles(strCreateTmpFile, strCreateTmpFile2);
                iAdobeImageRequestCompletionHandler.onError(AdobeImageSession.this.errorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException2) {
                AdobeLogger.log(Level.ERROR, AdobeImageSession.TAG, "exception : " + adobeNetworkException2.getMessage());
                AdobeImageSession.deleteTempFiles(strCreateTmpFile, strCreateTmpFile2);
                iAdobeImageRequestCompletionHandler.onError(adobeNetworkException2);
            }
        }, handler);
        this.requestMap.put(adobeNetworkHttpRequestCreateImageServiceRequestWithURLString, responseForDownloadRequest);
        responseForDownloadRequest.registerListener(new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.13
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
            public void onProgressNotification(double d2) {
                iAdobeImageRequestCompletionHandler.onProgress(d2);
            }
        });
        return responseForDownloadRequest;
    }

    static void deleteTempFiles(String str, String str2) {
        File file = new File(str);
        if (file.exists() && !file.delete()) {
            AdobeLogger.log(Level.ERROR, TAG, "unable to delete " + str);
        }
        File file2 = new File(str2);
        if (file2.exists() && !file2.delete()) {
            AdobeLogger.log(Level.ERROR, TAG, "unable to delete " + str2);
        }
    }

    static String convertAdjustType(AdobeImageAdjustType adobeImageAdjustType) {
        switch (adobeImageAdjustType) {
            case AdobeImageFullAdjust:
                return "full";
            case AdobeImageEyeLevelAdjust:
                return "eye_level";
            case AdobeImageNoPerspectiveAdjust:
                return "no_perspective";
            case AdobeImageRectificationAdjust:
                return "rectification";
            case AdobeImageAdjustAll:
                return "all";
            default:
                return null;
        }
    }

    static String convertCalibrateType(AdobeImageCalibrateType adobeImageCalibrateType) {
        switch (adobeImageCalibrateType) {
            case AdobeImageCalibrateAll:
                return "all";
            case AdobeImageCalibrateAllFixCop:
                return "allfix_cop";
            case AdobeImageCalibrateAllFixK:
                return "allfix_k";
            default:
                return null;
        }
    }

    static String convertCropType(AdobeImageCropType adobeImageCropType) {
        switch (adobeImageCropType) {
            case AdobeImageNoCrop:
                return "nocrop";
            case AdobeImageCropToFit:
                return "cropToFit";
            case AdobeImageSmartFillCrop:
                return "smartFill";
            default:
                return null;
        }
    }

    static String convertFillType(AdobeImageFillType adobeImageFillType) {
        switch (adobeImageFillType) {
            case AdobeImageRegularFill:
                return "regular";
            case AdobeImageGBFill:
                return "gb";
            case AdobeImageGBLFill:
                return "gbl";
            case AdobeImageLBCFill:
                return "lbc";
            default:
                return null;
        }
    }

    private static String convertFitModeType(AdobeImageFitType adobeImageFitType) {
        switch (adobeImageFitType) {
            case AdobeImageFit:
                return "fit";
            case AdobeImageConstrain:
                return "constrain";
            case AdobeImageCrop:
                return "crop";
            case AdobeImageWrap:
                return "wrap";
            case AdobeImageStretch:
                return "stretch";
            case AdobeImageHFit:
                return "hfit";
            case AdobeImageVFit:
                return "vfit";
            default:
                return null;
        }
    }

    static boolean imageHrefIsValid(String str) {
        return !str.matches("(^[\\/]$|^\\/\\/.*)") && str.length() > 0;
    }

    static boolean imageInputIsValid(AdobeStorageResourceItem adobeStorageResourceItem) {
        if (adobeStorageResourceItem.href != null) {
            return imageHrefIsValid(adobeStorageResourceItem.href.toString());
        }
        if (adobeStorageResourceItem.getPath() != null && !new File(adobeStorageResourceItem.getPath()).exists()) {
            return false;
        }
        return true;
    }

    private static long getTotalPhysicalMemory() {
        if (totalPhysicalMemory == -1) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile("/proc/meminfo", "r");
                Matcher matcher = Pattern.compile("(\\d+)").matcher(randomAccessFile.readLine());
                String strGroup = "";
                while (matcher.find()) {
                    strGroup = matcher.group(1);
                }
                randomAccessFile.close();
                totalPhysicalMemory = (long) Double.parseDouble(strGroup);
            } catch (IOException e2) {
                AdobeLogger.log(Level.ERROR, TAG, "", e2);
            }
        }
        return totalPhysicalMemory;
    }

    private AdobeNetworkException checkEntitlements() {
        AdobeEntitlementServices sharedServices = AdobeEntitlementServices.getSharedServices();
        if (sharedServices.getServices() == null || sharedServices.getServices().optJSONObject("image") == null || sharedServices.getServices().optJSONObject("image").optBoolean("entitled")) {
            return null;
        }
        return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService);
    }

    public AdobeNetworkHttpRequest createPSD(@NonNull AdobeStorageResourceItem adobeStorageResourceItem, AdobeAGCManifest adobeAGCManifest, AdobeAGCImageComponents adobeAGCImageComponents, boolean z, Handler handler, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler) {
        return createAGCFile(adobeStorageResourceItem, adobeAGCManifest, AdobeAGCCreationType.ADOBE_AGC_CREATION_TYPE_PSD, adobeAGCImageComponents, z, handler, iAdobeImageRequestCompletionHandler);
    }

    public AdobeNetworkHttpRequest createAI(@NonNull AdobeStorageResourceItem adobeStorageResourceItem, AdobeAGCManifest adobeAGCManifest, AdobeAGCImageComponents adobeAGCImageComponents, boolean z, Handler handler, IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler) {
        return createAGCFile(adobeStorageResourceItem, adobeAGCManifest, AdobeAGCCreationType.ADOBE_AGC_CREATION_TYPE_AI, adobeAGCImageComponents, z, handler, iAdobeImageRequestCompletionHandler);
    }

    private AdobeNetworkHttpRequest createAGCFile(@NonNull final AdobeStorageResourceItem adobeStorageResourceItem, AdobeAGCManifest adobeAGCManifest, AdobeAGCCreationType adobeAGCCreationType, AdobeAGCImageComponents adobeAGCImageComponents, boolean z, Handler handler, final IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler) {
        final String str;
        String str2;
        try {
            HashMap map = new HashMap();
            ArrayList<AdobeMultiPartData> arrayList = new ArrayList<>();
            String str3 = String.format("Boundary_%s", AdobeStorageUtils.generateUuid());
            String str4 = String.format("cid:%s@adobe.com", AdobeStorageUtils.generateUuid());
            AdobeMultiPartData adobeMultiPartData = new AdobeMultiPartData();
            adobeMultiPartData.setContentType(adobeAGCManifest.getContentType());
            adobeMultiPartData.setData(adobeAGCManifest.getData().toString().getBytes("UTF-8"));
            adobeMultiPartData.setContentID(str4);
            arrayList.add(adobeMultiPartData);
            map.put("manifest", str4);
            if (adobeAGCImageComponents != null) {
                int size = adobeAGCImageComponents.getSize();
                for (int i = 0; i < size; i++) {
                    AdobeAGCImageComponent imageComponent = adobeAGCImageComponents.getImageComponent(i);
                    String str5 = String.format("cid:%s@adobe.com", AdobeStorageUtils.generateUuid());
                    if (imageComponent.getSourcePath() != null) {
                        AdobeMultiPartData adobeMultiPartData2 = new AdobeMultiPartData();
                        adobeMultiPartData2.setSourcePath(imageComponent.getSourcePath());
                        adobeMultiPartData2.setContentID(str5);
                        adobeMultiPartData2.setContentType(imageComponent.getContentType());
                        adobeMultiPartData2.setName(getFileNameFromPath(imageComponent.getHref()));
                        arrayList.add(adobeMultiPartData2);
                        map.put(imageComponent.getHref(), str5);
                    } else if (imageComponent.getData() != null) {
                        AdobeMultiPartData adobeMultiPartData3 = new AdobeMultiPartData();
                        adobeMultiPartData3.setData(imageComponent.getData());
                        adobeMultiPartData3.setContentID(str5);
                        adobeMultiPartData3.setContentType(imageComponent.getContentType());
                        adobeMultiPartData3.setName(getFileNameFromPath(imageComponent.getHref()));
                        arrayList.add(adobeMultiPartData3);
                        String href = imageComponent.getHref();
                        if (!href.startsWith(URIUtil.SLASH)) {
                            href = URIUtil.SLASH + href;
                        }
                        map.put(href, str5);
                    } else if (imageComponent.getFile() != null) {
                        String string = imageComponent.getFile().getHref().toString();
                        if (!string.startsWith(URIUtil.SLASH)) {
                            string = URIUtil.SLASH + string;
                        }
                        map.put(string, string);
                    } else {
                        AdobeLogger.log(Level.WARN, "Invalid Image Component", String.format("Skipping :- Invalid Image Component %s", imageComponent.toString()));
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            for (String str6 : map.keySet()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("href", map.get(str6));
                jSONObject2.put(str6, jSONObject3);
            }
            switch (adobeAGCCreationType) {
                case ADOBE_AGC_CREATION_TYPE_AI:
                    str = "aifile";
                    str2 = "createai";
                    break;
                case ADOBE_AGC_CREATION_TYPE_PSD:
                    str = "image";
                    str2 = "createpsd";
                    break;
                default:
                    str = "unknown";
                    str2 = null;
                    break;
            }
            jSONObject.put(AdobeImageOperation.INPUTS, jSONObject2);
            String string2 = adobeStorageResourceItem.href.toString();
            if (!string2.startsWith(URIUtil.SLASH)) {
                string2 = URIUtil.SLASH + string2;
            }
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("disposition", "location");
            jSONObject4.put("location", string2);
            if (z) {
                jSONObject4.put("If-Match", "!");
            }
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(str, jSONObject4);
            jSONObject.put(AdobeImageOperation.OUTPUTS, jSONObject5);
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(new URL(getService().baseURL() + URIUtil.SLASH + str2), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, null);
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", String.format("multipart/related; boundary=%s", str3));
            byte[] bytes = jSONObject.toString().getBytes("UTF-8");
            AdobeMultiPartData adobeMultiPartData4 = new AdobeMultiPartData();
            adobeMultiPartData4.setContentType("application/vnd.adobe.image-operation+json");
            adobeMultiPartData4.setData(bytes);
            arrayList.add(0, adobeMultiPartData4);
            getService().getResponseForMultiPartDataRequest(adobeNetworkHttpRequest, str3, arrayList, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession.14
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobeNetworkException networkException;
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    if (statusCode >= 200 && statusCode <= 300) {
                        try {
                            JSONObject jSONObject6 = new JSONObject(adobeNetworkHttpResponse.getDataString());
                            if (jSONObject6 != null) {
                                try {
                                    adobeStorageResourceItem.etag = (String) ((JSONObject) ((JSONObject) jSONObject6.get(AdobeImageOperation.OUTPUTS)).get(str)).opt("if-match");
                                } catch (NullPointerException e2) {
                                    AdobeLogger.log(Level.ERROR, AdobeImageSession.TAG, "", e2);
                                }
                            }
                            iAdobeImageRequestCompletionHandler.onComplete(null);
                            return;
                        } catch (JSONException e3) {
                            AdobeLogger.log(Level.ERROR, AdobeImageSession.TAG, "", e3);
                            iAdobeImageRequestCompletionHandler.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
                            return;
                        }
                    }
                    try {
                        JSONObject jSONObject7 = new JSONObject(adobeNetworkHttpResponse.getDataString());
                        if (jSONObject7 == null) {
                            networkException = AdobeImageSession.this.getNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, "An unexpected response was returned");
                        } else {
                            JSONObject jSONObject8 = (JSONObject) jSONObject7.get("error-response");
                            if (jSONObject8 != null) {
                                String string3 = jSONObject8.getString("message");
                                networkException = "bad_request".equalsIgnoreCase(jSONObject8.getString("reason")) ? AdobeImageSession.this.getNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, string3) : AdobeImageSession.this.getNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, string3);
                            } else {
                                networkException = null;
                            }
                        }
                    } catch (JSONException e4) {
                        networkException = AdobeImageSession.this.getNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, "An unexpected response was returned");
                        AdobeLogger.log(Level.ERROR, AdobeImageSession.TAG, "", e4);
                    }
                    iAdobeImageRequestCompletionHandler.onError(networkException);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeImageRequestCompletionHandler.onError(adobeNetworkException);
                }
            }, handler);
            return adobeNetworkHttpRequest;
        } catch (UnsupportedEncodingException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
            return null;
        } catch (MalformedURLException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
            return null;
        } catch (JSONException e4) {
            AdobeLogger.log(Level.ERROR, TAG, "", e4);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeNetworkException getNetworkException(AdobeNetworkException.AdobeNetworkErrorCode adobeNetworkErrorCode, String str) {
        return null;
    }

    private String getFileNameFromPath(String str) {
        return null;
    }
}
