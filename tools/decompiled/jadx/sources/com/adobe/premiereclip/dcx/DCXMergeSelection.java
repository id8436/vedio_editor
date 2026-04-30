package com.adobe.premiereclip.dcx;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXIndexWrapper;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DCXMergeSelection {
    private AdobeDCXCompositeBranch branch;
    private AdobeDCXCompositeMutableBranch mutableBranch;
    private AdobeDCXManifestNode node;
    private String nodeId;

    public DCXMergeSelection(AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str) {
        this.branch = adobeDCXCompositeBranch;
        this.nodeId = str;
    }

    public DCXMergeSelection(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str) {
        this.mutableBranch = adobeDCXCompositeMutableBranch;
        this.branch = adobeDCXCompositeMutableBranch;
        this.nodeId = str;
    }

    public AdobeDCXManifestNode node() {
        return this.branch.getChildWithId(this.nodeId);
    }

    public AdobeDCXCompositeBranch branch() {
        return this.branch;
    }

    public AdobeDCXCompositeMutableBranch mutableBranch() {
        return this.mutableBranch;
    }

    public String getNodeId() {
        return this.nodeId;
    }

    public Boolean isNewerThan(DCXMergeSelection dCXMergeSelection) {
        if (dCXMergeSelection == null) {
            return true;
        }
        AdobeDCXManifestNode adobeDCXManifestNodeNode = node();
        if (adobeDCXManifestNodeNode == null) {
            return false;
        }
        AdobeDCXManifestNode adobeDCXManifestNodeNode2 = dCXMergeSelection.node();
        if (adobeDCXManifestNodeNode2 == null) {
            return true;
        }
        JSONObject jSONObjectAppPropertiesFromNode = DCXUtils.appPropertiesFromNode(adobeDCXManifestNodeNode);
        return Boolean.valueOf(DCXUtils.dictionaryWithMostRecentModificationTime(jSONObjectAppPropertiesFromNode, DCXUtils.appPropertiesFromNode(adobeDCXManifestNodeNode2)) == jSONObjectAppPropertiesFromNode);
    }

    public Boolean ensureNewest(DCXMergeSelection dCXMergeSelection) {
        if (this.mutableBranch != null) {
            if (!isNewerThan(dCXMergeSelection).booleanValue()) {
                Log.d("DCXUtils", String.format("Replacing entire node %s on branch %s with node %s on branch %s", this.nodeId, branch().getName(), dCXMergeSelection.nodeId, dCXMergeSelection.branch().getName()));
                AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
                AdobeDCXManifestNode childWithId = branch().getChildWithId(dCXMergeSelection.branch().findParentOfChild(dCXMergeSelection.node(), adobeDCXIndexWrapper).getNodeId());
                int iMin = Math.min((int) adobeDCXIndexWrapper.index, branch().getChildrenOf(childWithId).size());
                mutableBranch().removeChild(node());
                try {
                    AdobeDCXIndexWrapper adobeDCXIndexWrapper2 = new AdobeDCXIndexWrapper();
                    adobeDCXIndexWrapper2.index = iMin;
                    this.nodeId = mutableBranch().copyChild(dCXMergeSelection.node(), dCXMergeSelection.branch(), childWithId, adobeDCXIndexWrapper2.index).getNodeId();
                } catch (AdobeDCXException e2) {
                    e2.printStackTrace();
                }
                return false;
            }
        } else {
            Log.e("DCXUtils", String.format("DCXMergeSelection.ensureNewest - Selection does not contain a mutable version of branch %s", branch().getName()));
        }
        return true;
    }

    public Boolean ensureNewestProperties(DCXMergeSelection dCXMergeSelection) {
        if (mutableBranch() != null) {
            if (!isNewerThan(dCXMergeSelection).booleanValue()) {
                Log.d("DCXUtils", String.format("Replacing properties in node %s on branch %s with node %s on branch %s", this.nodeId, branch().getName(), dCXMergeSelection.nodeId, dCXMergeSelection.branch().getName()));
                AdobeDCXMutableManifestNode mutableCopy = node().getMutableCopy();
                DCXUtils.setAppPropertiesForNode(mutableCopy, DCXUtils.appPropertiesFromNode(dCXMergeSelection.node()));
                try {
                    mutableBranch().updateChild(mutableCopy);
                } catch (AdobeDCXException e2) {
                    e2.printStackTrace();
                }
                return false;
            }
        } else {
            Log.e("DCXUtils", String.format("DCXMergeSelection.ensureNewestProperties - Selection does not contain a mutable version of branch %s", branch().getName()));
        }
        return true;
    }

    public Boolean isEqual(DCXMergeSelection dCXMergeSelection) {
        boolean z = false;
        if (dCXMergeSelection == null) {
            return false;
        }
        if (branch().equals(dCXMergeSelection.branch()) && getNodeId().equals(dCXMergeSelection.getNodeId())) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
