package com.adobe.premiereclip.dcx;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DCXMergeHandler {
    private static final String TAG = "DCXMergeHandler";
    public AdobeDCXCompositeBranch base;
    public AdobeDCXComposite composite;
    public AdobeDCXCompositeBranch current;
    public AdobeDCXCompositeMutableBranch merge;
    private Error mergeError;
    public AdobeDCXCompositeBranch pulled;

    public DCXMergeHandler(AdobeDCXComposite adobeDCXComposite) {
        this.composite = adobeDCXComposite;
        this.pulled = this.composite.getPulled();
        this.base = this.composite.getBase();
        this.current = this.composite.getCurrent();
    }

    void logError(String str) {
        if (!str.isEmpty()) {
            Log.e(TAG, str);
        }
    }

    public void doMerge() {
        Log.d(TAG, String.format("[DCXMergeHandler doMerge:] id = %s, name = %s", this.composite.getCompositeId(), this.composite.getCurrent().getName()));
        this.mergeError = null;
        if (mergeByAcceptingOnlyAvailableOption().booleanValue()) {
            removeUnusedMediaInBranch(this.merge);
            resolveCompositeUsingMergedBranch();
            return;
        }
        if (Boolean.valueOf(this.composite.getBase().getCompositeState().equals(this.composite.getCurrent().getCompositeState())).booleanValue()) {
            Log.d(TAG, String.format("[DCXMergeHandler doMerge:] id = %s, name = %s, server version has changes but client does not; so we are simply accepting the server version.", this.composite.getCompositeId(), this.composite.getCurrent().getName()));
            mergeByAcceptingServerBranch();
            removeUnusedMediaInBranch(this.merge);
            removeInvalidLookNodes();
            resolveCompositeUsingMergedBranch();
            return;
        }
        Boolean boolDoSmartMerge = doSmartMerge();
        removeUnusedMediaInBranch(this.merge);
        if (boolDoSmartMerge.booleanValue()) {
            logError("[DCXMergeHandler doMerge:] Encountered an error in doSmartMerge");
        } else {
            resolveCompositeUsingMergedBranch();
        }
    }

    public void mergePreferences() {
        Log.d(TAG, String.format("[DCXMergeHandler mergePreferences:] id = %s, name = %s", this.composite.getCompositeId(), this.composite.getCurrent().getName()));
        this.mergeError = null;
        if (mergeByAcceptingOnlyAvailableOption().booleanValue()) {
            DCXUtils.removeUnusedMediaRefNodesInPreferences(this.merge);
            resolveCompositeUsingMergedBranch();
            return;
        }
        if (Boolean.valueOf(this.composite.getBase().getCompositeState().equals(this.composite.getCurrent().getCompositeState())).booleanValue()) {
            Log.d(TAG, String.format("[DCXMergeHandler mergePreferences:] id = %s, name = %s, server version has changes but client does not; so we are simply accepting the server version.", this.composite.getCompositeId(), this.composite.getCurrent().getName()));
            mergeByAcceptingServerBranch();
            DCXUtils.removeUnusedMediaRefNodesInPreferences(this.merge);
            removeInvalidLookNodes();
            resolveCompositeUsingMergedBranch();
            return;
        }
        Boolean boolDoSmartMerge = doSmartMerge();
        DCXUtils.removeUnusedMediaRefNodesInPreferences(this.merge);
        if (boolDoSmartMerge.booleanValue()) {
            logError("[DCXMergeHandler mergePreferences:] Encountered an error in doSmartPreferenceMerge");
        } else {
            resolveCompositeUsingMergedBranch();
        }
    }

    public void removeInvalidLookNodes() {
        AdobeDCXManifestNode lookNode = DCXUtils.getLookNode(this.merge);
        if (lookNode != null) {
            List<AdobeDCXComponent> componentsOf = this.merge.getComponentsOf(lookNode);
            if (componentsOf == null || componentsOf.size() <= 0) {
                Log.d(TAG, "removing invalid node from the current branch " + lookNode.getNodeId());
                this.merge.removeChild(lookNode);
            }
        }
    }

    void mergeByAcceptingServerBranch() {
        this.merge = this.composite.getPulled().getMutableCopy();
    }

    void resolveCompositeUsingMergedBranch() {
        if (this.merge != null) {
            try {
                this.composite.resolvePullWithBranch(this.merge);
                return;
            } catch (AdobeDCXException e2) {
                logError(String.format("resolveCompositeUsingMergedBranch error: %s", e2.toString()));
                e2.printStackTrace();
                return;
            }
        }
        logError("ERROR: calling resolveCompositeUsingMergedBranch, but we haven't populated the merge branch yet!");
    }

    Boolean mergeByAcceptingOnlyAvailableOption() {
        if (this.current == null) {
            Log.d(TAG, "No Current branch, accepting 'pulled'");
            this.merge = this.composite.getPulled().getMutableCopy();
            return true;
        }
        if (this.base == null) {
            Log.d(TAG, "No Base branch, accepting 'current'");
            this.merge = this.composite.getCurrent().getMutableCopy();
            return true;
        }
        if (this.pulled == null) {
            Log.d(TAG, "No Pulled branch, accepting 'current'");
            this.merge = this.composite.getCurrent().getMutableCopy();
            return true;
        }
        return false;
    }

    private Boolean doSmartMerge() throws JSONException {
        Boolean.valueOf(true);
        this.merge = this.composite.getPulled().getMutableCopy();
        ArrayList<AdobeDCXManifestNode> videoClipNodes = DCXUtils.getVideoClipNodes(this.base);
        ArrayList<AdobeDCXManifestNode> videoClipNodes2 = DCXUtils.getVideoClipNodes(this.pulled);
        ArrayList<AdobeDCXManifestNode> videoClipNodes3 = DCXUtils.getVideoClipNodes(this.current);
        ArrayList<String> arrayListIDsOfNodes = DCXUtils.IDsOfNodes(videoClipNodes);
        ArrayList<String> arrayListIDsOfNodes2 = DCXUtils.IDsOfNodes(videoClipNodes2);
        ArrayList<String> arrayListIDsOfNodes3 = DCXUtils.IDsOfNodes(videoClipNodes3);
        ArrayList arrayList = (ArrayList) arrayListIDsOfNodes.clone();
        ArrayList arrayList2 = (ArrayList) arrayListIDsOfNodes2.clone();
        ArrayList arrayList3 = (ArrayList) arrayListIDsOfNodes3.clone();
        ArrayList arrayList4 = new ArrayList();
        for (String str : arrayListIDsOfNodes) {
            if (!arrayList2.contains(str) || !arrayList3.contains(str)) {
                arrayList4.add(str);
            }
        }
        ArrayList<String> arrayList5 = new ArrayList<>();
        for (String str2 : arrayListIDsOfNodes3) {
            if (!arrayList.contains(str2)) {
                arrayList5.add(str2);
            }
        }
        Log.d(TAG, String.format("VideoClips in base: %s", arrayListIDsOfNodes.toString()));
        Log.d(TAG, String.format("VideoClips in pulled: %s", arrayListIDsOfNodes2.toString()));
        Log.d(TAG, String.format("VideoClips in current: %s", arrayListIDsOfNodes3.toString()));
        Log.d(TAG, String.format("These video clips were deleted somewhere, so deleting them from merged: %s", arrayList4.toString()));
        Iterator it = arrayList4.iterator();
        while (it.hasNext()) {
            AdobeDCXManifestNode childWithId = this.merge.getChildWithId((String) it.next());
            if (childWithId != null) {
                this.merge.removeChild(childWithId);
            }
        }
        Log.d(TAG, String.format("These video clips were added in 'current', so we'll add them to 'merged': %s", arrayList5.toString()));
        copyClipIDs(arrayList5, this.current, DCXUtils.getVideoTrackNode(this.merge), this.merge);
        copyNewerVideoClipsFromSrcBranch(this.current, this.merge);
        ensureMediaNodesForClipNodeIDs(DCXUtils.IDsOfNodes(DCXUtils.getVideoClipNodes(this.merge)), this.merge, this.current);
        mergeAudioClip();
        ensureMediaNodesForClipNodeIDs(DCXUtils.IDsOfNodes(DCXUtils.getAudioClipNodes(this.merge)), this.merge, this.current);
        ensureNoDuplicateSortableIdentifiersInBranch(this.merge);
        mergeSequencePropertiesFromBranch(this.current, this.merge);
        mergeProjectPropertiesFromBranch(this.current, this.merge);
        return false;
    }

    JSONObject editsInNodeId(String str, ArrayList<String> arrayList) throws JSONException {
        Object obj;
        Object obj2;
        Object obj3;
        JSONObject jSONObject = new JSONObject();
        AdobeDCXManifestNode childWithId = this.base.getChildWithId(str);
        AdobeDCXManifestNode childWithId2 = this.pulled.getChildWithId(str);
        AdobeDCXManifestNode childWithId3 = this.current.getChildWithId(str);
        if (childWithId == null || childWithId2 == null || childWithId3 == null) {
            return jSONObject;
        }
        JSONObject jSONObjectAppPropertiesFromNode = DCXUtils.appPropertiesFromNode(childWithId);
        JSONObject jSONObjectAppPropertiesFromNode2 = DCXUtils.appPropertiesFromNode(childWithId2);
        JSONObject jSONObjectAppPropertiesFromNode3 = DCXUtils.appPropertiesFromNode(childWithId3);
        if (jSONObjectAppPropertiesFromNode == null || jSONObjectAppPropertiesFromNode2 == null || jSONObjectAppPropertiesFromNode3 == null) {
            return jSONObject;
        }
        try {
            for (String str2 : arrayList) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    obj = jSONObjectAppPropertiesFromNode.get(str2);
                } catch (JSONException e2) {
                    Log.d(TAG, String.format("key - %s not there in base", str2));
                    obj = null;
                }
                try {
                    obj2 = jSONObjectAppPropertiesFromNode2.get(str2);
                } catch (JSONException e3) {
                    Log.d(TAG, String.format("key - %s not there in pulled", str2));
                    obj2 = null;
                }
                try {
                    obj3 = jSONObjectAppPropertiesFromNode3.get(str2);
                } catch (JSONException e4) {
                    Log.d(TAG, String.format("key - %s not there in current", str2));
                    obj3 = null;
                }
                Boolean boolValueOf = Boolean.valueOf((obj == null || obj.equals(obj2)) ? false : true);
                Boolean boolValueOf2 = Boolean.valueOf((obj == null || obj.equals(obj3)) ? false : true);
                if (boolValueOf.booleanValue() && !boolValueOf2.booleanValue()) {
                    jSONObject2.put(str2, obj2);
                }
                if (boolValueOf2.booleanValue() && !boolValueOf.booleanValue()) {
                    jSONObject2.put(str2, obj3);
                }
                if (jSONObject2.length() > 0) {
                    jSONObject.put(str2, jSONObject2.get(str2));
                }
            }
        } catch (JSONException e5) {
            logError(e5.toString());
            e5.printStackTrace();
        }
        return jSONObject;
    }

    void threeWayMergeForNodeID(String str, ArrayList<String> arrayList) throws JSONException {
        AdobeDCXManifestNode childWithId;
        JSONObject jSONObjectAppPropertiesFromNode;
        AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch = this.merge;
        JSONObject jSONObjectEditsInNodeId = editsInNodeId(str, arrayList);
        if (jSONObjectEditsInNodeId.length() > 0 && (jSONObjectAppPropertiesFromNode = DCXUtils.appPropertiesFromNode((childWithId = adobeDCXCompositeMutableBranch.getChildWithId(str)))) != null) {
            try {
                Iterator<String> itKeys = jSONObjectEditsInNodeId.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectAppPropertiesFromNode.put(next, jSONObjectEditsInNodeId.get(next));
                }
            } catch (JSONException e2) {
                logError(e2.toString());
                e2.printStackTrace();
            }
            AdobeDCXMutableManifestNode mutableCopy = childWithId.getMutableCopy();
            DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObjectAppPropertiesFromNode);
            try {
                adobeDCXCompositeMutableBranch.updateChild(mutableCopy);
            } catch (AdobeDCXException e3) {
                logError(e3.toString());
                e3.printStackTrace();
            }
        }
    }

    void copyClipIDs(ArrayList<String> arrayList, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            AdobeDCXManifestNode childWithId = adobeDCXCompositeBranch.getChildWithId(it.next());
            if (childWithId != null) {
                try {
                    adobeDCXCompositeMutableBranch.copyChild(childWithId, adobeDCXCompositeBranch, adobeDCXManifestNode, adobeDCXCompositeMutableBranch.getChildrenOf(adobeDCXManifestNode).size());
                } catch (AdobeDCXException e2) {
                    logError(e2.toString());
                    e2.printStackTrace();
                }
            }
        }
    }

    ArrayList<String> copyNewerVideoClipsFromSrcBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (AdobeDCXManifestNode adobeDCXManifestNode : DCXUtils.getVideoClipNodes(adobeDCXCompositeMutableBranch)) {
            AdobeDCXManifestNode childWithId = adobeDCXCompositeBranch.getChildWithId(adobeDCXManifestNode.getNodeId());
            if (childWithId != null && replacePropertiesInNode(adobeDCXManifestNode, adobeDCXCompositeMutableBranch, childWithId, adobeDCXCompositeBranch).booleanValue()) {
                arrayList.add(childWithId.getNodeId());
            }
        }
        return arrayList;
    }

    void ensureMediaNodesForClipNodeIDs(ArrayList<String> arrayList, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        AdobeDCXManifestNode childWithAbsolutePath;
        AdobeDCXManifestNode mediaNode;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                String str = (String) DCXUtils.appPropertiesFromNode(adobeDCXCompositeMutableBranch.getChildWithId(it.next())).get(DCXProjectKeys.kDCXKey_Clip_mediaRef);
                if (adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(str) == null && (childWithAbsolutePath = adobeDCXCompositeBranch.getChildWithAbsolutePath(str)) != null && (mediaNode = DCXUtils.getMediaNode(adobeDCXCompositeMutableBranch)) != null) {
                    try {
                        adobeDCXCompositeMutableBranch.copyChild(childWithAbsolutePath, adobeDCXCompositeBranch, mediaNode, adobeDCXCompositeMutableBranch.getChildrenOf(mediaNode).size());
                    } catch (AdobeDCXException e2) {
                        logError(e2.toString());
                        e2.printStackTrace();
                    }
                }
            } catch (JSONException e3) {
                logError(e3.toString());
                e3.printStackTrace();
                return;
            }
        }
    }

    void mergeProjectPropertiesFromBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        JSONObject jSONObject = (JSONObject) adobeDCXCompositeBranch.get(DCXProjectKeys.kDCX_AppProperties);
        JSONObject jSONObject2 = (JSONObject) adobeDCXCompositeMutableBranch.get(DCXProjectKeys.kDCX_AppProperties);
        Object objDictionaryWithMostRecentModificationTime = DCXUtils.dictionaryWithMostRecentModificationTime(jSONObject, jSONObject2);
        if (!objDictionaryWithMostRecentModificationTime.equals(jSONObject2)) {
            adobeDCXCompositeMutableBranch.setValue(objDictionaryWithMostRecentModificationTime, DCXProjectKeys.kDCX_AppProperties);
        }
    }

    void mergeSequencePropertiesFromBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) throws JSONException {
        AdobeDCXManifestNode lookNode;
        AdobeDCXManifestNode sequenceNode = DCXUtils.getSequenceNode(adobeDCXCompositeMutableBranch);
        if (sequenceNode != null) {
            Boolean boolReplacePropertiesInNode = replacePropertiesInNode(DCXUtils.getSequenceNode(adobeDCXCompositeMutableBranch), adobeDCXCompositeMutableBranch, DCXUtils.getSequenceNode(adobeDCXCompositeBranch), adobeDCXCompositeBranch);
            threeWayMergeForNodeID(sequenceNode.getNodeId(), new ArrayList<>(Arrays.asList(DCXProjectKeys.kDCXKey_Sequence_fadeIn, DCXProjectKeys.kDCXKey_Sequence_fadeOut, DCXProjectKeys.kDCXKey_Sequence_autoDuck, DCXProjectKeys.kDCXKey_Sequence_crossDissolves)));
            if (boolReplacePropertiesInNode.booleanValue() && (lookNode = DCXUtils.getLookNode(adobeDCXCompositeBranch)) != null) {
                DCXUtils.setLookNode(adobeDCXCompositeMutableBranch, lookNode.getMutableCopy());
            }
        }
    }

    void ensureNoDuplicateSortableIdentifiersInBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        AdobeDCXManifestNode videoTrackNode = DCXUtils.getVideoTrackNode(adobeDCXCompositeMutableBranch);
        if (videoTrackNode != null) {
            DCXUtils.removeDuplicateSortableValuesInChildrenOfNode(adobeDCXCompositeMutableBranch, videoTrackNode.getNodeId());
        }
    }

    void removeUnusedMediaInBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        DCXUtils.removeUnusedMediaRefNodes(adobeDCXCompositeMutableBranch);
    }

    public void mergeAudioClip() {
        ArrayList<AdobeDCXManifestNode> audioClipNodes = DCXUtils.getAudioClipNodes(this.merge);
        int size = audioClipNodes.size();
        Assert.assertTrue("DCX Merge: the audio clip count <= 1 in merge branch", size <= 1);
        ArrayList<AdobeDCXManifestNode> audioClipNodes2 = DCXUtils.getAudioClipNodes(this.current);
        int size2 = audioClipNodes2.size();
        Assert.assertTrue("DCX Merge: the audio clip count <= 1 in current branch", size2 <= 1);
        if (size != size2) {
            Log.d(TAG, "Determining which audio track node to use...");
            replaceNode(DCXUtils.getAudioTrackNode(this.merge), this.merge, DCXUtils.getAudioTrackNode(this.current), this.current);
        } else if (size > 0) {
            Log.d(TAG, "Determining which properties to use for the audio track node...");
            replacePropertiesInNode(audioClipNodes.get(0), this.merge, audioClipNodes2.get(0), this.current);
        } else {
            Log.d(TAG, "Neither branch has an audio clip");
        }
    }

    public Boolean replaceNode(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXManifestNode adobeDCXManifestNode2, AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        String nodeId = adobeDCXManifestNode != null ? adobeDCXManifestNode.getNodeId() : null;
        String nodeId2 = adobeDCXManifestNode2 != null ? adobeDCXManifestNode2.getNodeId() : null;
        if (nodeId == null || nodeId2 == null) {
            return Boolean.valueOf(nodeId2 != null);
        }
        return Boolean.valueOf(DCXMergeSelectionFactory.createSelectionWithMutableBranch(adobeDCXCompositeMutableBranch, nodeId).ensureNewest(DCXMergeSelectionFactory.createSelectionWithBranch(adobeDCXCompositeBranch, nodeId2)).booleanValue() ? false : true);
    }

    public Boolean replacePropertiesInNode(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXManifestNode adobeDCXManifestNode2, AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        String nodeId = adobeDCXManifestNode != null ? adobeDCXManifestNode.getNodeId() : null;
        String nodeId2 = adobeDCXManifestNode2 != null ? adobeDCXManifestNode2.getNodeId() : null;
        if (nodeId == null || nodeId2 == null) {
            return Boolean.valueOf(nodeId2 != null);
        }
        return Boolean.valueOf(DCXMergeSelectionFactory.createSelectionWithMutableBranch(adobeDCXCompositeMutableBranch, nodeId).ensureNewestProperties(DCXMergeSelectionFactory.createSelectionWithBranch(adobeDCXCompositeBranch, nodeId2)).booleanValue() ? false : true);
    }
}
