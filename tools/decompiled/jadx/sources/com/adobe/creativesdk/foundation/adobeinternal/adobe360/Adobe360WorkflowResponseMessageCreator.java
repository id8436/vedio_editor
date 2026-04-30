package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXElement;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowResponseMessageCreator {
    public static final String ADOBE_360_WORKFLOW_PRIMARY_OUTPUT_NAME = "primaryOutput";
    private Adobe360Asset actionItem;
    private List<Adobe360Asset> actionItemArray;
    IAdobe360WorkflowResponseMessageCreatorCallback responseMessageCreatorCallback;
    private String responseReason;
    private JSONObject responseResults;
    private String responseStatusCode;

    public Adobe360Message create360WorkflowResponseMessageWithRequestMessage(Adobe360Message adobe360Message) throws AdobeCSDKException {
        String adobeID;
        if (adobe360Message == null) {
            throw AdobeStorageErrorUtils.create360Error(Adobe360ErrorCode.Adobe360ErrorInvalidMessageData, "Request Adobe360Message can't be null");
        }
        Adobe360MessageBuilder adobe360MessageBuilder = new Adobe360MessageBuilder(adobe360Message);
        String applicationName = Adobe360Utils.getApplicationName();
        try {
            adobeID = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getAdobeID();
        } catch (RuntimeException e2) {
            AdobeLogger.log(Level.DEBUG, Adobe360WorkflowResponseMessageCreator.class.getSimpleName(), e2.getMessage());
            adobeID = null;
        }
        adobe360MessageBuilder.setResponseContext(Adobe360Context.createContextWithAppName(applicationName, adobeID, null, null));
        if (this.responseMessageCreatorCallback != null) {
            this.responseMessageCreatorCallback.updateResponseMessageBuilder(adobe360MessageBuilder);
        }
        if (this.actionItem != null) {
            adobe360MessageBuilder.addOutputAsset(this.actionItem, ADOBE_360_WORKFLOW_PRIMARY_OUTPUT_NAME);
        }
        if (this.actionItemArray != null) {
            adobe360MessageBuilder.addOutputAssetArray(this.actionItemArray, ADOBE_360_WORKFLOW_PRIMARY_OUTPUT_NAME);
        }
        if (this.responseStatusCode != null) {
            adobe360MessageBuilder.setResponseStatusCode(this.responseStatusCode);
        }
        if (this.responseReason != null) {
            adobe360MessageBuilder.setResponseReason(this.responseReason);
        }
        if (this.responseResults != null) {
            adobe360MessageBuilder.setResponseResults(this.responseResults);
        }
        return adobe360MessageBuilder.buildMessage();
    }

    public void setActionItemFilePath(String str, String str2) {
        this.actionItem = Adobe360Asset.createAssetWithData(str, str2, ADOBE_360_WORKFLOW_PRIMARY_OUTPUT_NAME);
        this.actionItemArray = null;
    }

    public void setActionItemData(byte[] bArr, String str) {
        this.actionItem = Adobe360Asset.createAssetWithData(bArr, str, ADOBE_360_WORKFLOW_PRIMARY_OUTPUT_NAME);
        this.actionItemArray = null;
    }

    public void setActionItemDcxElement(AdobeDCXElement adobeDCXElement, String str) {
        this.actionItem = Adobe360Asset.createAssetWithData(adobeDCXElement, str, ADOBE_360_WORKFLOW_PRIMARY_OUTPUT_NAME);
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

    public void setResponseStatusCode(String str) {
        this.responseStatusCode = str;
    }

    public void setResponseReason(String str) {
        this.responseReason = str;
    }

    public void setResponseResults(JSONObject jSONObject) {
        this.responseResults = jSONObject;
    }

    public IAdobe360WorkflowResponseMessageCreatorCallback getRequestMessageCreatorCallback() {
        return this.responseMessageCreatorCallback;
    }

    public void setRequestMessageCreatorCallback(IAdobe360WorkflowResponseMessageCreatorCallback iAdobe360WorkflowResponseMessageCreatorCallback) {
        this.responseMessageCreatorCallback = iAdobe360WorkflowResponseMessageCreatorCallback;
    }
}
