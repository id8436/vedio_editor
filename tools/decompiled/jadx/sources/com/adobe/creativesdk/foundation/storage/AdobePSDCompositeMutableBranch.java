package com.adobe.creativesdk.foundation.storage;

import android.graphics.BitmapFactory;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Point;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Rect;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Size;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePSDCompositeMutableBranch extends AdobePSDCompositeBranch {
    static final /* synthetic */ boolean $assertionsDisabled;
    private Rect bounds;
    private AdobeDCXCompositeBranch dcxBranch;
    private AdobeDCXCompositeMutableBranch mutableDcxBranch;

    static {
        $assertionsDisabled = !AdobePSDCompositeMutableBranch.class.desiredAssertionStatus();
    }

    AdobePSDCompositeMutableBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        super(adobeDCXCompositeMutableBranch);
        this.dcxBranch = adobeDCXCompositeMutableBranch;
        this.mutableDcxBranch = adobeDCXCompositeMutableBranch;
        this.bounds = new Rect();
    }

    void setMutableDcxBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        this.mutableDcxBranch = adobeDCXCompositeMutableBranch;
    }

    AdobePSDCompositeMutableBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        super(adobeDCXCompositeBranch);
        this.mutableDcxBranch = adobeDCXCompositeBranch.getMutableCopy();
    }

    AdobeDCXCompositeMutableBranch getMutableDcxBranch() {
        return this.mutableDcxBranch;
    }

    void setDcxBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        this.dcxBranch = adobeDCXCompositeBranch;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePSDCompositeBranch
    AdobeDCXCompositeBranch getDcxBranch() {
        return this.dcxBranch;
    }

    public void setName(String str) {
        this.mutableDcxBranch.setName(str);
    }

    public void setBounds(Rect rect) {
        this.mutableDcxBranch.setValue(AdobePSDUtils.getBoundsFromRect(rect), "psd#bounds");
    }

    void setVersion(String str) {
        this.mutableDcxBranch.setValue(str, AdobePSDCompositeConstants.AdobePSDCompositeVersionKey);
    }

    public void setAppliedLayerComp(AdobePSDLayerComp adobePSDLayerComp) {
        Integer componentId = null;
        if (adobePSDLayerComp != null) {
            componentId = adobePSDLayerComp.getComponentId();
        }
        if (adobePSDLayerComp == null) {
            this.mutableDcxBranch.remove(AdobePSDCompositeConstants.AdobePSDCompositeAppliedLayerCompKey);
        } else {
            this.mutableDcxBranch.setValue(componentId, AdobePSDCompositeConstants.AdobePSDCompositeAppliedLayerCompKey);
        }
    }

    AdobeDCXManifestNode getLayersRootNodeCreateIfNecessary(boolean z) throws AdobeDCXException {
        AdobeDCXManifestNode childWithId = this.dcxBranch.getChildWithId(AdobePSDCompositeConstants.AdobePSDCompositeLayersNodeId);
        if (childWithId == null && z) {
            return this.mutableDcxBranch.addChild(AdobeDCXMutableManifestNode.createNodeWithId(AdobePSDCompositeConstants.AdobePSDCompositeLayersNodeId), null);
        }
        return childWithId;
    }

    AdobeDCXManifestNode getLayerCompsRootNodeCreateIfNecessary(boolean z) throws AdobeDCXException {
        AdobeDCXManifestNode childWithId = this.mutableDcxBranch.getChildWithId(AdobePSDCompositeConstants.AdobePSDCompositeLayerCompsNodeId);
        if (childWithId == null && z) {
            return this.mutableDcxBranch.addChild(AdobeDCXMutableManifestNode.createNodeWithId(AdobePSDCompositeConstants.AdobePSDCompositeLayerCompsNodeId), null);
        }
        return childWithId;
    }

    AdobeDCXMutableManifestNode assignUniqueLayerIdTo(AdobeDCXManifestNode adobeDCXManifestNode) {
        AdobeDCXMutableManifestNode mutableCopy;
        if (adobeDCXManifestNode.getClass().getName().equals(AdobeDCXMutableManifestNode.class.getName())) {
            mutableCopy = (AdobeDCXMutableManifestNode) adobeDCXManifestNode;
        } else {
            mutableCopy = adobeDCXManifestNode.getMutableCopy();
        }
        Integer nextLayerId = getNextLayerId();
        mutableCopy.setValue(nextLayerId, AdobePSDCompositeConstants.AdobePSDCompositeLayerIdKey);
        mutableCopy.setNodeId("layer-" + nextLayerId);
        return mutableCopy;
    }

    Integer findMaxLayerIdStartingAtNode(AdobeDCXManifestNode adobeDCXManifestNode, Integer num) {
        List<AdobeDCXManifestNode> childrenOf = this.dcxBranch.getChildrenOf(adobeDCXManifestNode);
        Integer numFindMaxLayerIdStartingAtNode = (Integer) adobeDCXManifestNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerIdKey);
        if (numFindMaxLayerIdStartingAtNode == null || numFindMaxLayerIdStartingAtNode.intValue() <= num.intValue()) {
            numFindMaxLayerIdStartingAtNode = num;
        } else if (adobeDCXManifestNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeKey).equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeGroupKey)) {
            numFindMaxLayerIdStartingAtNode = Integer.valueOf(numFindMaxLayerIdStartingAtNode.intValue() + 1);
        }
        if (childrenOf == null) {
            return numFindMaxLayerIdStartingAtNode;
        }
        Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
        while (true) {
            Integer num2 = numFindMaxLayerIdStartingAtNode;
            if (it.hasNext()) {
                numFindMaxLayerIdStartingAtNode = findMaxLayerIdStartingAtNode(it.next(), num2);
            } else {
                return num2;
            }
        }
    }

    Integer countLayersStartingAtNode(AdobeDCXManifestNode adobeDCXManifestNode, Integer num) {
        for (AdobeDCXManifestNode adobeDCXManifestNode2 : this.dcxBranch.getChildrenOf(adobeDCXManifestNode)) {
            num = Integer.valueOf(countLayersStartingAtNode(adobeDCXManifestNode2, Integer.valueOf(num.intValue() + 1)).intValue() + num.intValue());
        }
        return num;
    }

    Integer getNextLayerId() {
        Integer numFindMaxLayerIdStartingAtNode = 0;
        try {
            AdobeDCXManifestNode layersRootNodeCreateIfNecessary = getLayersRootNodeCreateIfNecessary(false);
            if (layersRootNodeCreateIfNecessary != null) {
                numFindMaxLayerIdStartingAtNode = findMaxLayerIdStartingAtNode(layersRootNodeCreateIfNecessary, 0);
            }
            if (numFindMaxLayerIdStartingAtNode.intValue() < 2) {
                numFindMaxLayerIdStartingAtNode = 2;
            }
            return Integer.valueOf(numFindMaxLayerIdStartingAtNode.intValue() + 1);
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeMutableBranch.getNextLayerId", e2.getMessage());
            return -1;
        }
    }

    public AdobePSDMutableLayerNode insertLayer(AdobePSDLayerNode adobePSDLayerNode, AdobePSDLayerNode adobePSDLayerNode2, Integer num) throws AdobeDCXException {
        return makeMutableLayerNodeFromManifestNode(this.mutableDcxBranch.insertChild(assignUniqueLayerIdTo(adobePSDLayerNode.getNode()), adobePSDLayerNode2 != null ? adobePSDLayerNode2.getNode() : getLayersRootNodeCreateIfNecessary(true), num.intValue()));
    }

    public AdobePSDMutableLayerNode addLayer(AdobePSDLayerNode adobePSDLayerNode, AdobePSDLayerNode adobePSDLayerNode2) throws AdobeDCXException {
        if ($assertionsDisabled || adobePSDLayerNode2 == null || adobePSDLayerNode2.getType() == AdobePSDLayerNodeType.AdobePSDLayerNodeTypeGroup) {
            return makeMutableLayerNodeFromManifestNode(this.mutableDcxBranch.addChild(assignUniqueLayerIdTo(adobePSDLayerNode.getNode()), adobePSDLayerNode2 != null ? adobePSDLayerNode2.getNode() : getLayersRootNodeCreateIfNecessary(true)));
        }
        throw new AssertionError();
    }

    public AdobePSDMutableLayerNode updateLayer(AdobePSDLayerNode adobePSDLayerNode) throws AdobeDCXException {
        AdobePSDMutableLayerNode mutableCopy;
        if (adobePSDLayerNode.getClass().getName().equals(AdobePSDMutableLayerNode.class.getName())) {
            if (!(adobePSDLayerNode instanceof AdobePSDMutableLayerNode)) {
                mutableCopy = null;
            } else {
                mutableCopy = (AdobePSDMutableLayerNode) adobePSDLayerNode;
            }
        } else {
            mutableCopy = adobePSDLayerNode.getMutableCopy();
        }
        AdobePSDLayerNode adobePSDLayerNodeMakeLayerNodeFromManifestNode = makeLayerNodeFromManifestNode(this.mutableDcxBranch.getChildWithId(adobePSDLayerNode.getNode().getNodeId()));
        if (adobePSDLayerNodeMakeLayerNodeFromManifestNode.hasPixelMask()) {
            Rect pixelMaskBounds = adobePSDLayerNodeMakeLayerNodeFromManifestNode.getPixelMaskBounds();
            JSONObject jSONObject = (JSONObject) mutableCopy.getNode().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
            if (!$assertionsDisabled && jSONObject == null) {
                throw new AssertionError();
            }
            pixelMaskBounds.setOrigin(mutableCopy.getPixelMaskBounds().getOrigin());
            try {
                jSONObject.put("psd#bounds", AdobePSDUtils.getBoundsFromRect(pixelMaskBounds));
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobePSDCompositeMutableBranch.class.getSimpleName(), "Failure while updating the mutablePixelMaskData", e2);
            }
        }
        if (((JSONObject) adobePSDLayerNodeMakeLayerNodeFromManifestNode.getNode().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerPixelsDataKey)) != null) {
            Rect pixelLayerBounds = adobePSDLayerNodeMakeLayerNodeFromManifestNode.getPixelLayerBounds();
            JSONObject jSONObject2 = (JSONObject) mutableCopy.getNode().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerPixelsDataKey);
            if (!$assertionsDisabled && jSONObject2 == null) {
                throw new AssertionError();
            }
            pixelLayerBounds.setOrigin(mutableCopy.getPixelLayerBounds().getOrigin());
            try {
                jSONObject2.put("psd#bounds", AdobePSDUtils.getBoundsFromRect(pixelLayerBounds));
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobePSDCompositeMutableBranch.class.getSimpleName(), "Failure while updating the mutablePixelLayerData", e3);
            }
        }
        return makeMutableLayerNodeFromManifestNode(this.mutableDcxBranch.updateChild(mutableCopy.getNode()));
    }

    public AdobePSDMutableLayerNode removeLayer(AdobePSDLayerNode adobePSDLayerNode) {
        return makeMutableLayerNodeFromManifestNode(this.mutableDcxBranch.removeChild(adobePSDLayerNode.getNode()));
    }

    AdobePSDLayerComp insertLayerComp(AdobePSDLayerComp adobePSDLayerComp, Integer num) {
        throw new RuntimeException("Not yet implemented.");
    }

    AdobePSDLayerComp addLayerComp(AdobePSDLayerComp adobePSDLayerComp) {
        throw new RuntimeException("Not yet implemented.");
    }

    public AdobePSDLayerComp updateLayerComp(AdobePSDLayerComp adobePSDLayerComp) throws AdobeDCXException {
        return makeLayerCompFromManifestNode(this.mutableDcxBranch.updateChild(adobePSDLayerComp.getNode()));
    }

    public AdobePSDLayerComp removeLayerComp(AdobePSDLayerComp adobePSDLayerComp) {
        return makeLayerCompFromManifestNode(this.mutableDcxBranch.removeChild(adobePSDLayerComp.getNode()));
    }

    public AdobePSDMutableLayerNode updatePixelsOf(AdobePSDLayerNode adobePSDLayerNode, Point point, String str, boolean z) {
        if (!$assertionsDisabled && adobePSDLayerNode.getType() != AdobePSDLayerNodeType.AdobePSDLayerNodeTypeRGBPixels) {
            throw new AssertionError();
        }
        Size size = new Size();
        if (addOrUpdateComponentOf(adobePSDLayerNode, adobePSDLayerNode.getNode().getNodeId() + "-pixels", "pixelLayer", AdobePSDCompositeConstants.AdobePSDCompositeLayerTypePixelsKey + adobePSDLayerNode.getLayerId() + ".png", str, z, size) == null) {
            return null;
        }
        Rect rect = new Rect();
        rect.setOrigin(point);
        rect.setSize(size);
        JSONObject jSONObject = (JSONObject) adobePSDLayerNode.getNode().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerPixelsDataKey);
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("psd#bounds", AdobePSDUtils.getBoundsFromRect(rect));
            AdobeDCXMutableManifestNode mutableCopy = adobePSDLayerNode.getNode().getMutableCopy();
            mutableCopy.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerPixelsDataKey);
            try {
                return makeMutableLayerNodeFromManifestNode(this.mutableDcxBranch.updateChild(mutableCopy));
            } catch (Exception e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeMutableBranch.updatePixelsOf", e2.getMessage());
                return null;
            }
        } catch (JSONException e3) {
            return null;
        }
    }

    public AdobePSDMutableLayerNode updateMaskOf(AdobePSDLayerNode adobePSDLayerNode, Point point, String str, boolean z) throws AdobeDCXException {
        JSONException e2;
        AdobeDCXMutableManifestNode mutableCopy;
        Size size;
        try {
            size = new Size();
        } catch (JSONException e3) {
            e2 = e3;
            mutableCopy = null;
        }
        if (addOrUpdateComponentOf(adobePSDLayerNode, adobePSDLayerNode.getNode().getNodeId() + "-mask", "pixelMask", AdobePSDCompositeConstants.AdobePSDCompositeLayerTypePixelsKey + adobePSDLayerNode.getLayerId() + "Mask.png", str, z, size) == null) {
            return null;
        }
        Rect rect = new Rect();
        rect.origin = point;
        rect.size = size;
        JSONObject jSONObject = (JSONObject) adobePSDLayerNode.getNode().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
        JSONObject jSONObject2 = jSONObject == null ? new JSONObject() : jSONObject;
        jSONObject2.put("psd#bounds", AdobePSDUtils.getBoundsFromRect(rect));
        mutableCopy = adobePSDLayerNode.getNode().getMutableCopy();
        try {
            mutableCopy.setValue(jSONObject2, AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
        } catch (JSONException e4) {
            e2 = e4;
            AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeMutableBranch.updateMaskOf", e2.getMessage());
        }
        return makeMutableLayerNodeFromManifestNode(this.mutableDcxBranch.updateChild(mutableCopy));
        AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeMutableBranch.updateMaskOf", e2.getMessage());
        return makeMutableLayerNodeFromManifestNode(this.mutableDcxBranch.updateChild(mutableCopy));
    }

    public AdobePSDMutableLayerNode removeMaskOf(AdobePSDLayerNode adobePSDLayerNode) throws AdobeDCXException {
        AdobeDCXComponent componentOf = getComponentOf(adobePSDLayerNode.getNode(), "pixelMask");
        if (componentOf != null) {
            this.mutableDcxBranch.removeComponent(componentOf);
        }
        AdobeDCXMutableManifestNode mutableCopy = adobePSDLayerNode.getNode().getMutableCopy();
        mutableCopy.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
        return makeMutableLayerNodeFromManifestNode(this.mutableDcxBranch.updateChild(mutableCopy));
    }

    AdobeDCXComponent addOrUpdateComponentOf(AdobePSDLayerNode adobePSDLayerNode, String str, String str2, String str3, String str4, boolean z, Size size) {
        if (size != null) {
            try {
                FileInputStream fileInputStream = new FileInputStream(str4);
                byte[] byteArray = IOUtils.toByteArray(fileInputStream);
                fileInputStream.close();
                if (BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length) != null) {
                    size.width = r1.getWidth();
                    size.height = r1.getHeight();
                    AdobeDCXComponent componentOf = getComponentOf(adobePSDLayerNode.node, str2);
                    if (componentOf != null) {
                        return this.mutableDcxBranch.updateComponent(componentOf, str4, z);
                    }
                    return this.mutableDcxBranch.addComponent(str, str, "image/png", str2, str3, adobePSDLayerNode.node, str4, z);
                }
                throw AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure, null);
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
            } catch (AdobeAssetException e3) {
                e3.printStackTrace();
            } catch (FileNotFoundException e4) {
                e4.printStackTrace();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
        return null;
    }

    AdobePSDMutableLayerNode makeMutableLayerNodeFromManifestNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        return new AdobePSDMutableLayerNode(adobeDCXManifestNode.getClass().getName().equals(AdobeDCXMutableManifestNode.class.getName()) ? (AdobeDCXMutableManifestNode) adobeDCXManifestNode : adobeDCXManifestNode.getMutableCopy());
    }
}
