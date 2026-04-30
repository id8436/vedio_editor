package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Path;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Rect;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePSDCompositeBranch {
    private final AdobeDCXCompositeBranch _dcxBranch;

    public AdobePSDCompositeBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        this._dcxBranch = adobeDCXCompositeBranch;
    }

    public String getName() {
        return this._dcxBranch.getName();
    }

    public Rect getBounds() {
        try {
            return AdobePSDUtils.getRectFromPSDBounds(this._dcxBranch.get("psd#bounds"));
        } catch (JSONException e2) {
            return null;
        }
    }

    public AdobePSDLayerComp getAppliedLayerComp() {
        Integer num = (Integer) this._dcxBranch.get(AdobePSDCompositeConstants.AdobePSDCompositeAppliedLayerCompKey);
        if (num == null) {
            return null;
        }
        return getLayerComp(num);
    }

    AdobeDCXManifestNode getLayersRootNode() {
        return this._dcxBranch.getChildWithId(AdobePSDCompositeConstants.AdobePSDCompositeLayersNodeId);
    }

    AdobeDCXManifestNode getLayerCompsRootNode() {
        return this._dcxBranch.getChildWithId(AdobePSDCompositeConstants.AdobePSDCompositeLayerCompsNodeId);
    }

    AdobePSDLayerNode makeLayerNodeFromManifestNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        return new AdobePSDLayerNode(adobeDCXManifestNode);
    }

    AdobePSDLayerComp makeLayerCompFromManifestNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        return new AdobePSDLayerComp(adobeDCXManifestNode);
    }

    AdobeDCXComponent getComponentOf(AdobeDCXManifestNode adobeDCXManifestNode, String str) {
        for (AdobeDCXComponent adobeDCXComponent : this._dcxBranch.getComponentsOf(adobeDCXManifestNode)) {
            if (adobeDCXComponent.getRelationship().equals(str)) {
                return adobeDCXComponent;
            }
        }
        return null;
    }

    public Integer countNodes(AdobePSDLayerNode adobePSDLayerNode, AdobePSDLayerNodeType adobePSDLayerNodeType, boolean z) {
        List<AdobeDCXManifestNode> childrenOf;
        Integer num = 0;
        AdobeDCXManifestNode node = adobePSDLayerNode != null ? adobePSDLayerNode.getNode() : getLayersRootNode();
        if (node != null && (childrenOf = this._dcxBranch.getChildrenOf(node)) != null) {
            Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
            while (true) {
                Integer numValueOf = num;
                if (!it.hasNext()) {
                    return numValueOf;
                }
                AdobePSDLayerNode adobePSDLayerNodeMakeLayerNodeFromManifestNode = makeLayerNodeFromManifestNode(it.next());
                if (adobePSDLayerNodeMakeLayerNodeFromManifestNode != null) {
                    if (adobePSDLayerNodeMakeLayerNodeFromManifestNode.getType() == adobePSDLayerNodeType) {
                        numValueOf = Integer.valueOf(numValueOf.intValue() + 1);
                    }
                    if (adobePSDLayerNodeMakeLayerNodeFromManifestNode.getType() == AdobePSDLayerNodeType.AdobePSDLayerNodeTypeGroup && z) {
                        numValueOf = Integer.valueOf(countNodes(adobePSDLayerNodeMakeLayerNodeFromManifestNode, adobePSDLayerNodeType, z).intValue() + numValueOf.intValue());
                    }
                }
                num = numValueOf;
            }
        } else {
            return num;
        }
    }

    public Integer countLayerPixels(AdobePSDLayerNode adobePSDLayerNode, AdobePSDLayerNodeType adobePSDLayerNodeType, boolean z) {
        List<AdobeDCXManifestNode> childrenOf;
        Integer num = 0;
        AdobeDCXManifestNode node = adobePSDLayerNode != null ? adobePSDLayerNode.getNode() : getLayersRootNode();
        if (node != null && (childrenOf = this._dcxBranch.getChildrenOf(node)) != null) {
            Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
            while (true) {
                Integer numValueOf = num;
                if (!it.hasNext()) {
                    return numValueOf;
                }
                AdobeDCXManifestNode next = it.next();
                AdobePSDLayerNode adobePSDLayerNodeMakeLayerNodeFromManifestNode = makeLayerNodeFromManifestNode(next);
                if (adobePSDLayerNodeMakeLayerNodeFromManifestNode != null) {
                    if (adobePSDLayerNodeMakeLayerNodeFromManifestNode.getType() == adobePSDLayerNodeType && getComponentOf(next, "pixelLayer") != null) {
                        numValueOf = Integer.valueOf(numValueOf.intValue() + 1);
                    }
                    if (adobePSDLayerNodeMakeLayerNodeFromManifestNode.getType() == AdobePSDLayerNodeType.AdobePSDLayerNodeTypeGroup && z) {
                        numValueOf = Integer.valueOf(numValueOf.intValue() + countLayerPixels(adobePSDLayerNodeMakeLayerNodeFromManifestNode, adobePSDLayerNodeType, z).intValue());
                    }
                }
                num = numValueOf;
            }
        } else {
            return num;
        }
    }

    public Integer countLayerMasks(AdobePSDLayerNode adobePSDLayerNode, AdobePSDLayerNodeType adobePSDLayerNodeType, boolean z) {
        List<AdobeDCXManifestNode> childrenOf;
        Integer num = 0;
        AdobeDCXManifestNode node = adobePSDLayerNode != null ? adobePSDLayerNode.getNode() : getLayersRootNode();
        if (node != null && (childrenOf = this._dcxBranch.getChildrenOf(node)) != null) {
            Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
            while (true) {
                Integer numValueOf = num;
                if (!it.hasNext()) {
                    return numValueOf;
                }
                AdobeDCXManifestNode next = it.next();
                AdobePSDLayerNode adobePSDLayerNodeMakeLayerNodeFromManifestNode = makeLayerNodeFromManifestNode(next);
                if (adobePSDLayerNodeMakeLayerNodeFromManifestNode != null) {
                    if (adobePSDLayerNodeMakeLayerNodeFromManifestNode.getType() == adobePSDLayerNodeType && getComponentOf(next, "pixelMask") != null) {
                        numValueOf = Integer.valueOf(numValueOf.intValue() + 1);
                    }
                    if (adobePSDLayerNodeMakeLayerNodeFromManifestNode.getType() == AdobePSDLayerNodeType.AdobePSDLayerNodeTypeGroup && z) {
                        numValueOf = Integer.valueOf(numValueOf.intValue() + countLayerMasks(adobePSDLayerNodeMakeLayerNodeFromManifestNode, adobePSDLayerNodeType, z).intValue());
                    }
                }
                num = numValueOf;
            }
        } else {
            return num;
        }
    }

    public ArrayList<AdobePSDLayerNode> getLayers(AdobePSDLayerNode adobePSDLayerNode) {
        List<AdobeDCXManifestNode> childrenOf;
        AdobeDCXManifestNode node = adobePSDLayerNode != null ? adobePSDLayerNode.getNode() : getLayersRootNode();
        if (node == null || (childrenOf = this._dcxBranch.getChildrenOf(node)) == null) {
            return null;
        }
        ArrayList<AdobePSDLayerNode> arrayList = new ArrayList<>(childrenOf.size());
        Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
        while (it.hasNext()) {
            AdobePSDLayerNode adobePSDLayerNodeMakeLayerNodeFromManifestNode = makeLayerNodeFromManifestNode(it.next());
            if (adobePSDLayerNodeMakeLayerNodeFromManifestNode != null) {
                arrayList.add(adobePSDLayerNodeMakeLayerNodeFromManifestNode);
            }
        }
        return arrayList;
    }

    public AdobePSDLayerNode getLayer(Integer num) {
        Integer num2;
        if (num == null) {
            return null;
        }
        for (AdobeDCXManifestNode adobeDCXManifestNode : this._dcxBranch.getManifest().getAllChildren().values()) {
            try {
                num2 = (Integer) adobeDCXManifestNode.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerIdKey);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeBranch.getLayer", e2.getMessage());
                num2 = null;
            }
            if (num2 != null && num2.equals(num)) {
                return new AdobePSDLayerNode(adobeDCXManifestNode);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean layerHasVisibleChildren(com.adobe.creativesdk.foundation.storage.AdobePSDLayerNode r6, com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType r7, com.adobe.creativesdk.foundation.storage.AdobePSDLayerComp r8, boolean r9) {
        /*
            r5 = this;
            r0 = 0
            java.util.ArrayList r1 = r5.getLayers(r6)
            if (r1 == 0) goto L2f
            java.util.Iterator r2 = r1.iterator()
            r1 = r0
        Lc:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L5e
            java.lang.Object r0 = r2.next()
            com.adobe.creativesdk.foundation.storage.AdobePSDLayerNode r0 = (com.adobe.creativesdk.foundation.storage.AdobePSDLayerNode) r0
            com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType r3 = r0.getType()
            com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType r4 = com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType.AdobePSDLayerNodeTypeGroup
            if (r3 != r4) goto L45
            boolean r3 = r5.layerIsVisible(r0, r8)
            if (r3 == 0) goto L5c
            if (r9 == 0) goto L30
            boolean r1 = r5.layerHasVisibleChildren(r0, r7, r8, r9)
            r0 = r1
        L2d:
            if (r0 == 0) goto L5a
        L2f:
            return r0
        L30:
            com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType r3 = r0.getType()
            int r3 = r3.value()
            int r4 = r7.value()
            r3 = r3 & r4
            if (r3 == 0) goto L5c
            boolean r1 = r5.layerIsVisible(r0, r8)
            r0 = r1
            goto L2d
        L45:
            com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType r3 = r0.getType()
            int r3 = r3.value()
            int r4 = r7.value()
            r3 = r3 & r4
            if (r3 == 0) goto L5c
            boolean r1 = r5.layerIsVisible(r0, r8)
            r0 = r1
            goto L2d
        L5a:
            r1 = r0
            goto Lc
        L5c:
            r0 = r1
            goto L2d
        L5e:
            r0 = r1
            goto L2f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeBranch.layerHasVisibleChildren(com.adobe.creativesdk.foundation.storage.AdobePSDLayerNode, com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType, com.adobe.creativesdk.foundation.storage.AdobePSDLayerComp, boolean):boolean");
    }

    public boolean layerIsVisible(AdobePSDLayerNode adobePSDLayerNode, AdobePSDLayerComp adobePSDLayerComp) {
        if (adobePSDLayerNode.getBounds().isEmpty()) {
            return false;
        }
        if (adobePSDLayerComp != null) {
            return adobePSDLayerComp.hasLayer(adobePSDLayerNode);
        }
        return adobePSDLayerNode.isVisible();
    }

    public ArrayList getLayersIntersectingPath(Path path, AdobePSDLayerComp adobePSDLayerComp) {
        return null;
    }

    public ArrayList<AdobePSDLayerComp> getLayerComps() {
        List<AdobeDCXManifestNode> childrenOf;
        AdobeDCXManifestNode layerCompsRootNode = getLayerCompsRootNode();
        if (layerCompsRootNode == null || (childrenOf = this._dcxBranch.getChildrenOf(layerCompsRootNode)) == null) {
            return null;
        }
        ArrayList<AdobePSDLayerComp> arrayList = new ArrayList<>(childrenOf.size());
        Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
        while (it.hasNext()) {
            AdobePSDLayerComp adobePSDLayerCompMakeLayerCompFromManifestNode = makeLayerCompFromManifestNode(it.next());
            if (adobePSDLayerCompMakeLayerCompFromManifestNode != null) {
                arrayList.add(adobePSDLayerCompMakeLayerCompFromManifestNode);
            }
        }
        return arrayList;
    }

    public Integer countLayerComps() {
        ArrayList<AdobePSDLayerComp> layerComps = getLayerComps();
        if (layerComps == null) {
            return 0;
        }
        return Integer.valueOf(layerComps.size());
    }

    public AdobePSDLayerComp getLayerComp(Integer num) {
        for (AdobePSDLayerComp adobePSDLayerComp : getLayerComps()) {
            if (adobePSDLayerComp.getComponentId().equals(num)) {
                return adobePSDLayerComp;
            }
        }
        return null;
    }

    public boolean hasPixelsPath(AdobePSDLayerNode adobePSDLayerNode) {
        return getComponentOf(adobePSDLayerNode.getNode(), "pixelLayer") != null;
    }

    public String getPixelsPathOf(AdobePSDLayerNode adobePSDLayerNode) throws AdobeDCXException {
        AdobeDCXComponent componentOf = getComponentOf(adobePSDLayerNode.getNode(), "pixelLayer");
        if (componentOf != null) {
            return this._dcxBranch.getPathForComponent(componentOf);
        }
        return null;
    }

    public boolean hasMaskPathOf(AdobePSDLayerNode adobePSDLayerNode) {
        return getComponentOf(adobePSDLayerNode.getNode(), "pixelMask") != null;
    }

    public String getMaskPathOf(AdobePSDLayerNode adobePSDLayerNode) throws AdobeDCXException {
        AdobeDCXComponent componentOf = getComponentOf(adobePSDLayerNode.getNode(), "pixelMask");
        if (componentOf != null) {
            return this._dcxBranch.getPathForComponent(componentOf);
        }
        return null;
    }

    AdobeDCXCompositeBranch getDcxBranch() {
        return this._dcxBranch;
    }
}
