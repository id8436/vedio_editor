package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePSDLayerComp {
    private final AdobeDCXManifestNode node;

    AdobePSDLayerComp(AdobeDCXManifestNode adobeDCXManifestNode) {
        this.node = adobeDCXManifestNode;
    }

    public Integer getComponentId() {
        return (Integer) this.node.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerCompIdKey);
    }

    AdobeDCXManifestNode getNode() {
        return this.node;
    }

    public String getName() {
        return this.node.getName();
    }

    public ArrayList getLayerIds() {
        try {
            return (ArrayList) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerCompLayerIdsKey);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerComp.getLayerIds", e2.getMessage());
            return null;
        }
    }

    public boolean hasLayerId(Integer num) {
        if (num != null) {
            Iterator it = getLayerIds().iterator();
            while (it.hasNext()) {
                if (it.next().equals(num)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean hasLayer(AdobePSDLayerNode adobePSDLayerNode) {
        return adobePSDLayerNode != null && hasLayerId(adobePSDLayerNode.getLayerId());
    }

    public AdobePSDMutableLayerComp getMutableCopy() {
        return new AdobePSDMutableLayerComp(this.node.getMutableCopy());
    }
}
