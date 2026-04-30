package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXElement;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowRequestMessageCreator {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String ADOBE_360_WORKFLOW_CALLING_APP = "calling-app";
    public static final String ADOBE_360_WORKFLOW_PRIMARY_INPUT_NAME = "primaryInput";
    private JSONObject acceptedMediaTypes;
    private Adobe360Asset actionItem;
    private List<Adobe360Asset> actionItemArray;
    private JSONObject appSpecificData;
    private IAdobe360WorkflowRequestMessageCreatorCallback requestMessageCreatorCallback;
    private JSONObject requestOptions;

    static {
        $assertionsDisabled = !Adobe360WorkflowRequestMessageCreator.class.desiredAssertionStatus();
    }

    public Adobe360Message create360WorkflowRequestMessageWithAction(Adobe360WorkflowAction adobe360WorkflowAction) throws AdobeCSDKException {
        if (!$assertionsDisabled && adobe360WorkflowAction == null) {
            throw new AssertionError("Action can't be null");
        }
        Adobe360MessageBuilder adobe360MessageBuilder = new Adobe360MessageBuilder();
        adobe360MessageBuilder.setActionId(AdobeStorageUtils.generateUuid());
        adobe360MessageBuilder.setRequestContext(Adobe360Context.createContextWithAppName(Adobe360Utils.getApplicationName(), AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getAdobeID(), null, null));
        if (this.requestMessageCreatorCallback != null) {
            this.requestMessageCreatorCallback.updateRequestMessageBuilder(adobe360MessageBuilder);
        }
        if (this.appSpecificData != null) {
            adobe360MessageBuilder.setAppSpecificData(this.appSpecificData);
        }
        adobe360MessageBuilder.setActionType(adobe360WorkflowAction.getType().toString());
        if (this.actionItem != null) {
            adobe360MessageBuilder.addInputAsset(this.actionItem, ADOBE_360_WORKFLOW_PRIMARY_INPUT_NAME);
        }
        if (this.actionItemArray != null) {
            adobe360MessageBuilder.addInputAssetArray(this.actionItemArray, ADOBE_360_WORKFLOW_PRIMARY_INPUT_NAME);
        }
        if (this.acceptedMediaTypes != null) {
            adobe360MessageBuilder.setAcceptedMediaTypes(this.acceptedMediaTypes);
        }
        if (this.requestOptions != null) {
            adobe360MessageBuilder.setRequestOptions(this.requestOptions);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ADOBE_360_WORKFLOW_CALLING_APP, Adobe360Utils.getAppPackageName());
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowRequestMessageCreator", null, e2);
        }
        adobe360MessageBuilder.setTransportReservedData(jSONObject);
        return adobe360MessageBuilder.buildMessage();
    }

    public JSONObject getAppSpecificData() {
        return this.appSpecificData;
    }

    public void setAppSpecificData(JSONObject jSONObject) {
        this.appSpecificData = jSONObject;
    }

    public void setActionItemFilePath(String str, String str2) {
        this.actionItem = Adobe360Asset.createAssetWithData(str, str2, ADOBE_360_WORKFLOW_PRIMARY_INPUT_NAME);
        this.actionItemArray = null;
    }

    public void setActionItemData(byte[] bArr, String str) {
        this.actionItem = Adobe360Asset.createAssetWithData(bArr, str, ADOBE_360_WORKFLOW_PRIMARY_INPUT_NAME);
        this.actionItemArray = null;
    }

    public void setActionItemDcxElement(AdobeDCXElement adobeDCXElement, String str) {
        this.actionItem = Adobe360Asset.createAssetWithData(adobeDCXElement, str, ADOBE_360_WORKFLOW_PRIMARY_INPUT_NAME);
        this.actionItemArray = null;
    }

    public void setActionItem(Adobe360Asset adobe360Asset) {
        this.actionItem = adobe360Asset;
        this.actionItemArray = null;
    }

    public void setActionItemArray(List<Adobe360Asset> list) {
        this.actionItemArray = list;
        this.actionItem = null;
    }

    public void setAcceptedMediaTypes(JSONObject jSONObject) {
        this.acceptedMediaTypes = jSONObject;
    }

    public void setRequestOptions(JSONObject jSONObject) {
        this.requestOptions = jSONObject;
    }

    public IAdobe360WorkflowRequestMessageCreatorCallback getRequestMessageCreatorCallback() {
        return this.requestMessageCreatorCallback;
    }

    public void setRequestMessageCreatorCallback(IAdobe360WorkflowRequestMessageCreatorCallback iAdobe360WorkflowRequestMessageCreatorCallback) {
        this.requestMessageCreatorCallback = iAdobe360WorkflowRequestMessageCreatorCallback;
    }
}
