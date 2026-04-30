package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryRepresentation {
    public static final String AdobeLibraryRepresentationRelationshipTypeAlternate = "alternate";
    public static final String AdobeLibraryRepresentationRelationshipTypePrimary = "primary";
    public static final String AdobeLibraryRepresentationRelationshipTypeRendition = "rendition";
    private AdobeDCXComponent mComponent;
    protected String mFilePath;
    protected AdobeDCXManifestNode mNode;
    protected String mSourceHref;

    protected AdobeLibraryRepresentation(AdobeDCXManifestNode adobeDCXManifestNode) {
        this.mNode = adobeDCXManifestNode;
        this.mComponent = null;
    }

    protected AdobeLibraryRepresentation(AdobeDCXComponent adobeDCXComponent) {
        this.mComponent = adobeDCXComponent;
        this.mNode = null;
    }

    public AdobeLibraryRepresentation() {
    }

    @Deprecated
    public AdobeLibraryMutableRepresentation getMutableCopy() {
        AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation;
        if (this.mNode != null) {
            adobeLibraryMutableRepresentation = new AdobeLibraryMutableRepresentation(this.mNode.getMutableCopy());
        } else {
            adobeLibraryMutableRepresentation = new AdobeLibraryMutableRepresentation(this.mComponent.getMutableCopy());
        }
        adobeLibraryMutableRepresentation.setFilePath(this.mFilePath);
        adobeLibraryMutableRepresentation.setSourceHref(this.mSourceHref);
        return adobeLibraryMutableRepresentation;
    }

    public Object getNodeDictValueForKey(String str) {
        if (this.mNode != null) {
            return this.mNode.getDictionary().opt(str);
        }
        return null;
    }

    public List<String> getAllNodeDictKeys() {
        if (this.mNode == null) {
            return new ArrayList();
        }
        Iterator<String> itKeys = this.mNode.getDictionary().keys();
        ArrayList arrayList = new ArrayList();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        return arrayList;
    }

    public AdobeDCXNode getDCXNode() {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
        return null;
    }

    public String getNodeType() {
        if (this.mNode != null) {
            return this.mNode.getType();
        }
        return null;
    }

    public String getNodeId() {
        if (this.mNode != null) {
            return this.mNode.getNodeId();
        }
        return null;
    }

    public String getRepresentationId() {
        if (getNodeId() != null) {
            return getNodeId();
        }
        if (this.mComponent != null) {
            return this.mComponent.getComponentId();
        }
        return null;
    }

    public String getType() {
        if (getNodeId() != null) {
            if (isExternalLink()) {
                return (String) getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkContentTypeKey);
            }
            return getNodeType();
        }
        if (this.mComponent != null) {
            return this.mComponent.getType();
        }
        return null;
    }

    public String getRelationship() {
        if (getNodeId() == null) {
            if (this.mComponent != null) {
                return this.mComponent.getRelationship();
            }
            return null;
        }
        String str = (String) getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationRelationshipKey);
        if (str == null) {
            return (String) getNodeDictValueForKey("relationship");
        }
        return str;
    }

    public int getWidth() {
        if (getNodeId() != null) {
            if (!AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(getNodeType())) {
                return 0;
            }
            Object nodeDictValueForKey = getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationWidthKey);
            return nodeDictValueForKey == null ? 0 : ((Integer) nodeDictValueForKey).intValue();
        }
        if (this.mComponent != null) {
            return this.mComponent.getWidth();
        }
        return 0;
    }

    public int getHeight() {
        if (getNodeId() != null) {
            if (!AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(getNodeType())) {
                return 0;
            }
            Object nodeDictValueForKey = getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationHeightKey);
            return nodeDictValueForKey == null ? 0 : ((Integer) nodeDictValueForKey).intValue();
        }
        if (this.mComponent != null) {
            return this.mComponent.getHeight();
        }
        return 0;
    }

    public String getMD5() {
        if (this.mComponent != null) {
            return this.mComponent.getMd5();
        }
        return null;
    }

    public boolean isFullSize() {
        int iIntValue;
        Object nodeDictValueForKey;
        if (getNodeId() != null) {
            if (!AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(getNodeType()) || (nodeDictValueForKey = getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationFullSizeKey)) == null) {
                return false;
            }
            iIntValue = ((Integer) nodeDictValueForKey).intValue();
        } else if (this.mComponent != null) {
            Object valueForKey = this.mComponent.getValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationFullSizeKey);
            if (valueForKey == null) {
                return false;
            }
            iIntValue = ((Integer) valueForKey).intValue();
        } else {
            iIntValue = 0;
        }
        return iIntValue != 0;
    }

    public boolean isExternalLink() {
        return getNodeId() != null && AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(getNodeType());
    }

    public long getContentLength() {
        if (getNodeId() != null && isExternalLink()) {
            return AdobeDCXUtils.getLongVal(getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkContentLengthKey));
        }
        if (this.mComponent == null) {
            return 0L;
        }
        return this.mComponent.getLength();
    }

    public int getOrder() {
        Object valueForKey;
        int iIntValue;
        if (getNodeId() != null) {
            Object nodeDictValueForKey = getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationOrderKey);
            if (nodeDictValueForKey == null) {
                iIntValue = 0;
            } else {
                iIntValue = ((Integer) nodeDictValueForKey).intValue();
            }
            return iIntValue;
        }
        if (this.mComponent == null || (valueForKey = this.mComponent.getValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationOrderKey)) == null) {
            return 0;
        }
        return ((Integer) valueForKey).intValue();
    }

    public Object getValueForKey(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        if (getNodeId() != null) {
            return getNodeDictValueForKey(String.format("%s#%s", str2, str));
        }
        if (this.mComponent != null) {
            return this.mComponent.getValueForKey(String.format("%s#%s", str2, str));
        }
        return null;
    }

    public JSONObject getTrackingData() {
        JSONObject jSONObject = new JSONObject();
        for (String str : getAllNodeDictKeys()) {
            if (str.endsWith("#trackingdata")) {
                try {
                    jSONObject.put(str.substring(0, str.lastIndexOf("#trackingdata")), getNodeDictValueForKey(str));
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentation.class.getSimpleName(), null, e2);
                }
            }
        }
        return jSONObject;
    }

    public boolean isCompatibleType(String str) {
        return AdobeLibraryUtils.isCompatibleType(str, getType());
    }

    public URI getContentURL() {
        AdobeStorageErrorUtils.verifyState(false, "getContentURL not valid on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
        return null;
    }

    public boolean getContentPath(Handler handler, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback) {
        AdobeStorageErrorUtils.verifyState(false, "getContentPath not valid on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
        return false;
    }

    public boolean haveLocalFile() {
        AdobeStorageErrorUtils.verifyState(false, "haveLocalFile not valid on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
        return false;
    }

    public boolean setValue(Object obj, String str, String str2) throws AdobeLibraryException {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
        return false;
    }

    public void setRelationship(String str) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
    }

    public void setFullSize(boolean z) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
    }

    public void setWidth(int i) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
    }

    public void setHeight(int i) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
    }

    public void setContentLength(long j) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
    }

    public void setOrder(int i) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
    }

    public void clearOrder() {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model.");
    }

    protected void setComponent(AdobeDCXComponent adobeDCXComponent) {
        this.mComponent = adobeDCXComponent;
        this.mNode = null;
    }

    public AdobeDCXComponent getComponent() {
        return this.mComponent;
    }

    protected void setFilePath(String str) {
        this.mFilePath = str;
    }

    protected void setSourceHref(String str) {
        this.mSourceHref = str;
    }

    @Deprecated
    public AdobeDCXManifestNode getNode() {
        return this.mNode;
    }
}
