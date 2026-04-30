package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXElement;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360MessageInternal;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.util.AdobeCSDKErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360MessageBuilder {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String THE_DATA_PROPERTY_OF_ASSET_MUST_NOT_BE_NULL = "The data property of asset must not be null";
    private JSONObject acceptedMediaTypes;
    private String actionId;
    private String actionType;
    private JSONObject appSpecificData;
    protected Map<String, Object> inputAssets;
    private Map<String, Object> inputDescriptors;
    protected Map<String, Object> outputAssets;
    private Map<String, Object> outputDescriptors;
    private Adobe360Context requestContext;
    private JSONObject requestOptions;
    private Adobe360Context responseContext;
    private String responseReason;
    private JSONObject responseResults;
    private String responseStatusCode;
    private JSONObject transportReservedData;

    static {
        $assertionsDisabled = !Adobe360MessageBuilder.class.desiredAssertionStatus();
    }

    public Adobe360MessageBuilder() {
        this.inputAssets = new HashMap();
        this.outputAssets = new HashMap();
        this.actionId = AdobeStorageUtils.generateUuid();
    }

    public Adobe360MessageBuilder(Adobe360Message adobe360Message) {
        this.inputAssets = new HashMap();
        this.outputAssets = new HashMap();
        this.actionId = adobe360Message.mActionId;
        this.actionType = adobe360Message.mActionType;
        this.requestOptions = adobe360Message.mRequestOptions;
        this.responseResults = adobe360Message.mResponseResults;
        this.requestContext = adobe360Message.mRequestContext;
        this.responseContext = adobe360Message.mResponseContext;
        this.acceptedMediaTypes = null;
        this.appSpecificData = adobe360Message.mAppSpecificData;
        this.transportReservedData = adobe360Message.mTransportReservedData;
    }

    @Deprecated
    public boolean addInputAsset(Adobe360Asset adobe360Asset) throws AdobeCSDKException {
        if (!$assertionsDisabled && adobe360Asset == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && adobe360Asset.getData() == null) {
            throw new AssertionError(THE_DATA_PROPERTY_OF_ASSET_MUST_NOT_BE_NULL);
        }
        if (!$assertionsDisabled && adobe360Asset.getDescriptor() == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (adobe360Asset.getDescriptor().getName() == null || adobe360Asset.getDescriptor().getType() == null || adobe360Asset.getDescriptor().getPath() == null)) {
            throw new AssertionError();
        }
        if (adobe360Asset.getDescriptor().getName() != null) {
            this.inputAssets.put(adobe360Asset.getDescriptor().getName(), adobe360Asset);
            this.inputDescriptors = null;
            return true;
        }
        return true;
    }

    public void addInputAsset(Adobe360Asset adobe360Asset, String str) {
        if (!$assertionsDisabled && adobe360Asset == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && adobe360Asset.getData() == null) {
            throw new AssertionError(THE_DATA_PROPERTY_OF_ASSET_MUST_NOT_BE_NULL);
        }
        if (!$assertionsDisabled && adobe360Asset.getDescriptor() == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (adobe360Asset.getDescriptor().getType() == null || adobe360Asset.getDescriptor().getPath() == null)) {
            throw new AssertionError();
        }
        this.inputAssets.put(str, adobe360Asset);
        this.inputDescriptors = null;
    }

    @Deprecated
    public boolean addOutputAsset(Adobe360Asset adobe360Asset) throws AdobeCSDKException {
        if (!$assertionsDisabled && adobe360Asset == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && adobe360Asset.getData() == null) {
            throw new AssertionError(THE_DATA_PROPERTY_OF_ASSET_MUST_NOT_BE_NULL);
        }
        if (!$assertionsDisabled && adobe360Asset.getDescriptor() == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (adobe360Asset.getDescriptor().getName() == null || adobe360Asset.getDescriptor().getType() == null || adobe360Asset.getDescriptor().getPath() == null)) {
            throw new AssertionError();
        }
        if (adobe360Asset.getDescriptor().getName() != null) {
            this.outputAssets.put(adobe360Asset.getDescriptor().getName(), adobe360Asset);
            this.outputDescriptors = null;
            return true;
        }
        return true;
    }

    public void addOutputAsset(Adobe360Asset adobe360Asset, String str) {
        if (!$assertionsDisabled && adobe360Asset == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && adobe360Asset.getData() == null) {
            throw new AssertionError(THE_DATA_PROPERTY_OF_ASSET_MUST_NOT_BE_NULL);
        }
        if (!$assertionsDisabled && adobe360Asset.getDescriptor() == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (adobe360Asset.getDescriptor().getType() == null || adobe360Asset.getDescriptor().getPath() == null)) {
            throw new AssertionError();
        }
        this.outputAssets.put(str, adobe360Asset);
        this.outputDescriptors = null;
    }

    public void addInputAssetArray(List<Adobe360Asset> list, String str) {
        AdobeCSDKErrorUtils.verifyArgumentNotNil(list, "assetArray");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str, "name");
        for (Adobe360Asset adobe360Asset : list) {
            AdobeCSDKErrorUtils.verifyArgument(adobe360Asset.getData() != null, THE_DATA_PROPERTY_OF_ASSET_MUST_NOT_BE_NULL);
            AdobeCSDKErrorUtils.verifyArgument(adobe360Asset.getDescriptor() != null, "The descriptor property of asset must not be null");
            AdobeCSDKErrorUtils.verifyArgument((adobe360Asset.getDescriptor().getType() == null || adobe360Asset.getDescriptor().getPath() == null) ? false : true, "The descriptor property of asset is incomplete");
        }
        this.inputAssets.put(str, list);
        this.inputDescriptors = null;
    }

    public void addOutputAssetArray(List<Adobe360Asset> list, String str) {
        AdobeCSDKErrorUtils.verifyArgumentNotNil(list, "assetArray");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str, "name");
        for (Adobe360Asset adobe360Asset : list) {
            AdobeCSDKErrorUtils.verifyArgument(adobe360Asset.getData() != null, THE_DATA_PROPERTY_OF_ASSET_MUST_NOT_BE_NULL);
            AdobeCSDKErrorUtils.verifyArgument(adobe360Asset.getDescriptor() != null, "The descriptor property of asset must not be null");
            AdobeCSDKErrorUtils.verifyArgument((adobe360Asset.getDescriptor().getType() == null || adobe360Asset.getDescriptor().getPath() == null) ? false : true, "The descriptor property of asset is incomplete");
        }
        this.outputAssets.put(str, list);
        this.outputDescriptors = null;
    }

    public Adobe360Message buildMessage() throws AdobeCSDKException {
        Adobe360MessageInternal adobe360MessageInternal = new Adobe360MessageInternal(this.actionId);
        adobe360MessageInternal.mActionType = this.actionType;
        adobe360MessageInternal.mRequestOptions = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(this.requestOptions);
        adobe360MessageInternal.mResponseResults = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(this.responseResults);
        adobe360MessageInternal.mRequestContext = this.requestContext != null ? this.requestContext.getCopy() : null;
        adobe360MessageInternal.mResponseContext = this.responseContext != null ? this.responseContext.getCopy() : null;
        adobe360MessageInternal.mAcceptedMediaTypes = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(this.acceptedMediaTypes);
        adobe360MessageInternal.mAppSpecificData = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(this.appSpecificData);
        adobe360MessageInternal.mResponseStatusCode = this.responseStatusCode;
        adobe360MessageInternal.mResponseReason = this.responseReason;
        adobe360MessageInternal.mTransportReservedData = this.transportReservedData;
        if (this.inputAssets != null && this.inputAssets.size() > 0) {
            adobe360MessageInternal.mInputAssets = new HashMap<String, Object>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360MessageBuilder.1
                {
                    putAll(Adobe360MessageBuilder.this.inputAssets);
                }
            };
        }
        if (this.outputAssets != null && this.outputAssets.size() > 0) {
            adobe360MessageInternal.mOutputAssets = new HashMap<String, Object>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360MessageBuilder.2
                {
                    putAll(Adobe360MessageBuilder.this.outputAssets);
                }
            };
        }
        adobe360MessageInternal.mFormat = Adobe360Message.Adobe360MessageFormat.ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER;
        Adobe360Exception adobe360ExceptionValidateWithError = adobe360MessageInternal.validateWithError();
        if (adobe360ExceptionValidateWithError == null) {
            return adobe360MessageInternal;
        }
        throw adobe360ExceptionValidateWithError;
    }

    public String getActionId() {
        return this.actionId;
    }

    public void setActionId(String str) {
        this.actionId = str;
    }

    public String getActionType() {
        return this.actionType;
    }

    public void setActionType(String str) {
        this.actionType = str;
    }

    public JSONObject getRequestOptions() {
        return this.requestOptions;
    }

    public void setRequestOptions(JSONObject jSONObject) {
        this.requestOptions = jSONObject;
    }

    public Adobe360Context getRequestContext() {
        return this.requestContext;
    }

    public void setRequestContext(Adobe360Context adobe360Context) {
        this.requestContext = adobe360Context;
    }

    public JSONObject getAcceptedMediaTypes() {
        return this.acceptedMediaTypes;
    }

    public void setAcceptedMediaTypes(JSONObject jSONObject) {
        this.acceptedMediaTypes = jSONObject;
    }

    public JSONObject getAppSpecificData() {
        return this.appSpecificData;
    }

    public void setAppSpecificData(JSONObject jSONObject) {
        this.appSpecificData = jSONObject;
    }

    public JSONObject getResponseResults() {
        return this.responseResults;
    }

    public void setResponseResults(JSONObject jSONObject) {
        this.responseResults = jSONObject;
    }

    public Adobe360Context getResponseContext() {
        return this.responseContext;
    }

    public void setResponseContext(Adobe360Context adobe360Context) {
        this.responseContext = adobe360Context;
    }

    public String getResponseStatusCode() {
        return this.responseStatusCode;
    }

    public void setResponseStatusCode(String str) {
        this.responseStatusCode = str;
    }

    public String getResponseReason() {
        return this.responseReason;
    }

    public void setResponseReason(String str) {
        this.responseReason = str;
    }

    public Map<String, Object> getInputDescriptors() {
        if (this.inputDescriptors != null) {
            return this.inputDescriptors;
        }
        if (this.inputAssets.size() > 0) {
            HashMap map = new HashMap(this.inputAssets.size());
            for (Map.Entry<String, Object> entry : this.inputAssets.entrySet()) {
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
            this.inputDescriptors = map;
            return this.inputDescriptors;
        }
        return null;
    }

    public Map<String, Object> getOutputDescriptors() {
        if (this.outputDescriptors != null) {
            return this.outputDescriptors;
        }
        if (this.outputAssets.size() > 0) {
            HashMap map = new HashMap(this.outputAssets.size());
            for (Map.Entry<String, Object> entry : this.outputAssets.entrySet()) {
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
            this.outputDescriptors = map;
            return this.outputDescriptors;
        }
        return null;
    }

    public JSONObject getTransportReservedData() {
        return this.transportReservedData;
    }

    public void setTransportReservedData(JSONObject jSONObject) {
        this.transportReservedData = jSONObject;
    }

    private long getSizeOfAsset(Adobe360Asset adobe360Asset) throws Adobe360Exception {
        String pathForComponent;
        long length = 0;
        if (adobe360Asset.getData() == null) {
            return 0L;
        }
        if (adobe360Asset.getData().getClass().equals(String.class)) {
            File file = new File((String) adobe360Asset.getData());
            if (!file.exists()) {
                throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorMissingAsset, null, null);
            }
            return file.length();
        }
        if (adobe360Asset.getData().getClass().equals(byte[].class)) {
            return ((byte[]) adobe360Asset.getData()).length;
        }
        if (!adobe360Asset.getData().getClass().equals(AdobeDCXElement.class)) {
            return 0L;
        }
        AdobeDCXElement adobeDCXElement = (AdobeDCXElement) adobe360Asset.getData();
        for (AdobeDCXComponent adobeDCXComponent : adobeDCXElement.getAllComponents()) {
            if (!adobeDCXElement.getBranchCore().isComponentUnmanaged(adobeDCXComponent)) {
                try {
                    pathForComponent = adobeDCXElement.getBranchCore().getPathForComponent(adobeDCXComponent);
                } catch (AdobeDCXException e2) {
                    AdobeLogger.log(Level.DEBUG, Adobe360MessageBuilder.class.getSimpleName(), null, e2);
                    pathForComponent = null;
                }
                if (pathForComponent != null) {
                    length += adobeDCXComponent.getLength();
                }
            }
        }
        return length + ((long) adobeDCXElement.getManifest().getLocalData().length());
    }

    public long getSizeOfAssets() throws Adobe360Exception {
        long sizeOfAsset;
        long sizeOfAsset2 = 0;
        Iterator<Map.Entry<String, Object>> it = this.outputAssets.entrySet().iterator();
        while (true) {
            sizeOfAsset = sizeOfAsset2;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, Object> next = it.next();
            if (next.getValue() instanceof List) {
                Iterator it2 = ((ArrayList) next.getValue()).iterator();
                while (it2.hasNext()) {
                    sizeOfAsset += getSizeOfAsset((Adobe360Asset) it2.next());
                }
                sizeOfAsset2 = sizeOfAsset;
            } else {
                sizeOfAsset2 = getSizeOfAsset((Adobe360Asset) next.getValue()) + sizeOfAsset;
            }
        }
        for (Map.Entry<String, Object> entry : this.inputAssets.entrySet()) {
            if (entry.getValue() instanceof List) {
                Iterator it3 = ((ArrayList) entry.getValue()).iterator();
                while (it3.hasNext()) {
                    sizeOfAsset += getSizeOfAsset((Adobe360Asset) it3.next());
                }
            } else {
                sizeOfAsset += getSizeOfAsset((Adobe360Asset) entry.getValue());
            }
        }
        return sizeOfAsset;
    }
}
