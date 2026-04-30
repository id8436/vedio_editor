package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.os.Handler;
import android.support.v4.app.NotificationCompat;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOutputParameters;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXElement;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXLocalStorageScheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360MessageCreationException;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360MessageInternal;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360OperationDocument;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchiveItem;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFErrorCode;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import com.google.gdata.data.ILink;
import com.google.gdata.data.docs.DocumentListEntry;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.FileUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public abstract class Adobe360Message {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String ADOBE_360_ACTION_TYPE_CAPTURE;
    public static final String ADOBE_360_ACTION_TYPE_CAPTURE_N;
    public static final String ADOBE_360_ACTION_TYPE_EDIT;
    public static final String ADOBE_360_ACTION_TYPE_EMBED;
    public static final String ADOBE_360_ACTION_TYPE_EMBED_N;
    private static final String ADOBE_360_MESSAGE_ACTION_ID_KEY;
    private static final String ADOBE_360_MESSAGE_ACTION_TYPE_KEY;
    private static final String ADOBE_360_MESSAGE_APP_SPECIFIC_DATA_KEY;
    private static final String ADOBE_360_MESSAGE_NAME;
    private static final String ADOBE_360_MESSAGE_REQUEST_CONTEXT_KEY;
    private static final String ADOBE_360_MESSAGE_RESPONSE_CONTEXT_KEY;
    private static final String ADOBE_360_MESSAGE_ROOT_KEY;
    private static final String ADOBE_360_MESSAGE_STATUS_CODE_KEY;
    private static final String ADOBE_360_MESSAGE_STATUS_KEY;
    private static final String ADOBE_360_MESSAGE_STATUS_REASON_KEY;
    private static final String ADOBE_360_MESSAGE_TRANSPORT_RESERVED_DATA_KEY;
    private static final String ADOBE_360_MESSAGE_TYPE;
    private static final String ADOBE_360_MESSAGE_VERSION_KEY;
    private static int Adobe360MessageCurrentVersion = 0;
    private static final String INPUTS = "inputs";
    public static final String MANIFEST = "manifest";
    public static final String OPERATION_JSON = "operation.json";
    private static final String OUTPUTS = "outputs";
    private static final String PRIMARY = "primary";
    public static final String SNAPSHOT_PATH = "snapshotPath";
    private static String TAG = null;
    private static final String UTF_8 = "UTF-8";
    protected JSONObject mAcceptedMediaTypes;
    protected String mActionId;
    protected String mActionType;
    protected JSONObject mAppSpecificData;
    protected AdobeDCXComposite mComposite;
    protected Adobe360MessageFormat mFormat;
    protected Map<String, Object> mInputAssets;
    protected Map<String, Object> mInputDescriptors;
    protected Map<String, Object> mOutputAssets;
    protected Map<String, Object> mOutputDescriptors;
    protected Adobe360Context mRequestContext;
    protected JSONObject mRequestOptions;
    protected Adobe360Context mResponseContext;
    protected String mResponseReason;
    protected JSONObject mResponseResults;
    protected String mResponseStatusCode;
    protected String mSnapshotPath;
    protected JSONObject mTransportReservedData;

    static {
        $assertionsDisabled = !Adobe360Message.class.desiredAssertionStatus();
        TAG = Adobe360MessageCreationException.Adobe30MessageKey;
        ADOBE_360_ACTION_TYPE_CAPTURE = "capture";
        ADOBE_360_ACTION_TYPE_CAPTURE_N = "captureN";
        ADOBE_360_ACTION_TYPE_EDIT = ILink.Rel.ENTRY_EDIT;
        ADOBE_360_ACTION_TYPE_EMBED = BehanceSDKPublishConstants.KEY_EMBED;
        ADOBE_360_ACTION_TYPE_EMBED_N = "embedN";
        ADOBE_360_MESSAGE_NAME = "360 Message";
        ADOBE_360_MESSAGE_TYPE = "application/vnd.adobe.360-message+dcx";
        ADOBE_360_MESSAGE_ROOT_KEY = "360#message";
        ADOBE_360_MESSAGE_VERSION_KEY = "message-version";
        ADOBE_360_MESSAGE_ACTION_ID_KEY = "action-id";
        ADOBE_360_MESSAGE_ACTION_TYPE_KEY = "action-type";
        ADOBE_360_MESSAGE_STATUS_KEY = NotificationCompat.CATEGORY_STATUS;
        ADOBE_360_MESSAGE_STATUS_CODE_KEY = ProjectHostingService.PROJECTHOSTING_SERVICE;
        ADOBE_360_MESSAGE_STATUS_REASON_KEY = "reason";
        ADOBE_360_MESSAGE_REQUEST_CONTEXT_KEY = "request-context";
        ADOBE_360_MESSAGE_RESPONSE_CONTEXT_KEY = "response-context";
        ADOBE_360_MESSAGE_APP_SPECIFIC_DATA_KEY = "app-specific-data";
        ADOBE_360_MESSAGE_TRANSPORT_RESERVED_DATA_KEY = "transport-reserved-data";
        Adobe360MessageCurrentVersion = 0;
    }

    public enum Adobe360MessageFormat {
        ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED(0),
        ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER(1),
        ADOBE_360_MESSAGE_FORMAT_COMPOSITE(2),
        ADOBE_360_MESSAGE_FORMAT_SNAPSHOT(3),
        ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT(4),
        ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE(5);

        private int val;

        Adobe360MessageFormat(int i) {
            this.val = i;
        }

        public int getValue() {
            return this.val;
        }
    }

    protected Adobe360Message(String str) {
        this.mActionId = str;
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1InitWithTempCompositeImpl] */
    /* JADX WARN: Type inference failed for: r0v46, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1InitWithTempCompositeImpl] */
    /* JADX WARN: Type inference failed for: r0v59, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1InitWithTempCompositeImpl] */
    /* JADX WARN: Type inference failed for: r0v66, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1InitWithTempCompositeImpl] */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1AssetFromManifest] */
    /* JADX WARN: Type inference failed for: r6v6, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1AssetFromManifest] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1AssetFromManifest] */
    /* JADX WARN: Type inference failed for: r9v4, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1AssetFromManifest] */
    protected Adobe360Message(final String str, final AdobeCSDKProgress adobeCSDKProgress) throws AdobeCSDKException {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError(SNAPSHOT_PATH);
        }
        if (!$assertionsDisabled && adobeCSDKProgress == null) {
            throw new AssertionError("parentProgress is null");
        }
        adobeCSDKProgress.updateTotalUnitCount(1L);
        if (adobeCSDKProgress.isCancelled()) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
        }
        final AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(AdobeDCXUtils.stringByAppendingLastPathComponent(str, "manifest"));
        this.mFormat = Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_SNAPSHOT;
        this.mSnapshotPath = str;
        JSONObject jSONObject = (JSONObject) adobeDCXManifestCreateManifestWithContentsOfFile.get(ADOBE_360_MESSAGE_ROOT_KEY);
        if (jSONObject == null) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "The 360#message property is missing from the manifest's root node.");
        }
        if (jSONObject.optInt(ADOBE_360_MESSAGE_VERSION_KEY) != Adobe360MessageCurrentVersion) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorUnknownMessageFormatVersion, null);
        }
        initPropertiesWithMessageDictionary(jSONObject);
        if (adobeCSDKProgress.isCancelled()) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
        }
        Adobe360OperationDocument adobe360OperationDocumentCreateOperationDocumentWithFileAtPath = Adobe360OperationDocument.createOperationDocumentWithFileAtPath(AdobeDCXUtils.stringByAppendingLastPathComponent(str, OPERATION_JSON));
        if (adobe360OperationDocumentCreateOperationDocumentWithFileAtPath == null) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "The operation document could not be read.");
        }
        this.mRequestOptions = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOptions();
        this.mResponseResults = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getResults();
        if (adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getInputs() != null) {
            this.mInputAssets = new HashMap(adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getInputs().length());
            Iterator<String> itKeys = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getInputs().keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object objOpt = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getInputs().opt(next);
                if (objOpt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) objOpt;
                    ArrayList arrayList = new ArrayList(jSONArray.length());
                    for (int i = 0; i < jSONArray.length(); i++) {
                        String strOptString = jSONArray.optString(i);
                        boolean[] zArr = {false};
                        Adobe360Asset adobe360AssetPerform = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1AssetFromManifest
                            Adobe360Asset perform(String str2, String str3, boolean[] zArr2) {
                                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str2, str3);
                                AdobeDCXComponent componentWithAbsolutePath = adobeDCXManifestCreateManifestWithContentsOfFile.getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                                if (componentWithAbsolutePath == null) {
                                    if (adobeDCXManifestCreateManifestWithContentsOfFile.getChildWithAbsolutePath(strStringByAppendingLastPathComponent) != null) {
                                        zArr2[0] = true;
                                        return null;
                                    }
                                    zArr2[0] = false;
                                    return null;
                                }
                                return Adobe360Asset.createAssetWithData(null, componentWithAbsolutePath.getType(), componentWithAbsolutePath.getPath());
                            }
                        }.perform("/inputs", strOptString, zArr);
                        if (adobe360AssetPerform == null) {
                            if (zArr[0]) {
                                Adobe360MessageInternal adobe360MessageInternalPerform = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1InitWithTempCompositeImpl
                                    Adobe360MessageInternal perform() throws AdobeCSDKException {
                                        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                                        File file = new File(strStringByAppendingLastPathComponent);
                                        if (!file.exists()) {
                                            file.mkdirs();
                                        }
                                        final C1OutputWrapper c1OutputWrapper = new C1OutputWrapper();
                                        final ReentrantLock reentrantLock = new ReentrantLock();
                                        final Condition conditionNewCondition = reentrantLock.newCondition();
                                        AdobeDCXCompositeXfer.createCompositeAtPathInternal(strStringByAppendingLastPathComponent, str, null, new IAdobeDCXCreateCompositeCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1InitWithTempCompositeImpl.1
                                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler
                                            public void onSuccess(AdobeDCXComposite adobeDCXComposite, String str2) {
                                                reentrantLock.lock();
                                                c1OutputWrapper.hostComposite = adobeDCXComposite;
                                                c1OutputWrapper.createCompositeFinished = true;
                                                conditionNewCondition.signal();
                                                reentrantLock.unlock();
                                            }

                                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler
                                            public void onFailure(AdobeCSDKException adobeCSDKException) {
                                                reentrantLock.lock();
                                                c1OutputWrapper.error = adobeCSDKException;
                                                c1OutputWrapper.createCompositeFinished = true;
                                                conditionNewCondition.signal();
                                                reentrantLock.unlock();
                                            }
                                        }, adobeCSDKProgress);
                                        reentrantLock.lock();
                                        while (!c1OutputWrapper.createCompositeFinished) {
                                            try {
                                                conditionNewCondition.await();
                                            } catch (InterruptedException e2) {
                                                AdobeLogger.log(Level.ERROR, "", "", e2);
                                            }
                                        }
                                        reentrantLock.unlock();
                                        if (c1OutputWrapper.error != null) {
                                            throw c1OutputWrapper.error;
                                        }
                                        return new Adobe360MessageInternal(c1OutputWrapper.hostComposite, true, adobeCSDKProgress);
                                    }

                                    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper, reason: invalid class name */
                                    class C1OutputWrapper {
                                        AdobeDCXComposite hostComposite = null;
                                        boolean createCompositeFinished = false;
                                        AdobeCSDKException error = null;

                                        C1OutputWrapper() {
                                        }
                                    }
                                }.perform();
                                adobeCSDKProgress.updateCompletedUnitCount(1L);
                                HashMap map = new HashMap();
                                map.put(Adobe360MessageCreationException.Adobe30MessageKey, adobe360MessageInternalPerform);
                                throw new Adobe360MessageCreationException(map);
                            }
                            adobeCSDKProgress.updateCompletedUnitCount(1L);
                            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Input item with path " + AdobeDCXUtils.stringByAppendingLastPathComponent("/inputs", strOptString) + " is missing from the manifest.");
                        }
                        arrayList.add(adobe360AssetPerform);
                    }
                    this.mInputAssets.put(next, arrayList);
                } else {
                    String str2 = (String) objOpt;
                    boolean[] zArr2 = {false};
                    Adobe360Asset adobe360AssetPerform2 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1AssetFromManifest
                        Adobe360Asset perform(String str22, String str3, boolean[] zArr22) {
                            String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str22, str3);
                            AdobeDCXComponent componentWithAbsolutePath = adobeDCXManifestCreateManifestWithContentsOfFile.getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                            if (componentWithAbsolutePath == null) {
                                if (adobeDCXManifestCreateManifestWithContentsOfFile.getChildWithAbsolutePath(strStringByAppendingLastPathComponent) != null) {
                                    zArr22[0] = true;
                                    return null;
                                }
                                zArr22[0] = false;
                                return null;
                            }
                            return Adobe360Asset.createAssetWithData(null, componentWithAbsolutePath.getType(), componentWithAbsolutePath.getPath());
                        }
                    }.perform("/inputs", str2, zArr2);
                    if (adobe360AssetPerform2 == null) {
                        if (zArr2[0]) {
                            Adobe360MessageInternal adobe360MessageInternalPerform2 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1InitWithTempCompositeImpl
                                Adobe360MessageInternal perform() throws AdobeCSDKException {
                                    String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                                    File file = new File(strStringByAppendingLastPathComponent);
                                    if (!file.exists()) {
                                        file.mkdirs();
                                    }
                                    final C1OutputWrapper c1OutputWrapper = new C1OutputWrapper();
                                    final Lock reentrantLock = new ReentrantLock();
                                    final Condition conditionNewCondition = reentrantLock.newCondition();
                                    AdobeDCXCompositeXfer.createCompositeAtPathInternal(strStringByAppendingLastPathComponent, str, null, new IAdobeDCXCreateCompositeCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1InitWithTempCompositeImpl.1
                                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler
                                        public void onSuccess(AdobeDCXComposite adobeDCXComposite, String str22) {
                                            reentrantLock.lock();
                                            c1OutputWrapper.hostComposite = adobeDCXComposite;
                                            c1OutputWrapper.createCompositeFinished = true;
                                            conditionNewCondition.signal();
                                            reentrantLock.unlock();
                                        }

                                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler
                                        public void onFailure(AdobeCSDKException adobeCSDKException) {
                                            reentrantLock.lock();
                                            c1OutputWrapper.error = adobeCSDKException;
                                            c1OutputWrapper.createCompositeFinished = true;
                                            conditionNewCondition.signal();
                                            reentrantLock.unlock();
                                        }
                                    }, adobeCSDKProgress);
                                    reentrantLock.lock();
                                    while (!c1OutputWrapper.createCompositeFinished) {
                                        try {
                                            conditionNewCondition.await();
                                        } catch (InterruptedException e2) {
                                            AdobeLogger.log(Level.ERROR, "", "", e2);
                                        }
                                    }
                                    reentrantLock.unlock();
                                    if (c1OutputWrapper.error != null) {
                                        throw c1OutputWrapper.error;
                                    }
                                    return new Adobe360MessageInternal(c1OutputWrapper.hostComposite, true, adobeCSDKProgress);
                                }

                                /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper, reason: invalid class name */
                                class C1OutputWrapper {
                                    AdobeDCXComposite hostComposite = null;
                                    boolean createCompositeFinished = false;
                                    AdobeCSDKException error = null;

                                    C1OutputWrapper() {
                                    }
                                }
                            }.perform();
                            adobeCSDKProgress.updateCompletedUnitCount(1L);
                            HashMap map2 = new HashMap();
                            map2.put(Adobe360MessageCreationException.Adobe30MessageKey, adobe360MessageInternalPerform2);
                            throw new Adobe360MessageCreationException(map2);
                        }
                        adobeCSDKProgress.updateCompletedUnitCount(1L);
                        throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Input item with path " + AdobeDCXUtils.stringByAppendingLastPathComponent("/inputs", str2) + " is missing from the manifest.");
                    }
                    this.mInputAssets.put(next, adobe360AssetPerform2);
                }
            }
        }
        if (adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputs() != null) {
            this.mOutputAssets = new HashMap(adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputs().length());
            Iterator<String> itKeys2 = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputs().keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                Object objOpt2 = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputs().opt(next2);
                if (objOpt2 instanceof JSONArray) {
                    JSONArray jSONArray2 = (JSONArray) objOpt2;
                    ArrayList arrayList2 = new ArrayList(jSONArray2.length());
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        String strOptString2 = jSONArray2.optString(i2);
                        boolean[] zArr3 = {false};
                        Adobe360Asset adobe360AssetPerform3 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1AssetFromManifest
                            Adobe360Asset perform(String str22, String str3, boolean[] zArr22) {
                                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str22, str3);
                                AdobeDCXComponent componentWithAbsolutePath = adobeDCXManifestCreateManifestWithContentsOfFile.getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                                if (componentWithAbsolutePath == null) {
                                    if (adobeDCXManifestCreateManifestWithContentsOfFile.getChildWithAbsolutePath(strStringByAppendingLastPathComponent) != null) {
                                        zArr22[0] = true;
                                        return null;
                                    }
                                    zArr22[0] = false;
                                    return null;
                                }
                                return Adobe360Asset.createAssetWithData(null, componentWithAbsolutePath.getType(), componentWithAbsolutePath.getPath());
                            }
                        }.perform("/outputs", strOptString2, zArr3);
                        if (adobe360AssetPerform3 == null) {
                            if (zArr3[0]) {
                                Adobe360MessageInternal adobe360MessageInternalPerform3 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1InitWithTempCompositeImpl
                                    Adobe360MessageInternal perform() throws AdobeCSDKException {
                                        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                                        File file = new File(strStringByAppendingLastPathComponent);
                                        if (!file.exists()) {
                                            file.mkdirs();
                                        }
                                        final C1OutputWrapper c1OutputWrapper = new C1OutputWrapper();
                                        final Lock reentrantLock = new ReentrantLock();
                                        final Condition conditionNewCondition = reentrantLock.newCondition();
                                        AdobeDCXCompositeXfer.createCompositeAtPathInternal(strStringByAppendingLastPathComponent, str, null, new IAdobeDCXCreateCompositeCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1InitWithTempCompositeImpl.1
                                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler
                                            public void onSuccess(AdobeDCXComposite adobeDCXComposite, String str22) {
                                                reentrantLock.lock();
                                                c1OutputWrapper.hostComposite = adobeDCXComposite;
                                                c1OutputWrapper.createCompositeFinished = true;
                                                conditionNewCondition.signal();
                                                reentrantLock.unlock();
                                            }

                                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler
                                            public void onFailure(AdobeCSDKException adobeCSDKException) {
                                                reentrantLock.lock();
                                                c1OutputWrapper.error = adobeCSDKException;
                                                c1OutputWrapper.createCompositeFinished = true;
                                                conditionNewCondition.signal();
                                                reentrantLock.unlock();
                                            }
                                        }, adobeCSDKProgress);
                                        reentrantLock.lock();
                                        while (!c1OutputWrapper.createCompositeFinished) {
                                            try {
                                                conditionNewCondition.await();
                                            } catch (InterruptedException e2) {
                                                AdobeLogger.log(Level.ERROR, "", "", e2);
                                            }
                                        }
                                        reentrantLock.unlock();
                                        if (c1OutputWrapper.error != null) {
                                            throw c1OutputWrapper.error;
                                        }
                                        return new Adobe360MessageInternal(c1OutputWrapper.hostComposite, true, adobeCSDKProgress);
                                    }

                                    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper, reason: invalid class name */
                                    class C1OutputWrapper {
                                        AdobeDCXComposite hostComposite = null;
                                        boolean createCompositeFinished = false;
                                        AdobeCSDKException error = null;

                                        C1OutputWrapper() {
                                        }
                                    }
                                }.perform();
                                adobeCSDKProgress.updateCompletedUnitCount(1L);
                                HashMap map3 = new HashMap();
                                map3.put(Adobe360MessageCreationException.Adobe30MessageKey, adobe360MessageInternalPerform3);
                                throw new Adobe360MessageCreationException(map3);
                            }
                            adobeCSDKProgress.updateCompletedUnitCount(1L);
                            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Output item with path " + AdobeDCXUtils.stringByAppendingLastPathComponent("/outputs", strOptString2) + " is missing from the manifest.");
                        }
                        arrayList2.add(adobe360AssetPerform3);
                    }
                    this.mOutputAssets.put(next2, arrayList2);
                } else {
                    String str3 = (String) objOpt2;
                    boolean[] zArr4 = {false};
                    Adobe360Asset adobe360AssetPerform4 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1AssetFromManifest
                        Adobe360Asset perform(String str22, String str32, boolean[] zArr22) {
                            String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str22, str32);
                            AdobeDCXComponent componentWithAbsolutePath = adobeDCXManifestCreateManifestWithContentsOfFile.getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                            if (componentWithAbsolutePath == null) {
                                if (adobeDCXManifestCreateManifestWithContentsOfFile.getChildWithAbsolutePath(strStringByAppendingLastPathComponent) != null) {
                                    zArr22[0] = true;
                                    return null;
                                }
                                zArr22[0] = false;
                                return null;
                            }
                            return Adobe360Asset.createAssetWithData(null, componentWithAbsolutePath.getType(), componentWithAbsolutePath.getPath());
                        }
                    }.perform("/outputs", str3, zArr4);
                    if (adobe360AssetPerform4 == null) {
                        if (zArr4[0]) {
                            Adobe360MessageInternal adobe360MessageInternalPerform4 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1InitWithTempCompositeImpl
                                Adobe360MessageInternal perform() throws AdobeCSDKException {
                                    String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                                    File file = new File(strStringByAppendingLastPathComponent);
                                    if (!file.exists()) {
                                        file.mkdirs();
                                    }
                                    final C1OutputWrapper c1OutputWrapper = new C1OutputWrapper();
                                    final Lock reentrantLock = new ReentrantLock();
                                    final Condition conditionNewCondition = reentrantLock.newCondition();
                                    AdobeDCXCompositeXfer.createCompositeAtPathInternal(strStringByAppendingLastPathComponent, str, null, new IAdobeDCXCreateCompositeCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1InitWithTempCompositeImpl.1
                                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler
                                        public void onSuccess(AdobeDCXComposite adobeDCXComposite, String str22) {
                                            reentrantLock.lock();
                                            c1OutputWrapper.hostComposite = adobeDCXComposite;
                                            c1OutputWrapper.createCompositeFinished = true;
                                            conditionNewCondition.signal();
                                            reentrantLock.unlock();
                                        }

                                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCreateCompositeCompletionHandler
                                        public void onFailure(AdobeCSDKException adobeCSDKException) {
                                            reentrantLock.lock();
                                            c1OutputWrapper.error = adobeCSDKException;
                                            c1OutputWrapper.createCompositeFinished = true;
                                            conditionNewCondition.signal();
                                            reentrantLock.unlock();
                                        }
                                    }, adobeCSDKProgress);
                                    reentrantLock.lock();
                                    while (!c1OutputWrapper.createCompositeFinished) {
                                        try {
                                            conditionNewCondition.await();
                                        } catch (InterruptedException e2) {
                                            AdobeLogger.log(Level.ERROR, "", "", e2);
                                        }
                                    }
                                    reentrantLock.unlock();
                                    if (c1OutputWrapper.error != null) {
                                        throw c1OutputWrapper.error;
                                    }
                                    return new Adobe360MessageInternal(c1OutputWrapper.hostComposite, true, adobeCSDKProgress);
                                }

                                /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper, reason: invalid class name */
                                class C1OutputWrapper {
                                    AdobeDCXComposite hostComposite = null;
                                    boolean createCompositeFinished = false;
                                    AdobeCSDKException error = null;

                                    C1OutputWrapper() {
                                    }
                                }
                            }.perform();
                            adobeCSDKProgress.updateCompletedUnitCount(1L);
                            HashMap map4 = new HashMap();
                            map4.put(Adobe360MessageCreationException.Adobe30MessageKey, adobe360MessageInternalPerform4);
                            throw new Adobe360MessageCreationException(map4);
                        }
                        adobeCSDKProgress.updateCompletedUnitCount(1L);
                        throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Output item with path " + AdobeDCXUtils.stringByAppendingLastPathComponent("/outputs", str3) + " is missing from the manifest.");
                    }
                    this.mOutputAssets.put(next2, adobe360AssetPerform4);
                }
            }
        }
        if (adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputDispositions() != null) {
            this.mAcceptedMediaTypes = new JSONObject();
            for (Map.Entry<String, AdobeImageOutputParameters> entry : adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputDispositions().entrySet()) {
                AdobeImageOutputParameters value = entry.getValue();
                if (value.mediaRange != null) {
                    try {
                        this.mAcceptedMediaTypes.put(entry.getKey(), value.mediaRange);
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.DEBUG, TAG, null, e2);
                    }
                }
            }
        }
        Adobe360Exception adobe360ExceptionValidateWithError = validateWithError();
        if (adobe360ExceptionValidateWithError != null) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw adobe360ExceptionValidateWithError;
        }
        adobeCSDKProgress.updateCompletedUnitCount(1L);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1AssetFromCompositeImpl] */
    /* JADX WARN: Type inference failed for: r2v30, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1AssetFromCompositeImpl] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1AssetFromCompositeImpl] */
    /* JADX WARN: Type inference failed for: r7v2, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1AssetFromCompositeImpl] */
    protected Adobe360Message(final AdobeDCXComposite adobeDCXComposite, boolean z, AdobeCSDKProgress adobeCSDKProgress) throws AdobeCSDKException {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError(SNAPSHOT_PATH);
        }
        if (!$assertionsDisabled && adobeCSDKProgress == null) {
            throw new AssertionError("parentProgress is null");
        }
        adobeCSDKProgress.updateTotalUnitCount(1L);
        if (adobeCSDKProgress.isCancelled()) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
        }
        this.mComposite = adobeDCXComposite;
        this.mFormat = z ? Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE : Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_COMPOSITE;
        JSONObject jSONObject = (JSONObject) adobeDCXComposite.getCurrent().get(ADOBE_360_MESSAGE_ROOT_KEY);
        if (jSONObject == null) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "The 360#message property is missing from the manifest's root node.");
        }
        if (jSONObject.optInt(ADOBE_360_MESSAGE_VERSION_KEY) != Adobe360MessageCurrentVersion) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorUnknownMessageFormatVersion, null);
        }
        initPropertiesWithMessageDictionary(jSONObject);
        if (adobeCSDKProgress.isCancelled()) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
        }
        AdobeDCXComponent componentWithAbsolutePath = adobeDCXComposite.getCurrent().getComponentWithAbsolutePath("/operation.json");
        if (componentWithAbsolutePath == null) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "The operation document component is missing.");
        }
        String pathForComponent = adobeDCXComposite.getCurrent().getPathForComponent(componentWithAbsolutePath);
        if (pathForComponent == null) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "The operation document is missing on disk.");
        }
        Adobe360OperationDocument adobe360OperationDocumentCreateOperationDocumentWithFileAtPath = Adobe360OperationDocument.createOperationDocumentWithFileAtPath(pathForComponent);
        if (adobe360OperationDocumentCreateOperationDocumentWithFileAtPath == null) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "The operation document could not be read.");
        }
        this.mRequestOptions = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOptions();
        this.mResponseResults = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getResults();
        if (adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getInputs() != null) {
            this.mInputAssets = new HashMap(adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getInputs().length());
            Iterator<String> itKeys = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getInputs().keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object objOpt = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getInputs().opt(next);
                if (objOpt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) objOpt;
                    ArrayList arrayList = new ArrayList(jSONArray.length());
                    for (int i = 0; i < jSONArray.length(); i++) {
                        String strOptString = jSONArray.optString(i);
                        Adobe360Asset adobe360AssetPerform = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1AssetFromCompositeImpl
                            Adobe360Asset perform(String str, String str2) {
                                AdobeDCXElement elementWithAbsolutePath;
                                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str, str2);
                                AdobeDCXComponent componentWithAbsolutePath2 = adobeDCXComposite.getCurrent().getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                                if (componentWithAbsolutePath2 != null) {
                                    elementWithAbsolutePath = null;
                                } else {
                                    try {
                                        elementWithAbsolutePath = adobeDCXComposite.getCurrent().getElementWithAbsolutePath(strStringByAppendingLastPathComponent);
                                    } catch (AdobeDCXException e2) {
                                        AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e2);
                                        elementWithAbsolutePath = null;
                                    }
                                }
                                if (componentWithAbsolutePath2 != null) {
                                    return Adobe360Asset.createAssetWithData(null, componentWithAbsolutePath2.getType(), componentWithAbsolutePath2.getPath());
                                }
                                if (elementWithAbsolutePath != null) {
                                    return Adobe360Asset.createAssetWithData(elementWithAbsolutePath, elementWithAbsolutePath.getType(), str2);
                                }
                                return null;
                            }
                        }.perform("/inputs", strOptString);
                        if (adobe360AssetPerform == null) {
                            adobeCSDKProgress.updateCompletedUnitCount(1L);
                            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Input item with path " + AdobeDCXUtils.stringByAppendingLastPathComponent("/inputs", strOptString) + " is missing from the manifest.");
                        }
                        arrayList.add(adobe360AssetPerform);
                    }
                    this.mInputAssets.put(next, arrayList);
                } else {
                    if (!$assertionsDisabled && !(objOpt instanceof String)) {
                        throw new AssertionError("Unexpected input value type.");
                    }
                    String str = (String) objOpt;
                    Adobe360Asset adobe360AssetPerform2 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1AssetFromCompositeImpl
                        Adobe360Asset perform(String str2, String str22) {
                            AdobeDCXElement elementWithAbsolutePath;
                            String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str2, str22);
                            AdobeDCXComponent componentWithAbsolutePath2 = adobeDCXComposite.getCurrent().getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                            if (componentWithAbsolutePath2 != null) {
                                elementWithAbsolutePath = null;
                            } else {
                                try {
                                    elementWithAbsolutePath = adobeDCXComposite.getCurrent().getElementWithAbsolutePath(strStringByAppendingLastPathComponent);
                                } catch (AdobeDCXException e2) {
                                    AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e2);
                                    elementWithAbsolutePath = null;
                                }
                            }
                            if (componentWithAbsolutePath2 != null) {
                                return Adobe360Asset.createAssetWithData(null, componentWithAbsolutePath2.getType(), componentWithAbsolutePath2.getPath());
                            }
                            if (elementWithAbsolutePath != null) {
                                return Adobe360Asset.createAssetWithData(elementWithAbsolutePath, elementWithAbsolutePath.getType(), str22);
                            }
                            return null;
                        }
                    }.perform("/inputs", str);
                    if (adobe360AssetPerform2 == null) {
                        adobeCSDKProgress.updateCompletedUnitCount(1L);
                        throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Input item with path " + AdobeDCXUtils.stringByAppendingLastPathComponent("/inputs", str) + " is missing from the manifest.");
                    }
                    this.mInputAssets.put(next, adobe360AssetPerform2);
                }
            }
        }
        if (adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputs() != null) {
            this.mOutputAssets = new HashMap(adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputs().length());
            Iterator<String> itKeys2 = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputs().keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                Object objOpt2 = adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputs().opt(next2);
                if (objOpt2 instanceof JSONArray) {
                    JSONArray jSONArray2 = (JSONArray) objOpt2;
                    ArrayList arrayList2 = new ArrayList(jSONArray2.length());
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        String strOptString2 = jSONArray2.optString(i2);
                        Adobe360Asset adobe360AssetPerform3 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1AssetFromCompositeImpl
                            Adobe360Asset perform(String str2, String str22) {
                                AdobeDCXElement elementWithAbsolutePath;
                                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str2, str22);
                                AdobeDCXComponent componentWithAbsolutePath2 = adobeDCXComposite.getCurrent().getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                                if (componentWithAbsolutePath2 != null) {
                                    elementWithAbsolutePath = null;
                                } else {
                                    try {
                                        elementWithAbsolutePath = adobeDCXComposite.getCurrent().getElementWithAbsolutePath(strStringByAppendingLastPathComponent);
                                    } catch (AdobeDCXException e2) {
                                        AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e2);
                                        elementWithAbsolutePath = null;
                                    }
                                }
                                if (componentWithAbsolutePath2 != null) {
                                    return Adobe360Asset.createAssetWithData(null, componentWithAbsolutePath2.getType(), componentWithAbsolutePath2.getPath());
                                }
                                if (elementWithAbsolutePath != null) {
                                    return Adobe360Asset.createAssetWithData(elementWithAbsolutePath, elementWithAbsolutePath.getType(), str22);
                                }
                                return null;
                            }
                        }.perform("/outputs", strOptString2);
                        if (adobe360AssetPerform3 == null) {
                            adobeCSDKProgress.updateCompletedUnitCount(1L);
                            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Output item with path " + AdobeDCXUtils.stringByAppendingLastPathComponent("/outputs", strOptString2) + " is missing from the manifest.");
                        }
                        arrayList2.add(adobe360AssetPerform3);
                    }
                    this.mOutputAssets.put(next2, arrayList2);
                } else {
                    if (!$assertionsDisabled && !(objOpt2 instanceof String)) {
                        throw new AssertionError("Unexpected input value type.");
                    }
                    String str2 = (String) objOpt2;
                    Adobe360Asset adobe360AssetPerform4 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1AssetFromCompositeImpl
                        Adobe360Asset perform(String str22, String str222) {
                            AdobeDCXElement elementWithAbsolutePath;
                            String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str22, str222);
                            AdobeDCXComponent componentWithAbsolutePath2 = adobeDCXComposite.getCurrent().getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                            if (componentWithAbsolutePath2 != null) {
                                elementWithAbsolutePath = null;
                            } else {
                                try {
                                    elementWithAbsolutePath = adobeDCXComposite.getCurrent().getElementWithAbsolutePath(strStringByAppendingLastPathComponent);
                                } catch (AdobeDCXException e2) {
                                    AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e2);
                                    elementWithAbsolutePath = null;
                                }
                            }
                            if (componentWithAbsolutePath2 != null) {
                                return Adobe360Asset.createAssetWithData(null, componentWithAbsolutePath2.getType(), componentWithAbsolutePath2.getPath());
                            }
                            if (elementWithAbsolutePath != null) {
                                return Adobe360Asset.createAssetWithData(elementWithAbsolutePath, elementWithAbsolutePath.getType(), str222);
                            }
                            return null;
                        }
                    }.perform("/outputs", str2);
                    if (adobe360AssetPerform4 == null) {
                        adobeCSDKProgress.updateCompletedUnitCount(1L);
                        throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Input item with path " + AdobeDCXUtils.stringByAppendingLastPathComponent("/outputs", str2) + " is missing from the manifest.");
                    }
                    this.mOutputAssets.put(next2, adobe360AssetPerform4);
                }
            }
        }
        if (adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputDispositions() != null) {
            this.mAcceptedMediaTypes = new JSONObject();
            for (Map.Entry<String, AdobeImageOutputParameters> entry : adobe360OperationDocumentCreateOperationDocumentWithFileAtPath.getOutputDispositions().entrySet()) {
                AdobeImageOutputParameters value = entry.getValue();
                if (value.mediaRange != null) {
                    try {
                        this.mAcceptedMediaTypes.put(entry.getKey(), value.mediaRange);
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.DEBUG, TAG, null, e2);
                    }
                }
            }
        }
        Adobe360Exception adobe360ExceptionValidateWithError = validateWithError();
        if (adobe360ExceptionValidateWithError != null) {
            adobeCSDKProgress.updateCompletedUnitCount(1L);
            throw adobe360ExceptionValidateWithError;
        }
        adobeCSDKProgress.updateCompletedUnitCount(1L);
    }

    private void initPropertiesWithMessageDictionary(JSONObject jSONObject) {
        this.mActionId = jSONObject.optString(ADOBE_360_MESSAGE_ACTION_ID_KEY);
        this.mActionType = jSONObject.optString(ADOBE_360_MESSAGE_ACTION_TYPE_KEY);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ADOBE_360_MESSAGE_STATUS_KEY);
        if (jSONObjectOptJSONObject != null) {
            this.mResponseStatusCode = jSONObjectOptJSONObject.optString(ADOBE_360_MESSAGE_STATUS_CODE_KEY);
            this.mResponseReason = jSONObjectOptJSONObject.optString(ADOBE_360_MESSAGE_STATUS_REASON_KEY);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(ADOBE_360_MESSAGE_REQUEST_CONTEXT_KEY);
        if (jSONObjectOptJSONObject2 != null) {
            this.mRequestContext = Adobe360Context.createContextWithDictionary(jSONObjectOptJSONObject2);
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(ADOBE_360_MESSAGE_RESPONSE_CONTEXT_KEY);
        if (jSONObjectOptJSONObject3 != null) {
            this.mResponseContext = Adobe360Context.createContextWithDictionary(jSONObjectOptJSONObject3);
        }
        this.mAppSpecificData = jSONObject.optJSONObject(ADOBE_360_MESSAGE_APP_SPECIFIC_DATA_KEY);
        this.mTransportReservedData = jSONObject.optJSONObject(ADOBE_360_MESSAGE_TRANSPORT_RESERVED_DATA_KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject messageDictionaryFromProperties() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ADOBE_360_MESSAGE_VERSION_KEY, Adobe360MessageCurrentVersion);
            jSONObject.put(ADOBE_360_MESSAGE_ACTION_ID_KEY, this.mActionId);
            jSONObject.put(ADOBE_360_MESSAGE_ACTION_TYPE_KEY, this.mActionType);
            if (this.mResponseStatusCode != null || this.mResponseReason != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(ADOBE_360_MESSAGE_STATUS_CODE_KEY, this.mResponseStatusCode);
                jSONObject2.put(ADOBE_360_MESSAGE_STATUS_REASON_KEY, this.mResponseReason);
                jSONObject.put(ADOBE_360_MESSAGE_STATUS_KEY, jSONObject2);
            }
            if (this.mRequestContext != null) {
                jSONObject.put(ADOBE_360_MESSAGE_REQUEST_CONTEXT_KEY, this.mRequestContext.getDictionary());
            }
            if (this.mResponseContext != null) {
                jSONObject.put(ADOBE_360_MESSAGE_RESPONSE_CONTEXT_KEY, this.mResponseContext.getDictionary());
            }
            if (this.mAppSpecificData != null) {
                jSONObject.put(ADOBE_360_MESSAGE_APP_SPECIFIC_DATA_KEY, this.mAppSpecificData);
            }
            if (this.mTransportReservedData != null) {
                jSONObject.put(ADOBE_360_MESSAGE_TRANSPORT_RESERVED_DATA_KEY, this.mTransportReservedData);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, AdobeImageOutputParameters> imageOutputParametersFromAcceptedMediaTypes() {
        if (this.mAcceptedMediaTypes == null) {
            return null;
        }
        HashMap<String, AdobeImageOutputParameters> map = new HashMap<>(this.mAcceptedMediaTypes.length());
        Iterator<String> itKeys = this.mAcceptedMediaTypes.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            AdobeImageOutputParameters adobeImageOutputParameters = new AdobeImageOutputParameters();
            adobeImageOutputParameters.mediaRange = this.mAcceptedMediaTypes.optString(next);
            map.put(next, adobeImageOutputParameters);
        }
        return map;
    }

    public void destroy() {
        if (this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT && this.mSnapshotPath != null) {
            FileUtils.deleteQuietly(new File(this.mSnapshotPath));
        } else if (this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE) {
            try {
                this.mComposite.removeLocalStorage();
            } catch (AdobeDCXException e2) {
                AdobeLogger.log(Level.DEBUG, TAG, null, e2);
            }
        }
    }

    protected void finalize() {
        destroy();
    }

    private static boolean validateActionType(String str) {
        return str.equals(ADOBE_360_ACTION_TYPE_EDIT) || str.equals(ADOBE_360_ACTION_TYPE_EMBED) || str.equals(ADOBE_360_ACTION_TYPE_CAPTURE) || str.equals(ADOBE_360_ACTION_TYPE_CAPTURE_N) || str.equals(ADOBE_360_ACTION_TYPE_EMBED_N);
    }

    protected Adobe360Exception validateWithError() {
        if (this.mActionId == null) {
            return AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Message is missing actionId.");
        }
        if (!validateActionType(this.mActionType)) {
            return AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Message doesn't have valid actionType.");
        }
        if (this.mInputAssets != null && this.mOutputAssets != null) {
            return AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Input assets and output assets may not be included in the same message.");
        }
        if ((this.mOutputAssets == null && this.mResponseResults == null) || this.mResponseStatusCode != null) {
            return null;
        }
        return AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Output assets may only be specified in a response message.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void executeBlockOnQueue(Runnable runnable, Handler handler) {
        if (handler != null) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static AdobeCSDKProgress readFromPath(final String str, final Handler handler, final IAdobeGenericCompletionCallback<Adobe360Message> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("path");
        }
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1
            @Override // java.lang.Runnable
            public void run() throws AdobeCSDKException {
                final AdobeCSDKException e2;
                ArrayList<String> arrayListExtractFiles;
                String strFRead;
                AdobeDCXComposite adobeDCXCompositeCreateCompositeFromPath;
                final Adobe360MessageInternal adobe360MessageInternalCreate360MessageWithSnapshotAtPath = null;
                Adobe360Exception adobe360ExceptionCreate360Error = !new File(str).exists() ? AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidPath, "Path does not exist: " + str) : null;
                boolean zIsDirectory = new File(str).isDirectory();
                Adobe360Exception adobe360ExceptionCreate360Error2 = (adobe360ExceptionCreate360Error == null && adobeCSDKProgress.isCancelled()) ? AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null) : adobe360ExceptionCreate360Error;
                if (adobe360ExceptionCreate360Error2 == null) {
                    adobeCSDKProgress.updateTotalUnitCount(1L);
                    if (zIsDirectory) {
                        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str, "mimetype");
                        if (new File(strStringByAppendingLastPathComponent).exists()) {
                            try {
                                strFRead = AdobeDCXUtils.fRead(strStringByAppendingLastPathComponent);
                            } catch (IOException e3) {
                                AdobeLogger.log(Level.ERROR, "MimeTypefile read failed", e3.getMessage());
                                strFRead = null;
                            }
                            if (strFRead.equals(Adobe360Message.ADOBE_360_MESSAGE_TYPE)) {
                                try {
                                    adobe360MessageInternalCreate360MessageWithSnapshotAtPath = Adobe360MessageInternal.create360MessageWithSnapshotAtPath(str, adobeCSDKProgress);
                                    e2 = adobe360ExceptionCreate360Error2;
                                } catch (AdobeCSDKException e4) {
                                    e2 = e4;
                                }
                            } else {
                                e2 = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "mimetype contains an unexpected type.");
                            }
                        } else {
                            try {
                                adobeDCXCompositeCreateCompositeFromPath = AdobeDCXComposite.createCompositeFromPath(str, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite, null);
                                e2 = adobe360ExceptionCreate360Error2;
                            } catch (AdobeDCXException e5) {
                                e2 = e5;
                                adobeDCXCompositeCreateCompositeFromPath = null;
                            }
                            if (e2 == null) {
                                try {
                                    adobe360MessageInternalCreate360MessageWithSnapshotAtPath = new Adobe360MessageInternal(adobeDCXCompositeCreateCompositeFromPath, false, adobeCSDKProgress);
                                } catch (AdobeCSDKException e6) {
                                    e2 = e6;
                                }
                            }
                        }
                    } else {
                        String strStringByAppendingLastPathComponent2 = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                        File file = new File(strStringByAppendingLastPathComponent2);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        try {
                            e2 = adobe360ExceptionCreate360Error2;
                            arrayListExtractFiles = AdobeUCFArchive.extractFiles(null, str, strStringByAppendingLastPathComponent2, adobeCSDKProgress);
                        } catch (AdobeCSDKException e7) {
                            e2 = e7;
                            arrayListExtractFiles = null;
                        }
                        if (arrayListExtractFiles != null) {
                            try {
                                adobe360MessageInternalCreate360MessageWithSnapshotAtPath = Adobe360MessageInternal.create360MessageWithSnapshotAtPath(strStringByAppendingLastPathComponent2, adobeCSDKProgress);
                                if (adobe360MessageInternalCreate360MessageWithSnapshotAtPath.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_SNAPSHOT) {
                                    adobe360MessageInternalCreate360MessageWithSnapshotAtPath.mFormat = Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT;
                                }
                            } catch (AdobeCSDKException e8) {
                                e2 = e8;
                            }
                        }
                    }
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                } else {
                    e2 = adobe360ExceptionCreate360Error2;
                }
                Adobe360Message.executeBlockOnQueue(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (e2 != null) {
                            if (iAdobeGenericErrorCallback != null) {
                                iAdobeGenericErrorCallback.onError(e2);
                            }
                        } else if (iAdobeGenericCompletionCallback != null) {
                            iAdobeGenericCompletionCallback.onCompletion(adobe360MessageInternalCreate360MessageWithSnapshotAtPath);
                        }
                    }
                }, handler);
            }
        }).start();
        return adobeCSDKProgress;
    }

    public static AdobeCSDKProgress readFromComposite(final AdobeDCXComposite adobeDCXComposite, final Handler handler, final IAdobeGenericCompletionCallback<Adobe360Message> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("composite");
        }
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.2
            @Override // java.lang.Runnable
            public void run() {
                final Adobe360MessageInternal adobe360MessageInternal;
                final AdobeCSDKException adobeCSDKException = null;
                adobeCSDKProgress.updateTotalUnitCount(1L);
                try {
                    adobe360MessageInternal = new Adobe360MessageInternal(adobeDCXComposite, false, adobeCSDKProgress);
                } catch (AdobeCSDKException e2) {
                    adobeCSDKException = e2;
                    adobe360MessageInternal = null;
                }
                adobeCSDKProgress.updateCompletedUnitCount(1L);
                Adobe360Message.executeBlockOnQueue(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (adobeCSDKException != null) {
                            if (iAdobeGenericErrorCallback != null) {
                                iAdobeGenericErrorCallback.onError(adobeCSDKException);
                            }
                        } else if (iAdobeGenericCompletionCallback != null) {
                            iAdobeGenericCompletionCallback.onCompletion(adobe360MessageInternal);
                        }
                    }
                }, handler);
            }
        }).start();
        return adobeCSDKProgress;
    }

    public AdobeCSDKProgress writeToSnapshotAtPath(String str, boolean z, Handler handler, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return !z ? writeToSnapshotAtPathNonSingleFile(str, handler, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback) : writeToSnapshotAtPathSingleFile(str, handler, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    private AdobeCSDKProgress writeToSnapshotAtPathNonSingleFile(final String str, final Handler handler, final IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError(SNAPSHOT_PATH);
        }
        int size = this.mInputAssets != null ? this.mInputAssets.size() : 0;
        int size2 = this.mOutputAssets != null ? this.mOutputAssets.size() : 0;
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        adobeCSDKProgress.setTotalUnitCount(size + size2 + 3);
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.3
            /* JADX WARN: Type inference failed for: r5v2, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$3$1AddAssetsToSnapshotWrapper] */
            @Override // java.lang.Runnable
            public void run() {
                final AdobeDCXManifest adobeDCXManifest;
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild;
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild2;
                final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
                try {
                    adobeDCXManifest = new AdobeDCXManifest(Adobe360Message.ADOBE_360_MESSAGE_NAME, Adobe360Message.ADOBE_360_MESSAGE_TYPE);
                } catch (AdobeDCXException e2) {
                    adobeCSDKExceptionArr[0] = e2;
                    adobeDCXManifest = null;
                }
                Adobe360OperationDocument adobe360OperationDocument = new Adobe360OperationDocument();
                if (adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    adobeDCXManifest.setValue(Adobe360Message.this.messageDictionaryFromProperties(), Adobe360Message.ADOBE_360_MESSAGE_ROOT_KEY);
                    if (Adobe360Message.this.mRequestOptions != null) {
                        adobe360OperationDocument.setOptions(Adobe360Message.this.mRequestOptions);
                    }
                    if (Adobe360Message.this.mResponseResults != null) {
                        adobe360OperationDocument.setResults(Adobe360Message.this.mResponseResults);
                    }
                }
                ?? r5 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.3.1AddAssetsToSnapshotWrapper
                    static final /* synthetic */ boolean $assertionsDisabled;

                    static {
                        $assertionsDisabled = !Adobe360Message.class.desiredAssertionStatus();
                    }

                    private boolean addAssetToSnapshot(Adobe360Asset adobe360Asset, String str2, String str3, AdobeDCXManifestNode adobeDCXManifestNode) {
                        IOException e3;
                        boolean z;
                        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode;
                        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str, str3);
                        if (adobe360Asset.getData() != null && adobe360Asset.getData().getClass().equals(AdobeDCXElement.class)) {
                            AdobeDCXElement adobeDCXElement = (AdobeDCXElement) adobe360Asset.getData();
                            Iterator<AdobeDCXComponent> it = adobeDCXElement.getManifest().getAllComponents().values().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    e3 = null;
                                    z = true;
                                    break;
                                }
                                AdobeDCXComponent next = it.next();
                                String pathForComponent = null;
                                try {
                                    pathForComponent = adobeDCXElement.getPathForComponent(next);
                                } catch (AdobeDCXException e4) {
                                    AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e4);
                                }
                                if (pathForComponent == null) {
                                    z = false;
                                    e3 = null;
                                    break;
                                }
                                try {
                                    FileUtils.copyFile(new File(pathForComponent), new File(AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, adobe360Asset.getDescriptor().getPath()), next.getPath())));
                                } catch (IOException e5) {
                                    e3 = e5;
                                    z = false;
                                }
                            }
                            if (!z) {
                                adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorIncompleteElement, null, e3);
                                return false;
                            }
                            try {
                                adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) adobeDCXManifest.insertChild(adobeDCXElement.getRoot().getMutableManifestNode(), adobeDCXElement.getManifest(), adobeDCXManifestNode, 0L, false, adobe360Asset.getDescriptor().getPath(), null, false, null, null, null);
                            } catch (AdobeDCXException e6) {
                                adobeCSDKExceptionArr[0] = e6;
                                adobeDCXMutableManifestNode = null;
                            }
                            if (adobeCSDKExceptionArr[0] != null) {
                                return false;
                            }
                            adobeDCXMutableManifestNode.setType(str2);
                            adobeDCXMutableManifestNode.setType(adobe360Asset.getDescriptor().getType());
                            try {
                                adobeDCXManifest.updateChild(adobeDCXMutableManifestNode);
                            } catch (AdobeDCXException e7) {
                                adobeCSDKExceptionArr[0] = e7;
                            }
                            if (adobeCSDKExceptionArr[0] != null) {
                                return false;
                            }
                        } else {
                            String strStringByAppendingLastPathComponent2 = AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, adobe360Asset.getDescriptor().getPath());
                            AdobeDCXMutableComponent adobeDCXMutableComponentCreateComponentWithId = AdobeDCXMutableComponent.createComponentWithId(null, adobe360Asset.getDescriptor().getPath(), str2, adobe360Asset.getDescriptor().getType(), "primary");
                            if (Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER) {
                                if (adobe360Asset.getData().getClass().equals(String.class)) {
                                    try {
                                        FileUtils.copyFile(new File((String) adobe360Asset.getData()), new File(strStringByAppendingLastPathComponent2));
                                    } catch (IOException e8) {
                                        AdobeLogger.log(Level.ERROR, Adobe360Message.TAG, "", e8);
                                        adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.createUCFError(AdobeUCFErrorCode.AdobeUCFErrorArchiveWriteFailed, null);
                                    }
                                } else if (adobe360Asset.getData().getClass().equals(byte[].class)) {
                                    try {
                                        AdobeDCXUtils.fWrite(strStringByAppendingLastPathComponent2, new String((byte[]) adobe360Asset.getData(), "UTF-8"));
                                    } catch (IOException e9) {
                                        AdobeLogger.log(Level.ERROR, Adobe360Message.TAG, "", e9);
                                        adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.createUCFError(AdobeUCFErrorCode.AdobeUCFErrorArchiveWriteFailed, null);
                                    }
                                } else {
                                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorUnsupportedAssetDataType, "Asset with path " + adobe360Asset.getDescriptor().getPath() + " refers to an unsupported data type.");
                                }
                            } else if (Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_SNAPSHOT || Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT) {
                                if (!$assertionsDisabled && Adobe360Message.this.mSnapshotPath == null) {
                                    throw new AssertionError("Snapshot path is unexpectedly nil.");
                                }
                                try {
                                    FileUtils.copyFile(new File(AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(Adobe360Message.this.mSnapshotPath, str3), adobe360Asset.getDescriptor().getPath())), new File(strStringByAppendingLastPathComponent2));
                                } catch (IOException e10) {
                                    AdobeLogger.log(Level.ERROR, Adobe360Message.TAG, "", e10);
                                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.createUCFError(AdobeUCFErrorCode.AdobeUCFErrorArchiveWriteFailed, null);
                                }
                            } else if (Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_COMPOSITE || Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE) {
                                AdobeDCXComponent componentWithAbsolutePath = Adobe360Message.this.mComposite.getCurrent().getComponentWithAbsolutePath(AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(URIUtil.SLASH, str3), adobe360Asset.getDescriptor().getPath()));
                                String pathForComponent2 = null;
                                if (adobeDCXMutableComponentCreateComponentWithId != null) {
                                    try {
                                        pathForComponent2 = Adobe360Message.this.mComposite.getCurrent().getPathForComponent(componentWithAbsolutePath);
                                    } catch (AdobeDCXException e11) {
                                        adobeCSDKExceptionArr[0] = e11;
                                    }
                                }
                                if (pathForComponent2 == null) {
                                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, "Component for asset with path " + adobe360Asset.getDescriptor().getPath() + " is missing.");
                                    return false;
                                }
                                boolean z2 = true;
                                try {
                                    FileUtils.copyFile(new File(pathForComponent2), new File(strStringByAppendingLastPathComponent2));
                                } catch (IOException e12) {
                                    AdobeLogger.log(Level.ERROR, Adobe360Message.TAG, "", e12);
                                    z2 = false;
                                }
                                if (adobeCSDKExceptionArr[0] != null || !z2) {
                                    return false;
                                }
                            }
                            if (adobeCSDKExceptionArr[0] == null) {
                                try {
                                    adobeDCXManifest.addComponent(adobeDCXMutableComponentCreateComponentWithId, (AdobeDCXManifest) null, adobeDCXManifestNode, (String) null);
                                } catch (AdobeDCXException e13) {
                                    adobeCSDKExceptionArr[0] = e13;
                                }
                            }
                        }
                        return adobeCSDKExceptionArr[0] == null;
                    }

                    public boolean addAssetsToSnapshot(Map<String, Object> map, String str2, AdobeDCXManifestNode adobeDCXManifestNode, JSONObject jSONObject) {
                        boolean z;
                        boolean z2;
                        File file2 = new File(AdobeDCXUtils.stringByAppendingLastPathComponent(str, str2));
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        Iterator<String> it = Adobe360Utils.getAllKeys(map).iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = true;
                                break;
                            }
                            String next = it.next();
                            Object obj = map.get(next);
                            if (adobeCSDKProgress.isCancelled()) {
                                adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                                z = true;
                                break;
                            }
                            if (obj instanceof List) {
                                ArrayList arrayList = (ArrayList) obj;
                                AdobeDCXManifestNode adobeDCXManifestNodeAddChild3 = null;
                                try {
                                    adobeDCXManifestNodeAddChild3 = adobeDCXManifest.addChild(AdobeDCXMutableManifestNode.createNodeWithName(next), adobeDCXManifestNode);
                                } catch (AdobeDCXException e3) {
                                    adobeCSDKExceptionArr[0] = e3;
                                }
                                if (adobeCSDKExceptionArr[0] != null) {
                                    z = true;
                                    break;
                                }
                                JSONArray jSONArray = new JSONArray();
                                int i = 0;
                                Iterator it2 = arrayList.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        z2 = true;
                                        break;
                                    }
                                    Adobe360Asset adobe360Asset = (Adobe360Asset) it2.next();
                                    AdobeDCXManifestNode adobeDCXManifestNodeAddChild4 = null;
                                    try {
                                        adobeDCXManifestNodeAddChild4 = adobeDCXManifest.addChild(AdobeDCXMutableManifestNode.createNodeWithName(DocumentListEntry.LABEL + i), adobeDCXManifestNodeAddChild3);
                                    } catch (AdobeDCXException e4) {
                                        adobeCSDKExceptionArr[0] = e4;
                                    }
                                    if (adobeCSDKExceptionArr[0] != null) {
                                        z2 = false;
                                        break;
                                    }
                                    if (!addAssetToSnapshot(adobe360Asset, next, str2, adobeDCXManifestNodeAddChild4)) {
                                        z2 = false;
                                        break;
                                    }
                                    jSONArray.put(adobe360Asset.getDescriptor().getPath());
                                    i++;
                                }
                                if (z2) {
                                    try {
                                        jSONObject.put(next, jSONArray);
                                    } catch (JSONException e5) {
                                        AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e5);
                                    }
                                }
                                adobeCSDKProgress.updateCompletedUnitCount(1L);
                            } else {
                                Adobe360Asset adobe360Asset2 = (Adobe360Asset) obj;
                                try {
                                    jSONObject.put(next, adobe360Asset2.getDescriptor().getPath());
                                } catch (JSONException e6) {
                                    AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e6);
                                }
                                if (!addAssetToSnapshot(adobe360Asset2, next, str2, adobeDCXManifestNode)) {
                                    z = false;
                                    break;
                                }
                                adobeCSDKProgress.updateCompletedUnitCount(1L);
                            }
                        }
                        return adobeCSDKExceptionArr[0] == null && z;
                    }
                };
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mInputAssets != null) {
                    AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName("inputs");
                    adobeDCXMutableManifestNodeCreateNodeWithName.setPath("inputs");
                    try {
                        adobeDCXManifestNodeAddChild2 = adobeDCXManifest.addChild(adobeDCXMutableManifestNodeCreateNodeWithName);
                    } catch (AdobeDCXException e3) {
                        adobeCSDKExceptionArr[0] = e3;
                        adobeDCXManifestNodeAddChild2 = null;
                    }
                    if (adobeCSDKExceptionArr[0] == null) {
                        JSONObject jSONObject = new JSONObject();
                        if (r5.addAssetsToSnapshot(Adobe360Message.this.mInputAssets, "inputs", adobeDCXManifestNodeAddChild2, jSONObject)) {
                            adobe360OperationDocument.setInputs(jSONObject);
                        }
                    }
                }
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mOutputAssets != null) {
                    AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName2 = AdobeDCXMutableManifestNode.createNodeWithName("outputs");
                    adobeDCXMutableManifestNodeCreateNodeWithName2.setPath("outputs");
                    try {
                        adobeDCXManifestNodeAddChild = adobeDCXManifest.addChild(adobeDCXMutableManifestNodeCreateNodeWithName2);
                    } catch (AdobeDCXException e4) {
                        adobeCSDKExceptionArr[0] = e4;
                        adobeDCXManifestNodeAddChild = null;
                    }
                    if (adobeCSDKExceptionArr[0] == null) {
                        JSONObject jSONObject2 = new JSONObject();
                        if (r5.addAssetsToSnapshot(Adobe360Message.this.mOutputAssets, "outputs", adobeDCXManifestNodeAddChild, jSONObject2)) {
                            adobe360OperationDocument.setOutputs(jSONObject2);
                        }
                    }
                }
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mAcceptedMediaTypes != null) {
                    adobe360OperationDocument.setOutputDispositions(Adobe360Message.this.imageOutputParametersFromAcceptedMediaTypes());
                }
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    adobe360OperationDocument.writeToFileAtPath(AdobeDCXUtils.stringByAppendingLastPathComponent(str, Adobe360Message.OPERATION_JSON));
                    try {
                        adobeDCXManifest.addComponent(AdobeDCXMutableComponent.createComponentWithId(null, Adobe360Message.OPERATION_JSON, "Operation Document", "application/vnd.adobe.image-operation+json", "primary"), null, null);
                    } catch (AdobeDCXException e5) {
                        adobeCSDKExceptionArr[0] = e5;
                    }
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                }
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    try {
                        AdobeDCXUtils.fWrite(AdobeDCXUtils.stringByAppendingLastPathComponent(str, "manifest"), adobeDCXManifest.getSnapshotData());
                    } catch (IOException e6) {
                        AdobeLogger.log(Level.ERROR, Adobe360Message.TAG, "", e6);
                        adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.createUCFError(AdobeUCFErrorCode.AdobeUCFErrorArchiveWriteFailed, null);
                    }
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                }
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    try {
                        AdobeDCXUtils.fWrite(AdobeDCXUtils.stringByAppendingLastPathComponent(str, "mimetype"), Adobe360Message.ADOBE_360_MESSAGE_TYPE);
                    } catch (IOException e7) {
                        AdobeLogger.log(Level.ERROR, Adobe360Message.TAG, "", e7);
                        adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.createUCFError(AdobeUCFErrorCode.AdobeUCFErrorArchiveWriteFailed, null);
                    }
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                }
                final AdobeCSDKException adobeCSDKException = adobeCSDKExceptionArr[0];
                Adobe360Message.executeBlockOnQueue(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (adobeCSDKException != null) {
                            if (iAdobeGenericErrorCallback != null) {
                                iAdobeGenericErrorCallback.onError(adobeCSDKException);
                            }
                        } else if (iAdobeGenericCompletionCallback != null) {
                            iAdobeGenericCompletionCallback.onCompletion(str);
                        }
                    }
                }, handler);
            }
        }).start();
        return adobeCSDKProgress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1ArchiveItemsWithAssetWrapper] */
    public ArrayList<AdobeUCFArchiveItem> archiveItemsWithAssets(Map<String, Object> map, final String str) throws AdobeDCXException, Adobe360Exception {
        boolean z;
        ArrayList<AdobeUCFArchiveItem> arrayList = new ArrayList<>();
        ?? r4 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1ArchiveItemsWithAssetWrapper
            ArrayList<AdobeUCFArchiveItem> perform(Adobe360Asset adobe360Asset) throws AdobeDCXException, Adobe360Exception {
                String pathForComponent;
                String pathForComponent2;
                AdobeDCXException adobeDCXException = null;
                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str, adobe360Asset.getDescriptor().getPath());
                if (adobe360Asset.getData() != null && adobe360Asset.getData().getClass().equals(AdobeDCXElement.class)) {
                    AdobeDCXElement adobeDCXElement = (AdobeDCXElement) adobe360Asset.getData();
                    Map<String, AdobeDCXComponent> allComponents = adobeDCXElement.getManifest().getAllComponents();
                    ArrayList<AdobeUCFArchiveItem> arrayList2 = new ArrayList<>(allComponents.size());
                    for (AdobeDCXComponent adobeDCXComponent : allComponents.values()) {
                        try {
                            pathForComponent2 = adobeDCXElement.getPathForComponent(adobeDCXComponent);
                            e = null;
                        } catch (AdobeDCXException e2) {
                            e = e2;
                            AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e);
                            pathForComponent2 = null;
                        }
                        if (pathForComponent2 == null) {
                            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, "Component for asset with path " + AdobeDCXUtils.stringByAppendingLastPathComponent(adobe360Asset.getDescriptor().getPath(), adobeDCXComponent.getPath()) + " is missing.", e);
                        }
                        arrayList2.add(new AdobeUCFArchiveItem(pathForComponent2, AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, adobeDCXComponent.getPath()), false));
                    }
                    return arrayList2;
                }
                ArrayList<AdobeUCFArchiveItem> arrayList3 = new ArrayList<>(1);
                if (Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER) {
                    if (adobe360Asset.getData().getClass().equals(String.class)) {
                        arrayList3.add(new AdobeUCFArchiveItem((String) adobe360Asset.getData(), strStringByAppendingLastPathComponent, false));
                        return arrayList3;
                    }
                    if (!adobe360Asset.getData().getClass().equals(byte[].class)) {
                        return arrayList3;
                    }
                    arrayList3.add(new AdobeUCFArchiveItem((byte[]) adobe360Asset.getData(), strStringByAppendingLastPathComponent, false));
                    return arrayList3;
                }
                if (Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT || Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_SNAPSHOT) {
                    arrayList3.add(new AdobeUCFArchiveItem(AdobeDCXUtils.stringByAppendingLastPathComponent(Adobe360Message.this.mSnapshotPath, strStringByAppendingLastPathComponent), strStringByAppendingLastPathComponent, false));
                    return arrayList3;
                }
                if (Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE || Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_COMPOSITE) {
                    AdobeDCXComponent componentWithAbsolutePath = Adobe360Message.this.mComposite.getCurrent().getComponentWithAbsolutePath(AdobeDCXUtils.stringByAppendingLastPathComponent(URIUtil.SLASH, strStringByAppendingLastPathComponent));
                    if (componentWithAbsolutePath != null) {
                        try {
                            pathForComponent = Adobe360Message.this.mComposite.getCurrent().getPathForComponent(componentWithAbsolutePath);
                        } catch (AdobeDCXException e3) {
                            AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e3);
                            adobeDCXException = e3;
                            pathForComponent = null;
                        }
                    } else {
                        pathForComponent = null;
                    }
                    if (pathForComponent == null) {
                        throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, "Component for asset with path " + adobe360Asset.getDescriptor().getPath() + " is missing.", adobeDCXException);
                    }
                    arrayList3.add(new AdobeUCFArchiveItem(pathForComponent, strStringByAppendingLastPathComponent, false));
                    return arrayList3;
                }
                throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Unknown message format.");
            }
        };
        Iterator<String> it = Adobe360Utils.getAllKeys(map).iterator();
        while (it.hasNext()) {
            Object obj = map.get(it.next());
            if (obj instanceof List) {
                Iterator it2 = ((ArrayList) obj).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    }
                    ArrayList<AdobeUCFArchiveItem> arrayListPerform = r4.perform((Adobe360Asset) it2.next());
                    if (arrayListPerform != null) {
                        arrayList.addAll(arrayListPerform);
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    return null;
                }
            } else {
                if (!$assertionsDisabled && !obj.getClass().equals(Adobe360Asset.class)) {
                    throw new AssertionError("Unexpected value type found in asset dictionary.");
                }
                ArrayList<AdobeUCFArchiveItem> arrayListPerform2 = r4.perform((Adobe360Asset) obj);
                if (arrayListPerform2 == null) {
                    return null;
                }
                arrayList.addAll(arrayListPerform2);
            }
        }
        return arrayList;
    }

    private AdobeCSDKProgress writeToSnapshotAtPathSingleFile(final String str, final Handler handler, final IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        adobeCSDKProgress.setTotalUnitCount(5);
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.4
            /* JADX WARN: Type inference failed for: r7v0, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$4$1AddAssetsToDictionariesWrapper] */
            @Override // java.lang.Runnable
            public void run() {
                final AdobeDCXManifest adobeDCXManifest;
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild;
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild2;
                final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                String strStringByAppendingLastPathComponent2 = AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, "manifest");
                String strStringByAppendingLastPathComponent3 = AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, Adobe360Message.OPERATION_JSON);
                try {
                    adobeDCXManifest = new AdobeDCXManifest(Adobe360Message.ADOBE_360_MESSAGE_NAME, Adobe360Message.ADOBE_360_MESSAGE_TYPE);
                } catch (AdobeDCXException e2) {
                    adobeCSDKExceptionArr[0] = e2;
                    adobeDCXManifest = null;
                }
                Adobe360OperationDocument adobe360OperationDocument = new Adobe360OperationDocument();
                JSONObject jSONObjectMessageDictionaryFromProperties = Adobe360Message.this.messageDictionaryFromProperties();
                if (adobeDCXManifest != null) {
                    adobeDCXManifest.setValue(jSONObjectMessageDictionaryFromProperties, Adobe360Message.ADOBE_360_MESSAGE_ROOT_KEY);
                }
                if (Adobe360Message.this.mRequestOptions != null) {
                    adobe360OperationDocument.setOptions(Adobe360Message.this.mRequestOptions);
                }
                if (Adobe360Message.this.mResponseResults != null) {
                    adobe360OperationDocument.setResults(Adobe360Message.this.mResponseResults);
                }
                ?? r7 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.4.1AddAssetsToDictionariesWrapper
                    private boolean addAssetToDictionaries(Adobe360Asset adobe360Asset, String str2, AdobeDCXManifestNode adobeDCXManifestNode) {
                        if (adobe360Asset.getData() != null && adobe360Asset.getData().getClass().equals(AdobeDCXElement.class)) {
                            AdobeDCXElement adobeDCXElement = (AdobeDCXElement) adobe360Asset.getData();
                            try {
                                AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) adobeDCXManifest.insertChild(adobeDCXElement.getRoot().getMutableManifestNode(), adobeDCXElement.getManifest(), adobeDCXManifestNode, 0L, false, adobe360Asset.getDescriptor().getPath(), null, false, null, null, null);
                                adobeDCXMutableManifestNode.setName(str2);
                                adobeDCXMutableManifestNode.setType(adobe360Asset.getDescriptor().getType());
                                adobeDCXManifest.updateChild(adobeDCXMutableManifestNode);
                            } catch (AdobeDCXException e3) {
                                adobeCSDKExceptionArr[0] = e3;
                            }
                        } else {
                            try {
                                adobeDCXManifest.addComponent(AdobeDCXMutableComponent.createComponentWithId(null, adobe360Asset.getDescriptor().getPath(), str2, adobe360Asset.getDescriptor().getType(), "primary"), (AdobeDCXManifest) null, adobeDCXManifestNode, (String) null);
                            } catch (AdobeDCXException e4) {
                                adobeCSDKExceptionArr[0] = e4;
                            }
                        }
                        return adobeCSDKExceptionArr[0] == null;
                    }

                    public boolean addAssetsToDictionaries(Map<String, Object> map, AdobeDCXManifestNode adobeDCXManifestNode, JSONObject jSONObject) {
                        AdobeDCXManifestNode adobeDCXManifestNodeAddChild3;
                        boolean z;
                        AdobeDCXManifestNode adobeDCXManifestNodeAddChild4;
                        for (String str2 : Adobe360Utils.getAllKeys(map)) {
                            Object obj = map.get(str2);
                            if (obj instanceof List) {
                                ArrayList arrayList = (ArrayList) obj;
                                try {
                                    adobeDCXManifestNodeAddChild3 = adobeDCXManifest.addChild(AdobeDCXMutableManifestNode.createNodeWithName(str2), adobeDCXManifestNode);
                                } catch (AdobeDCXException e3) {
                                    adobeCSDKExceptionArr[0] = e3;
                                    adobeDCXManifestNodeAddChild3 = null;
                                }
                                if (adobeCSDKExceptionArr[0] != null) {
                                    return false;
                                }
                                JSONArray jSONArray = new JSONArray();
                                Iterator it = arrayList.iterator();
                                int i = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        z = true;
                                        break;
                                    }
                                    Adobe360Asset adobe360Asset = (Adobe360Asset) it.next();
                                    try {
                                        adobeDCXManifestNodeAddChild4 = adobeDCXManifest.addChild(AdobeDCXMutableManifestNode.createNodeWithName(DocumentListEntry.LABEL + i), adobeDCXManifestNodeAddChild3);
                                    } catch (AdobeDCXException e4) {
                                        adobeCSDKExceptionArr[0] = e4;
                                        adobeDCXManifestNodeAddChild4 = null;
                                    }
                                    if (adobeCSDKExceptionArr[0] != null) {
                                        z = false;
                                        break;
                                    }
                                    if (!addAssetToDictionaries(adobe360Asset, str2, adobeDCXManifestNodeAddChild4)) {
                                        z = false;
                                        break;
                                    }
                                    jSONArray.put(adobe360Asset.getDescriptor().getPath());
                                    i++;
                                }
                                if (z) {
                                    try {
                                        jSONObject.put(str2, jSONArray);
                                    } catch (JSONException e5) {
                                        AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e5);
                                    }
                                }
                            } else {
                                Adobe360Asset adobe360Asset2 = (Adobe360Asset) obj;
                                try {
                                    jSONObject.put(str2, adobe360Asset2.getDescriptor().getPath());
                                } catch (JSONException e6) {
                                    AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e6);
                                }
                                if (!addAssetToDictionaries(adobe360Asset2, str2, adobeDCXManifestNode)) {
                                    return false;
                                }
                            }
                        }
                        return true;
                    }
                };
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mInputAssets != null) {
                    AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName("inputs");
                    adobeDCXMutableManifestNodeCreateNodeWithName.setPath("inputs");
                    try {
                        adobeDCXManifestNodeAddChild2 = adobeDCXManifest.addChild(adobeDCXMutableManifestNodeCreateNodeWithName);
                    } catch (AdobeDCXException e3) {
                        adobeCSDKExceptionArr[0] = e3;
                        adobeDCXManifestNodeAddChild2 = null;
                    }
                    if (adobeCSDKExceptionArr[0] == null) {
                        JSONObject jSONObject = new JSONObject();
                        if (r7.addAssetsToDictionaries(Adobe360Message.this.mInputAssets, adobeDCXManifestNodeAddChild2, jSONObject)) {
                            adobe360OperationDocument.setInputs(jSONObject);
                        }
                    }
                }
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mOutputAssets != null) {
                    AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName2 = AdobeDCXMutableManifestNode.createNodeWithName("outputs");
                    adobeDCXMutableManifestNodeCreateNodeWithName2.setPath("outputs");
                    try {
                        adobeDCXManifestNodeAddChild = adobeDCXManifest.addChild(adobeDCXMutableManifestNodeCreateNodeWithName2);
                    } catch (AdobeDCXException e4) {
                        adobeCSDKExceptionArr[0] = e4;
                        adobeDCXManifestNodeAddChild = null;
                    }
                    if (adobeCSDKExceptionArr[0] == null) {
                        JSONObject jSONObject2 = new JSONObject();
                        if (r7.addAssetsToDictionaries(Adobe360Message.this.mOutputAssets, adobeDCXManifestNodeAddChild, jSONObject2)) {
                            adobe360OperationDocument.setOutputs(jSONObject2);
                        }
                    }
                }
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mAcceptedMediaTypes != null) {
                    adobe360OperationDocument.setOutputDispositions(Adobe360Message.this.imageOutputParametersFromAcceptedMediaTypes());
                }
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                adobeCSDKProgress.updateCompletedUnitCount(1L);
                if (adobeCSDKExceptionArr[0] == null) {
                    adobe360OperationDocument.writeToFileAtPath(strStringByAppendingLastPathComponent3);
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                }
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    try {
                        adobeDCXManifest.addComponent(AdobeDCXMutableComponent.createComponentWithId(null, Adobe360Message.OPERATION_JSON, "Operation Document", "application/vnd.adobe.image-operation+json", "primary"), null, null);
                    } catch (AdobeDCXException e5) {
                        adobeCSDKExceptionArr[0] = e5;
                    }
                    if (adobeCSDKExceptionArr[0] == null) {
                        try {
                            AdobeDCXUtils.fWrite(strStringByAppendingLastPathComponent2, adobeDCXManifest.getSnapshotData());
                        } catch (IOException e6) {
                            AdobeLogger.log(Level.ERROR, Adobe360Message.TAG, "", e6);
                            adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.createUCFError(AdobeUCFErrorCode.AdobeUCFErrorArchiveWriteFailed, null);
                        }
                    }
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                }
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    AdobeUCFArchiveItem adobeUCFArchiveItem = new AdobeUCFArchiveItem(strStringByAppendingLastPathComponent2, "manifest", false);
                    AdobeUCFArchiveItem adobeUCFArchiveItem2 = new AdobeUCFArchiveItem(strStringByAppendingLastPathComponent3, Adobe360Message.OPERATION_JSON, false);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(adobeUCFArchiveItem);
                    arrayList.add(adobeUCFArchiveItem2);
                    try {
                        if (Adobe360Message.this.mInputAssets != null) {
                            arrayList.addAll(Adobe360Message.this.archiveItemsWithAssets(Adobe360Message.this.mInputAssets, "inputs"));
                        }
                        if (Adobe360Message.this.mOutputAssets != null) {
                            arrayList.addAll(Adobe360Message.this.archiveItemsWithAssets(Adobe360Message.this.mOutputAssets, "outputs"));
                        }
                        AdobeUCFArchive.createArchiveFileWithItems(arrayList, str, Adobe360Message.ADOBE_360_MESSAGE_TYPE, adobeCSDKProgress);
                    } catch (AdobeCSDKException e7) {
                        adobeCSDKExceptionArr[0] = e7;
                    }
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                }
                FileUtils.deleteQuietly(new File(strStringByAppendingLastPathComponent2));
                FileUtils.deleteQuietly(new File(strStringByAppendingLastPathComponent3));
                final AdobeCSDKException adobeCSDKException = adobeCSDKExceptionArr[0];
                Adobe360Message.executeBlockOnQueue(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (adobeCSDKException != null) {
                            if (iAdobeGenericErrorCallback != null) {
                                iAdobeGenericErrorCallback.onError(adobeCSDKException);
                            }
                        } else if (iAdobeGenericCompletionCallback != null) {
                            iAdobeGenericCompletionCallback.onCompletion(str);
                        }
                    }
                }, handler);
            }
        }).start();
        return adobeCSDKProgress;
    }

    public AdobeCSDKProgress writeToCompositeAtPath(final String str, final Handler handler, final IAdobeGenericCompletionCallback<AdobeDCXComposite> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("compositePath");
        }
        int size = this.mInputAssets != null ? this.mInputAssets.size() : 0;
        int size2 = this.mOutputAssets != null ? this.mOutputAssets.size() : 0;
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        adobeCSDKProgress.setTotalUnitCount(size + size2 + 2);
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.5
            /* JADX WARN: Type inference failed for: r10v0, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$5$1AddAssetsToCompositeWrapper] */
            @Override // java.lang.Runnable
            public void run() throws AdobeDCXException {
                final AdobeDCXComposite adobeDCXCompositeCreateCompositeFromPath;
                AdobeDCXNode adobeDCXNodeAppendNode;
                AdobeDCXNode adobeDCXNodeAppendNode2;
                final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
                try {
                    adobeDCXCompositeCreateCompositeFromPath = AdobeDCXComposite.createCompositeFromPath(str, null);
                } catch (AdobeDCXException e2) {
                    adobeCSDKExceptionArr[0] = e2;
                    adobeDCXCompositeCreateCompositeFromPath = null;
                }
                Adobe360OperationDocument adobe360OperationDocument = new Adobe360OperationDocument();
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    adobeDCXCompositeCreateCompositeFromPath.getCurrent().setName(Adobe360Message.ADOBE_360_MESSAGE_NAME);
                    adobeDCXCompositeCreateCompositeFromPath.getCurrent().setType(Adobe360Message.ADOBE_360_MESSAGE_TYPE);
                    adobeDCXCompositeCreateCompositeFromPath.getCurrent().setValue(Adobe360Message.this.messageDictionaryFromProperties(), Adobe360Message.ADOBE_360_MESSAGE_ROOT_KEY);
                    if (Adobe360Message.this.mRequestOptions != null) {
                        adobe360OperationDocument.setOptions(Adobe360Message.this.mRequestOptions);
                    }
                    if (Adobe360Message.this.mResponseResults != null) {
                        adobe360OperationDocument.setResults(Adobe360Message.this.mResponseResults);
                    }
                }
                ?? r10 = new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.5.1AddAssetsToCompositeWrapper
                    static final /* synthetic */ boolean $assertionsDisabled;

                    static {
                        $assertionsDisabled = !Adobe360Message.class.desiredAssertionStatus();
                    }

                    public boolean addAssetToComposite(Adobe360Asset adobe360Asset, String str2, AdobeDCXNode adobeDCXNode) {
                        if (adobe360Asset.getData() != null && adobe360Asset.getData().getClass().equals(AdobeDCXElement.class)) {
                            try {
                                adobeDCXCompositeCreateCompositeFromPath.getCurrent().copyElement((AdobeDCXElement) adobe360Asset.getData(), adobeDCXNode, 0L, adobe360Asset.getDescriptor().getPath(), null);
                            } catch (AdobeDCXException e3) {
                                adobeCSDKExceptionArr[0] = e3;
                            }
                            if (adobeCSDKExceptionArr[0] != null) {
                                return false;
                            }
                        } else {
                            AdobeDCXMutableComponent adobeDCXMutableComponentCreateComponentWithId = AdobeDCXMutableComponent.createComponentWithId(null, adobe360Asset.getDescriptor().getPath(), str2, adobe360Asset.getDescriptor().getType(), "primary");
                            if (Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER) {
                                if (adobe360Asset.getData().getClass().equals(String.class)) {
                                    try {
                                        adobeDCXCompositeCreateCompositeFromPath.getCurrent().addComponent((AdobeDCXComponent) adobeDCXMutableComponentCreateComponentWithId, adobeDCXNode, (String) adobe360Asset.getData(), true, (String) null);
                                    } catch (AdobeDCXException e4) {
                                        adobeCSDKExceptionArr[0] = e4;
                                    }
                                    if (adobeCSDKExceptionArr[0] != null) {
                                        return false;
                                    }
                                } else if (adobe360Asset.getData().getClass().equals(byte[].class)) {
                                    String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                                    try {
                                        AdobeDCXUtils.fWrite(strStringByAppendingLastPathComponent, new String((byte[]) adobe360Asset.getData(), "UTF-8"));
                                    } catch (IOException e5) {
                                        AdobeLogger.log(Level.ERROR, Adobe360Message.TAG, "", e5);
                                        adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.createUCFError(AdobeUCFErrorCode.AdobeUCFErrorArchiveWriteFailed, null);
                                    }
                                    if (adobeCSDKExceptionArr[0] != null) {
                                        return false;
                                    }
                                    try {
                                        adobeDCXCompositeCreateCompositeFromPath.getCurrent().addComponent((AdobeDCXComponent) adobeDCXMutableComponentCreateComponentWithId, adobeDCXNode, strStringByAppendingLastPathComponent, false, (String) null);
                                    } catch (AdobeDCXException e6) {
                                        adobeCSDKExceptionArr[0] = e6;
                                    }
                                    if (adobeCSDKExceptionArr[0] != null) {
                                        return false;
                                    }
                                } else {
                                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorUnsupportedAssetDataType, "Asset with path " + adobe360Asset.getDescriptor().getPath() + " refers to an unsupported data type.");
                                }
                            } else if (Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT || Adobe360Message.this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_SNAPSHOT) {
                                if (!$assertionsDisabled && Adobe360Message.this.mSnapshotPath == null) {
                                    throw new AssertionError("Snapshot path is unexpectedly nil.");
                                }
                                try {
                                    adobeDCXCompositeCreateCompositeFromPath.getCurrent().addComponent((AdobeDCXComponent) adobeDCXMutableComponentCreateComponentWithId, adobeDCXNode, AdobeDCXUtils.stringByAppendingLastPathComponent(Adobe360Message.this.mSnapshotPath, adobe360Asset.getDescriptor().getPath()), true, (String) null);
                                } catch (AdobeDCXException e7) {
                                    adobeCSDKExceptionArr[0] = e7;
                                }
                                if (adobeCSDKExceptionArr[0] != null) {
                                    return false;
                                }
                            }
                        }
                        return true;
                    }

                    public boolean addAssetsToComposite(Map<String, Object> map, AdobeDCXNode adobeDCXNode, JSONObject jSONObject) {
                        boolean z;
                        AdobeDCXNode adobeDCXNodeAppendNode3;
                        Iterator<String> it = Adobe360Utils.getAllKeys(map).iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            String next = it.next();
                            Object obj = map.get(next);
                            if (adobeCSDKProgress.isCancelled()) {
                                adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                                break;
                            }
                            if (obj instanceof List) {
                                ArrayList arrayList = (ArrayList) obj;
                                if (adobeCSDKExceptionArr[0] != null) {
                                    return false;
                                }
                                JSONArray jSONArray = new JSONArray();
                                Iterator it2 = arrayList.iterator();
                                int i = 0;
                                while (true) {
                                    if (!it2.hasNext()) {
                                        z = true;
                                        break;
                                    }
                                    Adobe360Asset adobe360Asset = (Adobe360Asset) it2.next();
                                    try {
                                        adobeDCXNodeAppendNode3 = adobeDCXCompositeCreateCompositeFromPath.getCurrent().appendNode("Item" + i, null, null, null, adobeDCXNode);
                                    } catch (AdobeDCXException e3) {
                                        adobeCSDKExceptionArr[0] = e3;
                                        adobeDCXNodeAppendNode3 = null;
                                    }
                                    if (adobeCSDKExceptionArr[0] != null) {
                                        z = false;
                                        break;
                                    }
                                    if (!addAssetToComposite(adobe360Asset, next, adobeDCXNodeAppendNode3)) {
                                        z = false;
                                        break;
                                    }
                                    jSONArray.put(adobe360Asset.getDescriptor().getPath());
                                    i++;
                                }
                                if (z) {
                                    try {
                                        jSONObject.put(next, jSONArray);
                                    } catch (JSONException e4) {
                                        AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e4);
                                    }
                                }
                            } else {
                                Adobe360Asset adobe360Asset2 = (Adobe360Asset) obj;
                                try {
                                    jSONObject.put(next, adobe360Asset2.getDescriptor().getPath());
                                } catch (JSONException e5) {
                                    AdobeLogger.log(Level.DEBUG, Adobe360Message.TAG, null, e5);
                                }
                                if (addAssetToComposite(adobe360Asset2, next, adobeDCXNode)) {
                                    break;
                                }
                            }
                            adobeCSDKProgress.updateCompletedUnitCount(1L);
                        }
                        return adobeCSDKExceptionArr[0] == null;
                    }
                };
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mInputAssets != null) {
                    try {
                        adobeDCXNodeAppendNode2 = adobeDCXCompositeCreateCompositeFromPath.getCurrent().appendNode("inputs", null, null, "inputs", null);
                    } catch (AdobeDCXException e3) {
                        adobeCSDKExceptionArr[0] = e3;
                        adobeDCXNodeAppendNode2 = null;
                    }
                    if (adobeCSDKExceptionArr[0] == null) {
                        JSONObject jSONObject = new JSONObject();
                        if (r10.addAssetsToComposite(Adobe360Message.this.mInputAssets, adobeDCXNodeAppendNode2, jSONObject)) {
                            adobe360OperationDocument.setInputs(jSONObject);
                        }
                    }
                }
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mOutputAssets != null) {
                    try {
                        adobeDCXNodeAppendNode = adobeDCXCompositeCreateCompositeFromPath.getCurrent().appendNode("outputs", null, null, "outputs", null);
                    } catch (AdobeDCXException e4) {
                        adobeCSDKExceptionArr[0] = e4;
                        adobeDCXNodeAppendNode = null;
                    }
                    if (adobeCSDKExceptionArr[0] == null) {
                        JSONObject jSONObject2 = new JSONObject();
                        if (r10.addAssetsToComposite(Adobe360Message.this.mOutputAssets, adobeDCXNodeAppendNode, jSONObject2)) {
                            adobe360OperationDocument.setOutputs(jSONObject2);
                        }
                    }
                }
                if (adobeCSDKExceptionArr[0] == null && Adobe360Message.this.mAcceptedMediaTypes != null) {
                    adobe360OperationDocument.setOutputDispositions(Adobe360Message.this.imageOutputParametersFromAcceptedMediaTypes());
                }
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                    adobe360OperationDocument.writeToFileAtPath(strStringByAppendingLastPathComponent);
                    try {
                        adobeDCXCompositeCreateCompositeFromPath.getCurrent().addComponent((AdobeDCXComponent) AdobeDCXMutableComponent.createComponentWithId(null, Adobe360Message.OPERATION_JSON, "Operation Document", "application/vnd.adobe.image-operation+json", "primary"), adobeDCXCompositeCreateCompositeFromPath.getCurrent().getRoot(), strStringByAppendingLastPathComponent, false, (String) null);
                    } catch (AdobeDCXException e5) {
                        adobeCSDKExceptionArr[0] = e5;
                    }
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                }
                if (adobeCSDKExceptionArr[0] == null && adobeCSDKProgress.isCancelled()) {
                    adobeCSDKExceptionArr[0] = AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorOperationCancelled, null);
                }
                if (adobeCSDKExceptionArr[0] == null) {
                    try {
                        adobeDCXCompositeCreateCompositeFromPath.commitChanges();
                    } catch (AdobeDCXException e6) {
                        adobeCSDKExceptionArr[0] = e6;
                    }
                    adobeCSDKProgress.updateCompletedUnitCount(1L);
                }
                final AdobeCSDKException adobeCSDKException = adobeCSDKExceptionArr[0];
                Adobe360Message.executeBlockOnQueue(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (adobeCSDKException != null) {
                            if (iAdobeGenericErrorCallback != null) {
                                iAdobeGenericErrorCallback.onError(adobeCSDKException);
                            }
                        } else if (iAdobeGenericCompletionCallback != null) {
                            iAdobeGenericCompletionCallback.onCompletion(adobeDCXCompositeCreateCompositeFromPath);
                        }
                    }
                }, handler);
            }
        }).start();
        return adobeCSDKProgress;
    }

    /* JADX WARN: Type inference failed for: r1v16, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1WriteElementAsCompositeWrapper] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message$1WriteElementAsCompositeWrapper] */
    private boolean writeAsset(Adobe360Asset adobe360Asset, String str, final String str2) throws AdobeCSDKException {
        String pathForComponent;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (!$assertionsDisabled && adobe360Asset == null) {
            throw new AssertionError(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_ASSET);
        }
        switch (this.mFormat) {
            case ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:
                if (adobe360Asset.getData().getClass().equals(String.class)) {
                    try {
                        FileUtils.copyFile(new File((String) adobe360Asset.getData()), new File(str2));
                        z3 = true;
                    } catch (IOException e2) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e2);
                        z3 = false;
                    }
                    if (z3) {
                        return true;
                    }
                } else if (adobe360Asset.getData().getClass().equals(byte[].class)) {
                    try {
                        AdobeDCXUtils.fWrite(str2, new String((byte[]) adobe360Asset.getData(), "UTF-8"));
                        z4 = true;
                    } catch (IOException e3) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e3);
                        z4 = false;
                    }
                    if (z4) {
                        return true;
                    }
                } else if (adobe360Asset.getData() != null && adobe360Asset.getData().getClass().equals(AdobeDCXElement.class)) {
                    return new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1WriteElementAsCompositeWrapper
                        boolean perform(AdobeDCXElement adobeDCXElement) throws AdobeDCXException {
                            AdobeDCXComposite adobeDCXCompositeCreateCompositeWithName = AdobeDCXComposite.createCompositeWithName(adobeDCXElement.getName(), adobeDCXElement.getType(), null, adobeDCXElement.getRoot().getNodeId(), str2, null);
                            if (adobeDCXCompositeCreateCompositeWithName != null && adobeDCXCompositeCreateCompositeWithName.getCurrent().replaceElement(adobeDCXElement) != null) {
                                return adobeDCXCompositeCreateCompositeWithName.commitChanges();
                            }
                            return false;
                        }
                    }.perform((AdobeDCXElement) adobe360Asset.getData());
                }
                return false;
            case ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:
                if (!$assertionsDisabled && this.mSnapshotPath == null) {
                    throw new AssertionError("snapshotPath cannot be nil when format is set to 'snapshot'");
                }
                if (adobe360Asset.getData() != null && !$assertionsDisabled && adobe360Asset.getData().getClass().equals(AdobeDCXElement.class)) {
                    throw new AssertionError("Asset data cannot be a DCX Element when the message's backing format is a snapshot.");
                }
                try {
                    FileUtils.copyFile(new File(AdobeDCXUtils.stringByAppendingLastPathComponent(this.mSnapshotPath, str), adobe360Asset.getDescriptor().getPath()), new File(str2));
                    z2 = true;
                } catch (IOException e4) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e4);
                    z2 = false;
                }
                if (z2) {
                    return z2;
                }
                return false;
            case ADOBE_360_MESSAGE_FORMAT_COMPOSITE:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:
                if (!$assertionsDisabled && this.mComposite == null) {
                    throw new AssertionError("composite cannot be nil when format is set to 'composite'");
                }
                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(URIUtil.SLASH, str), adobe360Asset.getDescriptor().getPath());
                AdobeDCXComponent componentWithAbsolutePath = this.mComposite.getCurrent().getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                if (componentWithAbsolutePath == null) {
                    AdobeDCXElement elementWithAbsolutePath = this.mComposite.getCurrent().getElementWithAbsolutePath(strStringByAppendingLastPathComponent);
                    if (elementWithAbsolutePath == null) {
                        throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Missing component with path " + strStringByAppendingLastPathComponent);
                    }
                    return new Object() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message.1WriteElementAsCompositeWrapper
                        boolean perform(AdobeDCXElement adobeDCXElement) throws AdobeDCXException {
                            AdobeDCXComposite adobeDCXCompositeCreateCompositeWithName = AdobeDCXComposite.createCompositeWithName(adobeDCXElement.getName(), adobeDCXElement.getType(), null, adobeDCXElement.getRoot().getNodeId(), str2, null);
                            if (adobeDCXCompositeCreateCompositeWithName != null && adobeDCXCompositeCreateCompositeWithName.getCurrent().replaceElement(adobeDCXElement) != null) {
                                return adobeDCXCompositeCreateCompositeWithName.commitChanges();
                            }
                            return false;
                        }
                    }.perform(elementWithAbsolutePath);
                }
                try {
                    pathForComponent = this.mComposite.getCurrent().getPathForComponent(componentWithAbsolutePath);
                } catch (AdobeDCXException e5) {
                    AdobeLogger.log(Level.DEBUG, TAG, null, e5);
                    pathForComponent = null;
                }
                if (pathForComponent == null) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Missing component file for component with path " + strStringByAppendingLastPathComponent);
                }
                try {
                    FileUtils.copyFile(new File(pathForComponent), new File(str2));
                    z = true;
                } catch (IOException e6) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e6);
                    z = false;
                }
                if (z) {
                    return z;
                }
                break;
            case ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED:
                throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorAssetFileDoesNotExist, null);
            default:
                if (!$assertionsDisabled) {
                    throw new AssertionError("Unexpected message format type.");
                }
                return false;
        }
    }

    public boolean writeInputWithName(String str, String str2) throws AdobeCSDKException {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("name");
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError("path");
        }
        Adobe360Asset inputWithName = getInputWithName(str);
        if (inputWithName == null) {
            return false;
        }
        return writeAsset(inputWithName, "inputs", str2);
    }

    public boolean writeOutputWithName(String str, String str2) throws AdobeCSDKException {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("name");
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError("path");
        }
        Adobe360Asset outputWithName = getOutputWithName(str);
        if (outputWithName == null) {
            return false;
        }
        return writeAsset(outputWithName, "outputs", str2);
    }

    public boolean writeAssetInInputArrayWithName(String str, int i, String str2) throws AdobeCSDKException {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("name");
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError("path");
        }
        ArrayList<Adobe360Asset> inputArrayWithName = getInputArrayWithName(str);
        if (inputArrayWithName == null) {
            return false;
        }
        return writeAsset(inputArrayWithName.get(i), "inputs", str2);
    }

    public boolean writeAssetInOutputArrayWithName(String str, int i, String str2) throws AdobeCSDKException {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("name");
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError("path");
        }
        ArrayList<Adobe360Asset> outputArrayWithName = getOutputArrayWithName(str);
        if (outputArrayWithName == null) {
            return false;
        }
        return writeAsset(outputArrayWithName.get(i), "outputs", str2);
    }

    public byte[] getDataForInputWithName(String str) throws Adobe360Exception {
        return getDataForAsset(getInputWithName(str), "inputs");
    }

    public byte[] getDataForOutputWithName(String str) throws Adobe360Exception {
        return getDataForAsset(getOutputWithName(str), "outputs");
    }

    public byte[] getDataForAssetInInputArrayWithName(String str, int i) throws Adobe360Exception {
        if ($assertionsDisabled || str != null) {
            return getDataForAsset(getInputArrayWithName(str).get(i), "inputs");
        }
        throw new AssertionError("name");
    }

    public byte[] getDataForAssetInOutputArrayWithName(String str, int i) throws Adobe360Exception {
        if ($assertionsDisabled || str != null) {
            return getDataForAsset(getOutputArrayWithName(str).get(i), "outputs");
        }
        throw new AssertionError("name");
    }

    private byte[] getDataForAsset(Adobe360Asset adobe360Asset, String str) throws Adobe360Exception {
        String pathForComponent;
        byte[] fileToByteArray;
        if (!$assertionsDisabled && adobe360Asset == null) {
            throw new AssertionError(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_ASSET);
        }
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("srcPathPrefix");
        }
        switch (this.mFormat) {
            case ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:
                if (adobe360Asset.getData().getClass().equals(String.class)) {
                    try {
                        fileToByteArray = FileUtils.readFileToByteArray(new File((String) adobe360Asset.getData()));
                        break;
                    } catch (IOException e2) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e2);
                        fileToByteArray = null;
                    }
                    return fileToByteArray;
                }
                if (adobe360Asset.getData().getClass().equals(byte[].class)) {
                    return (byte[]) adobe360Asset.getData();
                }
                return null;
            case ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:
                if (!$assertionsDisabled && this.mSnapshotPath == null) {
                    throw new AssertionError("snapshotPath cannot be nil when format is set to 'snapshot'");
                }
                try {
                    return FileUtils.readFileToByteArray(new File(AdobeDCXUtils.stringByAppendingLastPathComponent(this.mSnapshotPath, str), adobe360Asset.getDescriptor().getPath()));
                } catch (IOException e3) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e3);
                    return null;
                }
            case ADOBE_360_MESSAGE_FORMAT_COMPOSITE:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:
                if (!$assertionsDisabled && this.mComposite == null) {
                    throw new AssertionError("composite cannot be nil when format is set to 'composite'");
                }
                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(URIUtil.SLASH, str), adobe360Asset.getDescriptor().getPath());
                AdobeDCXComponent componentWithAbsolutePath = this.mComposite.getCurrent().getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                if (componentWithAbsolutePath == null) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Missing component with path " + strStringByAppendingLastPathComponent);
                }
                try {
                    pathForComponent = this.mComposite.getCurrent().getPathForComponent(componentWithAbsolutePath);
                } catch (AdobeDCXException e4) {
                    AdobeLogger.log(Level.DEBUG, TAG, null, e4);
                    pathForComponent = null;
                }
                if (pathForComponent == null) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Missing component file for component with path " + strStringByAppendingLastPathComponent);
                }
                try {
                    return FileUtils.readFileToByteArray(new File(pathForComponent));
                } catch (IOException e5) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e5);
                    return null;
                }
                break;
            case ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED:
                throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorAssetFileDoesNotExist, null);
            default:
                if ($assertionsDisabled) {
                    return null;
                }
                throw new AssertionError("Unexpected message format type.");
        }
    }

    private String getPathToImmutableAsset(Adobe360Asset adobe360Asset, String str) throws Adobe360Exception {
        String pathForComponent = null;
        if (!$assertionsDisabled && adobe360Asset == null) {
            throw new AssertionError(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_ASSET);
        }
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("srcPathPrefix");
        }
        switch (this.mFormat) {
            case ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:
                if (adobe360Asset.getData().getClass().equals(String.class)) {
                    return (String) adobe360Asset.getData();
                }
                if (adobe360Asset.getData().getClass().equals(byte[].class)) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorAssetFileDoesNotExist, null);
                }
                return null;
            case ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:
                if ($assertionsDisabled || this.mSnapshotPath != null) {
                    return AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(this.mSnapshotPath, str), adobe360Asset.getDescriptor().getPath());
                }
                throw new AssertionError("snapshotPath cannot be nil when format is set to 'snapshot'");
            case ADOBE_360_MESSAGE_FORMAT_COMPOSITE:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:
                if (!$assertionsDisabled && this.mComposite == null) {
                    throw new AssertionError("composite cannot be nil when format is set to 'composite'");
                }
                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(URIUtil.SLASH, str), adobe360Asset.getDescriptor().getPath());
                AdobeDCXComponent componentWithAbsolutePath = this.mComposite.getCurrent().getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                if (componentWithAbsolutePath == null) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Missing component with path " + strStringByAppendingLastPathComponent);
                }
                try {
                    pathForComponent = this.mComposite.getCurrent().getPathForComponent(componentWithAbsolutePath);
                    break;
                } catch (AdobeDCXException e2) {
                    AdobeLogger.log(Level.DEBUG, TAG, null, e2);
                }
                if (pathForComponent == null) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Missing component file for component with path " + strStringByAppendingLastPathComponent);
                }
                return pathForComponent;
            case ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED:
                throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorAssetFileDoesNotExist, null);
            default:
                if ($assertionsDisabled) {
                    return null;
                }
                throw new AssertionError("Unexpected message format type.");
        }
    }

    public String getPathToImmutableInputWithName(String str) throws AdobeCSDKException {
        return getPathToImmutableAsset(getInputWithName(str), "inputs");
    }

    public String getPathToImmutableOutputWithName(String str) throws AdobeCSDKException {
        return getPathToImmutableAsset(getOutputWithName(str), "outputs");
    }

    public String getPathToImmutableAssetInInputArrayWithName(String str, int i) throws AdobeCSDKException {
        if ($assertionsDisabled || str != null) {
            return getPathToImmutableAsset(getInputArrayWithName(str).get(i), "inputs");
        }
        throw new AssertionError("name");
    }

    public String getPathToImmutableAssetInOutputArrayWithName(String str, int i) throws Adobe360Exception {
        if ($assertionsDisabled || str != null) {
            return getPathToImmutableAsset(getOutputArrayWithName(str).get(i), "outputs");
        }
        throw new AssertionError("name");
    }

    @Deprecated
    public String getPathToImmutableAssetWithName(String str) throws Adobe360Exception {
        String pathForComponent;
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("name");
        }
        ArrayList arrayList = new ArrayList();
        Adobe360Asset assetWithName = getAssetWithName(str, arrayList);
        switch (this.mFormat) {
            case ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:
                if (assetWithName.getData().getClass().equals(String.class)) {
                    return (String) assetWithName.getData();
                }
                if (assetWithName.getData().getClass().equals(byte[].class)) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorAssetFileDoesNotExist, null);
                }
                break;
            case ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:
                if ($assertionsDisabled || this.mSnapshotPath != null) {
                    return AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(this.mSnapshotPath, arrayList.get(0)), assetWithName.getDescriptor().getPath());
                }
                throw new AssertionError("snapshotPath cannot be nil when format is set to 'snapshot'");
            case ADOBE_360_MESSAGE_FORMAT_COMPOSITE:
                if (!$assertionsDisabled && this.mComposite == null) {
                    throw new AssertionError("composite cannot be nil when format is set to 'composite'");
                }
                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(URIUtil.SLASH, arrayList.get(0)), assetWithName.getDescriptor().getPath());
                AdobeDCXComponent componentWithAbsolutePath = this.mComposite.getCurrent().getComponentWithAbsolutePath(strStringByAppendingLastPathComponent);
                if (componentWithAbsolutePath == null) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Missing component with path " + strStringByAppendingLastPathComponent);
                }
                try {
                    pathForComponent = this.mComposite.getCurrent().getPathForComponent(componentWithAbsolutePath);
                    break;
                } catch (AdobeDCXException e2) {
                    AdobeLogger.log(Level.DEBUG, TAG, null, e2);
                    pathForComponent = null;
                }
                if (pathForComponent == null) {
                    throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Missing component file for component with path " + strStringByAppendingLastPathComponent);
                }
                return pathForComponent;
            default:
                if (!$assertionsDisabled) {
                    throw new AssertionError("Unexpected message format type.");
                }
                break;
        }
        return null;
    }

    private Adobe360Asset getAssetWithName(String str, List<String> list) throws Adobe360Exception {
        Map<String, Object> map;
        if (this.mInputAssets != null) {
            map = this.mInputAssets;
            list.add("inputs");
        } else if (this.mOutputAssets != null) {
            map = this.mOutputAssets;
            list.add("outputs");
        } else {
            map = null;
        }
        if (map == null) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, "Message does not contain any assets.");
        }
        Object obj = map.get(str);
        if (!(obj instanceof Adobe360Asset)) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, null);
        }
        return (Adobe360Asset) obj;
    }

    private Adobe360Asset getInputWithName(String str) throws Adobe360Exception {
        Object obj = this.mInputAssets.get(str);
        if (obj == null) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, "");
        }
        if (obj instanceof List) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorScalarVectorMismatch, "");
        }
        return (Adobe360Asset) obj;
    }

    private Adobe360Asset getOutputWithName(String str) throws Adobe360Exception {
        Object obj = this.mOutputAssets.get(str);
        if (obj == null) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, "");
        }
        if (obj instanceof List) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorScalarVectorMismatch, "");
        }
        return (Adobe360Asset) obj;
    }

    private ArrayList<Adobe360Asset> getInputArrayWithName(String str) throws Adobe360Exception {
        Object obj = this.mInputAssets.get(str);
        if (obj == null) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, "");
        }
        if (!(obj instanceof List)) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorScalarVectorMismatch, "");
        }
        return (ArrayList) obj;
    }

    private ArrayList<Adobe360Asset> getOutputArrayWithName(String str) throws Adobe360Exception {
        Object obj = this.mOutputAssets.get(str);
        if (obj == null) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, "");
        }
        if (!(obj instanceof List)) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorScalarVectorMismatch, "");
        }
        return (ArrayList) obj;
    }

    private AdobeDCXElement getElementForAsset(Adobe360Asset adobe360Asset) throws Adobe360Exception {
        if (!$assertionsDisabled && adobe360Asset == null) {
            throw new AssertionError(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_ASSET);
        }
        if (adobe360Asset.getData() != null && adobe360Asset.getData().getClass().equals(AdobeDCXElement.class)) {
            if ($assertionsDisabled || this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER || this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_COMPOSITE || this.mFormat == Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE) {
                return (AdobeDCXElement) adobe360Asset.getData();
            }
            throw new AssertionError("Backing 360 Message representation should not support DCX elements");
        }
        throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorIncorrectAssetDataType, "Asset with path " + adobe360Asset.getDescriptor().getPath() + " is not a DCX Element");
    }

    public AdobeDCXElement getElementForInputWithName(String str) throws Adobe360Exception {
        Adobe360Asset inputWithName = getInputWithName(str);
        if (inputWithName == null) {
            return null;
        }
        return getElementForAsset(inputWithName);
    }

    public AdobeDCXElement getElementForOutputWithName(String str) throws Adobe360Exception {
        Adobe360Asset outputWithName = getOutputWithName(str);
        if (outputWithName == null) {
            return null;
        }
        return getElementForAsset(outputWithName);
    }

    public AdobeDCXElement getElementForAssetInInputArrayWithName(String str, int i) throws Adobe360Exception {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("name");
        }
        ArrayList<Adobe360Asset> inputArrayWithName = getInputArrayWithName(str);
        if (inputArrayWithName == null) {
            return null;
        }
        return getElementForAsset(inputArrayWithName.get(i));
    }

    public AdobeDCXElement getElementForAssetInOutputArrayWithName(String str, int i) throws Adobe360Exception {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("name");
        }
        ArrayList<Adobe360Asset> outputArrayWithName = getOutputArrayWithName(str);
        if (outputArrayWithName == null) {
            return null;
        }
        return getElementForAsset(outputArrayWithName.get(i));
    }

    public String getActionId() {
        return this.mActionId;
    }

    public String getActionType() {
        return this.mActionType;
    }

    public JSONObject getRequestOptions() {
        return this.mRequestOptions;
    }

    public Adobe360Context getRequestContext() {
        return this.mRequestContext;
    }

    public JSONObject getAcceptedMediaTypes() {
        return this.mAcceptedMediaTypes;
    }

    public JSONObject getAppSpecificData() {
        return this.mAppSpecificData;
    }

    public JSONObject getResponseResults() {
        return this.mResponseResults;
    }

    public Adobe360Context getResponseContext() {
        return this.mResponseContext;
    }

    public String getResponseStatusCode() {
        return this.mResponseStatusCode;
    }

    public String getResponseReason() {
        return this.mResponseReason;
    }

    public Map<String, Object> getInputDescriptors() {
        if (this.mInputDescriptors != null) {
            return this.mInputDescriptors;
        }
        if (this.mInputAssets != null && this.mInputAssets.size() > 0) {
            HashMap map = new HashMap(this.mInputAssets.size());
            for (Map.Entry<String, Object> entry : this.mInputAssets.entrySet()) {
                if (entry.getValue() instanceof List) {
                    ArrayList arrayList = (ArrayList) entry.getValue();
                    ArrayList arrayList2 = new ArrayList(arrayList.size());
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(((Adobe360Asset) it.next()).getDescriptor());
                    }
                    map.put(entry.getKey(), arrayList2);
                } else {
                    map.put(entry.getKey(), ((Adobe360Asset) entry.getValue()).getDescriptor());
                }
            }
            this.mInputDescriptors = map;
            return this.mInputDescriptors;
        }
        return null;
    }

    public Map<String, Object> getOutputDescriptors() {
        if (this.mOutputDescriptors != null) {
            return this.mOutputDescriptors;
        }
        if (this.mOutputAssets != null && this.mOutputAssets.size() > 0) {
            HashMap map = new HashMap(this.mOutputAssets.size());
            for (Map.Entry<String, Object> entry : this.mOutputAssets.entrySet()) {
                if (entry.getValue() instanceof List) {
                    ArrayList arrayList = (ArrayList) entry.getValue();
                    ArrayList arrayList2 = new ArrayList(arrayList.size());
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(((Adobe360Asset) it.next()).getDescriptor());
                    }
                    map.put(entry.getKey(), arrayList2);
                } else {
                    map.put(entry.getKey(), ((Adobe360Asset) entry.getValue()).getDescriptor());
                }
            }
            this.mOutputDescriptors = map;
            return this.mOutputDescriptors;
        }
        return null;
    }

    public JSONObject getTransportReservedData() {
        return this.mTransportReservedData;
    }

    public boolean removeLocalStorage() throws AdobeCSDKException {
        boolean zDeleteQuietly;
        boolean zDeleteQuietly2 = false;
        switch (this.mFormat) {
            case ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:
                ArrayList arrayList = new ArrayList();
                if (this.mInputAssets != null) {
                    arrayList.addAll(this.mInputAssets.values());
                }
                if (this.mOutputAssets != null) {
                    arrayList.addAll(this.mOutputAssets.values());
                }
                Iterator it = arrayList.iterator();
                while (true) {
                    zDeleteQuietly = zDeleteQuietly2;
                    if (it.hasNext()) {
                        Adobe360Asset adobe360Asset = (Adobe360Asset) it.next();
                        if (adobe360Asset.getData() == null || !adobe360Asset.getData().getClass().equals(String.class) || (zDeleteQuietly = FileUtils.deleteQuietly(new File((String) adobe360Asset.getData())))) {
                            zDeleteQuietly2 = zDeleteQuietly;
                        }
                    }
                }
                zDeleteQuietly2 = zDeleteQuietly;
                break;
            case ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:
                if (this.mSnapshotPath != null) {
                    zDeleteQuietly2 = FileUtils.deleteQuietly(new File(this.mSnapshotPath));
                    this.mSnapshotPath = null;
                }
                break;
            case ADOBE_360_MESSAGE_FORMAT_COMPOSITE:
            case ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:
                if (this.mComposite != null) {
                    zDeleteQuietly2 = this.mComposite.removeLocalStorage();
                    this.mComposite = null;
                }
                break;
        }
        if (!zDeleteQuietly2) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, null);
        }
        this.mFormat = Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED;
        return zDeleteQuietly2;
    }
}
