package com.adobe.premiereclip.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.HSUtils;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.sync.ComponentUtils;
import com.adobe.sync.database.CompositeLoader;
import com.crashlytics.android.Crashlytics;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DCXUtils {
    private static SimpleDateFormat formatter = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.US);

    private DCXUtils() {
    }

    private static ArrayList<AdobeDCXManifestNode> childrenWithType(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode, String str) {
        ArrayList<AdobeDCXManifestNode> arrayList = new ArrayList<>();
        if (adobeDCXCompositeBranch != null && adobeDCXManifestNode != null) {
            for (AdobeDCXManifestNode adobeDCXManifestNode2 : adobeDCXCompositeBranch.getChildrenOf(adobeDCXManifestNode)) {
                if (str.equals(adobeDCXManifestNode2.getType())) {
                    arrayList.add(adobeDCXManifestNode2);
                }
            }
        }
        return arrayList;
    }

    public static String getFormattedDate(Date date) {
        return formatter.format(date);
    }

    public static ArrayList<String> IDsOfNodes(List<AdobeDCXManifestNode> list) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<AdobeDCXManifestNode> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getNodeId());
        }
        return arrayList;
    }

    static void updateModificationTimeForNode(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXManifestNode adobeDCXManifestNode) {
        if (adobeDCXManifestNode != null) {
            try {
                JSONObject jSONObjectAppPropertiesFromNode = appPropertiesFromNode(adobeDCXManifestNode);
                updateModificationTimeInDictionary(jSONObjectAppPropertiesFromNode);
                AdobeDCXMutableManifestNode mutableCopy = adobeDCXManifestNode.getMutableCopy();
                setAppPropertiesForNode(mutableCopy, jSONObjectAppPropertiesFromNode);
                adobeDCXCompositeMutableBranch.updateChild(mutableCopy);
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static AdobeDCXManifestNode getMediaNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        return adobeDCXCompositeBranch.getChildWithAbsolutePath("/media");
    }

    public static AdobeDCXManifestNode getSequenceNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        return adobeDCXCompositeBranch.getChildWithAbsolutePath("/sequence");
    }

    public static AdobeDCXManifestNode getAudioTrackNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        ArrayList<AdobeDCXManifestNode> arrayListChildrenWithType = childrenWithType(adobeDCXCompositeBranch, getSequenceNode(adobeDCXCompositeBranch), "AudioTrack");
        if (arrayListChildrenWithType.isEmpty()) {
            return null;
        }
        return arrayListChildrenWithType.get(0);
    }

    public static AdobeDCXManifestNode getVideoTrackNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        ArrayList<AdobeDCXManifestNode> arrayListChildrenWithType = childrenWithType(adobeDCXCompositeBranch, getSequenceNode(adobeDCXCompositeBranch), "VideoTrack");
        if (arrayListChildrenWithType.isEmpty()) {
            return null;
        }
        return arrayListChildrenWithType.get(0);
    }

    public static ArrayList<AdobeDCXManifestNode> getVideoClipNodes(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        return childrenWithType(adobeDCXCompositeBranch, getVideoTrackNode(adobeDCXCompositeBranch), DCXProjectKeys.kDCXKey_VideoClip_type);
    }

    public static ArrayList<AdobeDCXManifestNode> getAudioClipNodes(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        return childrenWithType(adobeDCXCompositeBranch, getAudioTrackNode(adobeDCXCompositeBranch), DCXProjectKeys.kDCXKey_AudioClip_type);
    }

    public static ArrayList<AdobeDCXManifestNode> getClipNodes(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        ArrayList<AdobeDCXManifestNode> arrayList = new ArrayList<>();
        arrayList.addAll(getVideoClipNodes(adobeDCXCompositeBranch));
        arrayList.addAll(getAudioClipNodes(adobeDCXCompositeBranch));
        return arrayList;
    }

    private static ArrayList<AdobeDCXManifestNode> getMediaRefNodesUsedByClips(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        ArrayList<AdobeDCXManifestNode> arrayList = new ArrayList<>();
        Iterator<AdobeDCXManifestNode> it = getClipNodes(adobeDCXCompositeBranch).iterator();
        while (it.hasNext()) {
            try {
                AdobeDCXManifestNode childWithAbsolutePath = adobeDCXCompositeBranch.getChildWithAbsolutePath((String) appPropertiesFromNode(it.next()).get(DCXProjectKeys.kDCXKey_Clip_mediaRef));
                if (childWithAbsolutePath != null) {
                    arrayList.add(childWithAbsolutePath);
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return arrayList;
    }

    public static void removeUnusedMediaRefNodes(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        ArrayList<String> arrayListIDsOfNodes = IDsOfNodes(getMediaRefNodesUsedByClips(adobeDCXCompositeMutableBranch));
        for (AdobeDCXManifestNode adobeDCXManifestNode : adobeDCXCompositeMutableBranch.getChildrenOf(getMediaNode(adobeDCXCompositeMutableBranch))) {
            if (!arrayListIDsOfNodes.contains(adobeDCXManifestNode.getNodeId())) {
                adobeDCXCompositeMutableBranch.removeChild(adobeDCXManifestNode);
            }
        }
    }

    public static boolean isComponentUsedByClips(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXComponent adobeDCXComponent) {
        return IDsOfNodes(getMediaRefNodesUsedByClips(adobeDCXCompositeMutableBranch)).contains(adobeDCXCompositeMutableBranch.findParentOfComponent(adobeDCXComponent).getNodeId());
    }

    public static AdobeDCXManifestNode getLookNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        return adobeDCXCompositeBranch.getChildWithAbsolutePath("/sequence/look");
    }

    public static AdobeDCXManifestNode getBackgroundTrackNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        ArrayList<AdobeDCXManifestNode> audioClipNodes = getAudioClipNodes(adobeDCXCompositeBranch);
        if (audioClipNodes.size() <= 0) {
            return null;
        }
        return audioClipNodes.get(0);
    }

    public static void setLookNode(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXManifestNode adobeDCXManifestNode) {
        AdobeDCXManifestNode lookNode = getLookNode(adobeDCXCompositeMutableBranch);
        if (lookNode != null) {
            adobeDCXCompositeMutableBranch.removeChild(lookNode);
        }
        updateModificationTimeForNode(adobeDCXCompositeMutableBranch, getSequenceNode(adobeDCXCompositeMutableBranch));
        if (adobeDCXManifestNode != null) {
            try {
                AdobeDCXManifestNode sequenceNode = getSequenceNode(adobeDCXCompositeMutableBranch);
                if (sequenceNode != null) {
                    adobeDCXCompositeMutableBranch.addChild(adobeDCXManifestNode, sequenceNode);
                }
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static JSONObject appPropertiesFromNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        if (adobeDCXManifestNode == null) {
            return null;
        }
        return (JSONObject) adobeDCXManifestNode.get(DCXProjectKeys.kDCX_AppProperties);
    }

    public static void setAppPropertiesForNode(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode, JSONObject jSONObject) {
        if (jSONObject != null) {
            updateModificationTimeInDictionary(jSONObject);
            adobeDCXMutableManifestNode.setValue(jSONObject, DCXProjectKeys.kDCX_AppProperties);
        }
    }

    public static void removeDuplicateSortableValuesInChildrenOfNode(final AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str) {
        ArrayList<String> arrayListIDsOfNodes = IDsOfNodes(adobeDCXCompositeMutableBranch.getChildrenOf(adobeDCXCompositeMutableBranch.getChildWithId(str)));
        Collections.sort(arrayListIDsOfNodes, new Comparator<String>() { // from class: com.adobe.premiereclip.dcx.DCXUtils.1
            @Override // java.util.Comparator
            public int compare(String str2, String str3) {
                try {
                    AdobeDCXManifestNode childWithId = adobeDCXCompositeMutableBranch.getChildWithId(str2);
                    AdobeDCXManifestNode childWithId2 = adobeDCXCompositeMutableBranch.getChildWithId(str3);
                    String str4 = (String) DCXUtils.appPropertiesFromNode(childWithId).get(DCXProjectKeys.kDCXKey_Clip_sortableValue);
                    String str5 = (String) DCXUtils.appPropertiesFromNode(childWithId2).get(DCXProjectKeys.kDCXKey_Clip_sortableValue);
                    if (str4 == null) {
                        str4 = "";
                    }
                    if (str5 == null) {
                        str5 = "";
                    }
                    int iCompareTo = str4.compareTo(str5);
                    if (iCompareTo == 0) {
                        return str2.compareTo(str3);
                    }
                    return iCompareTo;
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return -1;
                }
            }
        });
        int size = arrayListIDsOfNodes.size();
        if (size > 0) {
            int i = size - 1;
            for (int i2 = 0; i2 < i; i2++) {
                try {
                    AdobeDCXManifestNode childWithId = adobeDCXCompositeMutableBranch.getChildWithId(arrayListIDsOfNodes.get(i2));
                    JSONObject jSONObjectAppPropertiesFromNode = appPropertiesFromNode(childWithId);
                    if (((String) jSONObjectAppPropertiesFromNode.get(DCXProjectKeys.kDCXKey_Clip_sortableValue)).equals((String) appPropertiesFromNode(adobeDCXCompositeMutableBranch.getChildWithId(arrayListIDsOfNodes.get(i2 + 1))).get(DCXProjectKeys.kDCXKey_Clip_sortableValue))) {
                        if (i2 > 0) {
                        }
                        jSONObjectAppPropertiesFromNode.put(DCXProjectKeys.kDCXKey_Clip_sortableValue, "");
                        AdobeDCXMutableManifestNode mutableCopy = childWithId.getMutableCopy();
                        setAppPropertiesForNode(mutableCopy, jSONObjectAppPropertiesFromNode);
                        adobeDCXCompositeMutableBranch.updateChild(mutableCopy);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static long getModificationTimeFromDictionary(JSONObject jSONObject) {
        if (jSONObject == null) {
            return 0L;
        }
        try {
            return jSONObject.getLong(DCXProjectKeys.kDCXKey_Object_lastModifiedTime);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public static long updateModificationTimeInDictionary(JSONObject jSONObject) {
        if (jSONObject == null) {
            return 0L;
        }
        long time = new Date().getTime();
        try {
            jSONObject.put(DCXProjectKeys.kDCXKey_Object_lastModifiedTime, time);
            return time;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    private static int compareTimeStamps(long j, long j2) {
        long j3 = j - j2;
        if (j3 < 0) {
            return -1;
        }
        if (j3 > 0) {
            return 1;
        }
        return 0;
    }

    public static JSONObject dictionaryWithMostRecentModificationTime(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return jSONObject2;
        }
        return (jSONObject2 != null && compareTimeStamps(getModificationTimeFromDictionary(jSONObject), getModificationTimeFromDictionary(jSONObject2)) < 0) ? jSONObject2 : jSONObject;
    }

    public static void removeNodeWithIdFromComposite(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str) {
        AdobeDCXManifestNode childWithId = adobeDCXCompositeMutableBranch.getChildWithId(str);
        if (childWithId != null) {
            adobeDCXCompositeMutableBranch.removeChild(childWithId);
        }
    }

    public static String getSortableValueOfCurrentClip(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, Clip clip, Clip clip2) {
        return HSUtils.valueBetween(clip != null ? (String) appPropertiesFromNode(adobeDCXCompositeMutableBranch.getChildWithId(clip.getClipId())).opt(DCXProjectKeys.kDCXKey_Clip_sortableValue) : null, clip2 != null ? (String) appPropertiesFromNode(adobeDCXCompositeMutableBranch.getChildWithId(clip2.getClipId())).opt(DCXProjectKeys.kDCXKey_Clip_sortableValue) : null);
    }

    public static boolean JSONObjectExists(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, Clip clip) {
        return clip == null || appPropertiesFromNode(adobeDCXCompositeMutableBranch.getChildWithId(clip.getClipId())) != null;
    }

    public static String getUnmanagedPath(String str, String str2) {
        return DCXModelController.getInstance().getUnmanagedDataPathForAssetUrl(str, str2);
    }

    public static String getLastModifiedDateFromFilePath(String str) {
        return formatter.format(new Date(new File(str).lastModified()));
    }

    public static String getUCIDForComponent(String str, String str2) {
        return DCXModelController.getInstance().getUCIDForAssetUrl(str, str2);
    }

    public static String convertMilliSecToCurrentFormat(long j) {
        return formatter.format(new Date(j));
    }

    public static String getOriginalAssetDate(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        long jLongValue;
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = adobeDCXCompositeBranch.findParentOfComponent(adobeDCXComponent);
        if (adobeDCXManifestNodeFindParentOfComponent.getAbsolutePath().startsWith("/media")) {
            JSONObject jSONObject = (JSONObject) adobeDCXManifestNodeFindParentOfComponent.get(DCXProjectKeys.kDCX_AppProperties);
            String str = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_MediaRef_creationDate);
            if (str == null) {
                Object objOpt = jSONObject.opt(DCXProjectKeys.kDCXKey_Object_lastModifiedTime);
                if (objOpt == null) {
                    jLongValue = 0;
                } else if (objOpt instanceof Double) {
                    jLongValue = ((Double) objOpt).longValue() * 1000;
                } else {
                    jLongValue = ((Long) objOpt).longValue();
                }
                return convertMilliSecToCurrentFormat(jLongValue);
            }
            return str;
        }
        return null;
    }

    public static String getPathForComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch) throws AdobeDCXException {
        String pathForComponent = adobeDCXCompositeBranch.getPathForComponent(adobeDCXComponent);
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = adobeDCXCompositeBranch.findParentOfComponent(adobeDCXComponent);
        if (adobeDCXManifestNodeFindParentOfComponent instanceof AdobeDCXManifestNode) {
            String absolutePath = adobeDCXManifestNodeFindParentOfComponent.getAbsolutePath();
            return absolutePath.startsWith("/media") ? getUnmanagedPath((String) ((JSONObject) adobeDCXCompositeBranch.getChildWithAbsolutePath(absolutePath).get(DCXProjectKeys.kDCX_AppProperties)).opt(DCXProjectKeys.kDCXKey_MediaRef_assetURL), getOriginalAssetDate(adobeDCXComponent, adobeDCXCompositeBranch)) : pathForComponent;
        }
        return pathForComponent;
    }

    public static String getNonExistentPath() {
        return DCXModelController.getInstance().getPathToCompositionDirectory() + File.separator + "dummyPath" + File.separator + UUID.randomUUID().toString();
    }

    public static boolean canReadCompositeBasedOnVersion(String str) {
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(str);
        AdobeDCXCompositeMutableBranch current = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null).getCurrent();
        if (current == null || current.get(DCXProjectKeys.kDCX_AppProperties) == null) {
            return false;
        }
        return ((JSONObject) current.get(DCXProjectKeys.kDCX_AppProperties)).optInt(DCXProjectKeys.kDCXKey_Project_schemaVersion) >= 6;
    }

    public static void logCrashLytics(String str, Exception exc, String str2) {
        if (exc != null) {
            str2 = exc.toString() + " " + str2;
        }
        Crashlytics.log(3, str, str2);
        if (exc != null) {
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            Crashlytics.log(3, str, stringWriter.toString());
        }
    }

    static void removeUnusedMediaRefNodesInPreferences(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        String strOptString;
        String strOptString2;
        JSONObject jSONObjectAppPropertiesFromNode;
        JSONObject jSONObjectAppPropertiesFromNode2;
        AdobeDCXManifestNode childWithAbsolutePath = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath);
        if (childWithAbsolutePath == null || (jSONObjectAppPropertiesFromNode2 = appPropertiesFromNode(childWithAbsolutePath)) == null) {
            strOptString = "";
        } else {
            strOptString = jSONObjectAppPropertiesFromNode2.optString(DCXProjectKeys.kDCXKey_Clip_mediaRef);
        }
        AdobeDCXManifestNode childWithAbsolutePath2 = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_BumperNode_absolutePath);
        if (childWithAbsolutePath2 == null || (jSONObjectAppPropertiesFromNode = appPropertiesFromNode(childWithAbsolutePath2)) == null) {
            strOptString2 = "";
        } else {
            strOptString2 = jSONObjectAppPropertiesFromNode.optString(DCXProjectKeys.kDCXKey_Clip_mediaRef);
        }
        for (AdobeDCXManifestNode adobeDCXManifestNode : adobeDCXCompositeMutableBranch.getChildrenOf(getMediaNode(adobeDCXCompositeMutableBranch))) {
            if (!strOptString.contains(adobeDCXManifestNode.getNodeId()) || strOptString2.contains(adobeDCXManifestNode.getNodeId())) {
                adobeDCXCompositeMutableBranch.removeChild(adobeDCXManifestNode);
            }
        }
    }

    public static AdobeDCXManifestNode getOverlayNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        return adobeDCXCompositeBranch.getChildWithAbsolutePath("/sequence/overlay");
    }

    public static AdobeDCXManifestNode setOverlayNode(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str, String str2) {
        AdobeDCXManifestNode adobeDCXManifestNodeAddChild;
        AdobeDCXComponent adobeDCXComponentAddComponent;
        boolean z;
        if (adobeDCXCompositeMutableBranch == null) {
            return null;
        }
        AdobeDCXManifestNode sequenceNode = getSequenceNode(adobeDCXCompositeMutableBranch);
        if (sequenceNode != null) {
            AdobeDCXManifestNode overlayNode = getOverlayNode(adobeDCXCompositeMutableBranch);
            if (overlayNode != null) {
                adobeDCXCompositeMutableBranch.removeChild(overlayNode);
            }
            updateModificationTimeForNode(adobeDCXCompositeMutableBranch, sequenceNode);
            AdobeDCXManifestNode sequenceNode2 = getSequenceNode(adobeDCXCompositeMutableBranch);
            AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(UUID.randomUUID().toString(), "Overlay");
            adobeDCXMutableManifestNode.setType(DCXProjectKeys.kDCXKey_Sequence_overlay_mimeType);
            adobeDCXMutableManifestNode.setPath("overlay");
            boolean z2 = false;
            try {
                adobeDCXManifestNodeAddChild = adobeDCXCompositeMutableBranch.addChild(adobeDCXMutableManifestNode, sequenceNode2);
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
                z2 = true;
                adobeDCXManifestNodeAddChild = null;
            }
            if (!z2) {
                String extensionFromFilePath = ComponentUtils.getExtensionFromFilePath(str);
                String mimeTypefromPath = Utilities.getMimeTypefromPath(str);
                if (str != null) {
                    String string = UUID.randomUUID().toString();
                    String str3 = DCXProjectKeys.kDCXKey_Sequence_overlay_image;
                    if (str2 != null && str2.length() > 0) {
                        str3 = str2;
                    }
                    try {
                        adobeDCXComponentAddComponent = adobeDCXCompositeMutableBranch.addComponent(str3, string, mimeTypefromPath, "image", string + "." + extensionFromFilePath, adobeDCXManifestNodeAddChild, str, true, (String) null);
                        z = z2;
                    } catch (AdobeDCXException e3) {
                        e3.printStackTrace();
                        adobeDCXComponentAddComponent = null;
                        z = true;
                    }
                    if (!z && adobeDCXComponentAddComponent != null) {
                        return adobeDCXManifestNodeAddChild;
                    }
                }
            }
        }
        return null;
    }

    public static AdobeDCXManifestNode getBumperNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        return adobeDCXCompositeBranch.getChildWithAbsolutePath("/sequence/bumper");
    }

    static String fileNameOfBumperVideo(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        for (AdobeDCXComponent adobeDCXComponent : adobeDCXCompositeBranch.getComponentsOf(adobeDCXCompositeBranch.getChildWithAbsolutePath("/sequence/bumper"))) {
            if ("video".equals(adobeDCXComponent.getRelationship())) {
                return adobeDCXComponent.getName();
            }
        }
        return null;
    }

    static String fileNameOfOverlayImage(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        for (AdobeDCXComponent adobeDCXComponent : adobeDCXCompositeBranch.getComponentsOf(adobeDCXCompositeBranch.getChildWithAbsolutePath("/sequence/overlay"))) {
            if ("image".equals(adobeDCXComponent.getRelationship())) {
                return adobeDCXComponent.getName();
            }
        }
        return null;
    }

    static String getFileNameOfPreferenceSetting(AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str) {
        String strOptString;
        AdobeDCXManifestNode childWithAbsolutePath;
        JSONObject jSONObject;
        JSONObject jSONObjectAppPropertiesFromNode = appPropertiesFromNode(adobeDCXCompositeBranch.getChildWithAbsolutePath(str));
        if (jSONObjectAppPropertiesFromNode == null || (strOptString = jSONObjectAppPropertiesFromNode.optString(DCXProjectKeys.kDCXKey_Clip_mediaRef)) == null || strOptString.equals("") || (childWithAbsolutePath = adobeDCXCompositeBranch.getChildWithAbsolutePath(strOptString)) == null || (jSONObject = (JSONObject) childWithAbsolutePath.get(DCXProjectKeys.kDCX_AppProperties)) == null) {
            return null;
        }
        return jSONObject.optString(DCXProjectKeys.kDCXKey_Object_fileName);
    }

    public static AdobeDCXManifestNode setBumperNode(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str, String str2) {
        AdobeDCXManifestNode adobeDCXManifestNodeAddChild;
        AdobeDCXComponent adobeDCXComponentAddComponent;
        boolean z;
        if (adobeDCXCompositeMutableBranch == null) {
            return null;
        }
        AdobeDCXManifestNode sequenceNode = getSequenceNode(adobeDCXCompositeMutableBranch);
        if (sequenceNode != null) {
            AdobeDCXManifestNode bumperNode = getBumperNode(adobeDCXCompositeMutableBranch);
            if (bumperNode != null) {
                adobeDCXCompositeMutableBranch.removeChild(bumperNode);
            }
            updateModificationTimeForNode(adobeDCXCompositeMutableBranch, sequenceNode);
            AdobeDCXManifestNode sequenceNode2 = getSequenceNode(adobeDCXCompositeMutableBranch);
            AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(UUID.randomUUID().toString(), "Bumper");
            adobeDCXMutableManifestNode.setType(DCXProjectKeys.kDCXKey_Sequence_bumper_mimeType);
            adobeDCXMutableManifestNode.setPath("bumper");
            boolean z2 = false;
            try {
                adobeDCXManifestNodeAddChild = adobeDCXCompositeMutableBranch.addChild(adobeDCXMutableManifestNode, sequenceNode2);
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
                z2 = true;
                adobeDCXManifestNodeAddChild = null;
            }
            if (!z2) {
                String extensionFromFilePath = ComponentUtils.getExtensionFromFilePath(str);
                String mimeTypefromPath = Utilities.getMimeTypefromPath(str);
                if (str != null) {
                    String string = UUID.randomUUID().toString();
                    String str3 = DCXProjectKeys.kDCXKey_Sequence_bumper_video;
                    if (str2 != null && str2.length() > 0) {
                        str3 = str2;
                    }
                    try {
                        adobeDCXComponentAddComponent = adobeDCXCompositeMutableBranch.addComponent(str3, string, mimeTypefromPath, "video", string + "." + extensionFromFilePath, adobeDCXManifestNodeAddChild, str, true, (String) null);
                        z = z2;
                    } catch (AdobeDCXException e3) {
                        e3.printStackTrace();
                        adobeDCXComponentAddComponent = null;
                        z = true;
                    }
                    if (!z && adobeDCXComponentAddComponent != null) {
                        return adobeDCXManifestNodeAddChild;
                    }
                }
            }
        }
        return null;
    }

    static boolean getPreferenceState(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str, String str2) {
        JSONObject jSONObjectAppPropertiesFromNode;
        AdobeDCXManifestNode childWithAbsolutePath = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(str);
        if (childWithAbsolutePath == null || (jSONObjectAppPropertiesFromNode = appPropertiesFromNode(childWithAbsolutePath)) == null) {
            return false;
        }
        return jSONObjectAppPropertiesFromNode.optBoolean(str2);
    }

    static boolean isValidOverlayPresentInPreferences(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, StringBuilder sb) {
        JSONObject jSONObjectAppPropertiesFromNode;
        AdobeDCXManifestNode childWithAbsolutePath;
        AdobeDCXManifestNode childWithAbsolutePath2 = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath);
        if (childWithAbsolutePath2 != null && (jSONObjectAppPropertiesFromNode = appPropertiesFromNode(childWithAbsolutePath2)) != null) {
            String strOptString = jSONObjectAppPropertiesFromNode.optString(DCXProjectKeys.kDCXKey_Clip_mediaRef);
            if (strOptString.length() > 0 && (childWithAbsolutePath = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(strOptString)) != null) {
                List<AdobeDCXComponent> componentsOf = adobeDCXCompositeMutableBranch.getComponentsOf(childWithAbsolutePath);
                if (componentsOf.size() > 0) {
                    try {
                        sb.append(getPathForComponent(componentsOf.get(0), adobeDCXCompositeMutableBranch));
                        return true;
                    } catch (AdobeDCXException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return false;
    }

    public static boolean isValidBumperPresentInPreferences(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, StringBuilder sb) {
        AdobeDCXManifestNode childWithAbsolutePath;
        AdobeDCXManifestNode childWithAbsolutePath2 = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_BumperNode_absolutePath);
        if (childWithAbsolutePath2 != null) {
            JSONObject jSONObjectAppPropertiesFromNode = appPropertiesFromNode(childWithAbsolutePath2);
            if (jSONObjectAppPropertiesFromNode == null) {
                sb.append(DCXPreferencesManager.defaultBumperPath);
                return false;
            }
            if (jSONObjectAppPropertiesFromNode.optBoolean(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault)) {
                sb.append(DCXPreferencesManager.defaultBumperPath);
                return true;
            }
            String strOptString = jSONObjectAppPropertiesFromNode.optString(DCXProjectKeys.kDCXKey_Clip_mediaRef);
            if (strOptString.length() > 0 && (childWithAbsolutePath = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(strOptString)) != null) {
                List<AdobeDCXComponent> componentsOf = adobeDCXCompositeMutableBranch.getComponentsOf(childWithAbsolutePath);
                if (componentsOf.size() > 0) {
                    try {
                        sb.append(getPathForComponent(componentsOf.get(0), adobeDCXCompositeMutableBranch));
                        return true;
                    } catch (AdobeDCXException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return false;
    }

    public static boolean isDefaultBumperInProject(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        AdobeDCXManifestNode childWithAbsolutePath = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_BumperNode_absolutePath);
        if (childWithAbsolutePath != null) {
            return appPropertiesFromNode(childWithAbsolutePath).optBoolean(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault);
        }
        return false;
    }

    static boolean isDefaultBumperInPreferences(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        JSONObject jSONObjectAppPropertiesFromNode;
        AdobeDCXManifestNode childWithAbsolutePath = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_BumperNode_absolutePath);
        if (childWithAbsolutePath == null || (jSONObjectAppPropertiesFromNode = appPropertiesFromNode(childWithAbsolutePath)) == null) {
            return true;
        }
        return jSONObjectAppPropertiesFromNode.optBoolean(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault);
    }

    static void removeOverlayNodesInComposite(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(str, null, null);
        AdobeDCXManifestNode overlayNode = getOverlayNode(adobeDCXCompositeLoadComposite.getCurrent());
        if (overlayNode != null) {
            adobeDCXCompositeLoadComposite.getCurrent().removeChild(overlayNode);
            updateModificationTimeForNode(adobeDCXCompositeLoadComposite.getCurrent(), getSequenceNode(adobeDCXCompositeLoadComposite.getCurrent()));
        }
    }

    static void removeBumperNodesInComposite(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(str, null, null);
        AdobeDCXManifestNode bumperNode = getBumperNode(adobeDCXCompositeLoadComposite.getCurrent());
        if (bumperNode != null) {
            adobeDCXCompositeLoadComposite.getCurrent().removeChild(bumperNode);
            updateModificationTimeForNode(adobeDCXCompositeLoadComposite.getCurrent(), getSequenceNode(adobeDCXCompositeLoadComposite.getCurrent()));
        }
    }

    static String getMediaFilepathForNodeInPreferencesWithAbsolutePath(String str, String str2, AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, StringBuilder sb) {
        if (adobeDCXManifestNode != null && adobeDCXCompositeMutableBranch != null) {
            JSONObject jSONObjectAppPropertiesFromNode = appPropertiesFromNode(adobeDCXManifestNode);
            String strOptString = jSONObjectAppPropertiesFromNode.optString(DCXProjectKeys.kDCXKey_Clip_mediaRef);
            if (str2.equals(DCXProjectKeys.kDCXKey_BumperNode_absolutePath)) {
                if (jSONObjectAppPropertiesFromNode.optBoolean(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault)) {
                    String str3 = DCXPreferencesManager.defaultBumperPath;
                    File file = new File(str3);
                    if (file.exists() && file.isDirectory()) {
                        return str3;
                    }
                } else {
                    return extractAndVerifyAssetPathFromPreferences(adobeDCXCompositeMutableBranch, strOptString, sb);
                }
            } else if (str2.equals(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath)) {
                return extractAndVerifyAssetPathFromPreferences(adobeDCXCompositeMutableBranch, strOptString, sb);
            }
        }
        return null;
    }

    static String extractAndVerifyAssetPathFromPreferences(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str, StringBuilder sb) {
        AdobeDCXManifestNode childWithAbsolutePath = adobeDCXCompositeMutableBranch.getChildWithAbsolutePath(str);
        if (childWithAbsolutePath != null && str.length() > 0) {
            List<AdobeDCXComponent> componentsOf = adobeDCXCompositeMutableBranch.getComponentsOf(childWithAbsolutePath);
            if (componentsOf.size() > 0) {
                AdobeDCXComponent adobeDCXComponent = componentsOf.get(0);
                String path = adobeDCXComponent.getPath();
                JSONObject jSONObject = (JSONObject) childWithAbsolutePath.get(DCXProjectKeys.kDCX_AppProperties);
                String strOptString = jSONObject.optString(DCXProjectKeys.kDCXKey_MediaRef_assetURL);
                if (strOptString != null && !"".equals(strOptString) && path != null && jSONObject.optString(DCXProjectKeys.kDCXKey_Object_fileName) != null) {
                    sb.append(jSONObject.optString(DCXProjectKeys.kDCXKey_Object_fileName));
                }
                try {
                    return getPathForComponent(adobeDCXComponent, adobeDCXCompositeMutableBranch);
                } catch (AdobeDCXException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
        }
        return null;
    }

    static boolean isKeyPresentInSequenceProperties(AdobeDCXManifestNode adobeDCXManifestNode, String str) {
        JSONObject jSONObjectOptJSONObject = appPropertiesFromNode(adobeDCXManifestNode).optJSONObject("preferences");
        return jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean(str);
    }

    public static String filePathInComponentForBumperNodeInBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        String pathForComponent;
        List<AdobeDCXComponent> componentsOf = adobeDCXCompositeMutableBranch.getComponentsOf(getBumperNode(adobeDCXCompositeMutableBranch));
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= componentsOf.size()) {
                return null;
            }
            AdobeDCXComponent adobeDCXComponent = componentsOf.get(i2);
            if (adobeDCXComponent.getRelationship().equals("video")) {
                try {
                    pathForComponent = adobeDCXCompositeMutableBranch.getPathForComponent(adobeDCXComponent);
                } catch (AdobeDCXException e2) {
                    e2.printStackTrace();
                    pathForComponent = null;
                }
                if (pathForComponent != null && isKeyPresentInSequenceProperties(getSequenceNode(adobeDCXCompositeMutableBranch), DCXProjectKeys.kDCXKey_Sequence_VideoBumper)) {
                    return pathForComponent;
                }
            }
            i = i2 + 1;
        }
    }

    public static String filePathInComponentForOverlayNodeInBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        String pathForComponent;
        List<AdobeDCXComponent> componentsOf = adobeDCXCompositeMutableBranch.getComponentsOf(getOverlayNode(adobeDCXCompositeMutableBranch));
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= componentsOf.size()) {
                return null;
            }
            AdobeDCXComponent adobeDCXComponent = componentsOf.get(i2);
            if (adobeDCXComponent.getRelationship().equals("image")) {
                try {
                    pathForComponent = adobeDCXCompositeMutableBranch.getPathForComponent(adobeDCXComponent);
                } catch (AdobeDCXException e2) {
                    e2.printStackTrace();
                    pathForComponent = null;
                }
                if (pathForComponent != null && isKeyPresentInSequenceProperties(getSequenceNode(adobeDCXCompositeMutableBranch), DCXProjectKeys.kDCXKey_Sequence_GraphicOverlay)) {
                    return pathForComponent;
                }
            }
            i = i2 + 1;
        }
    }

    static JSONObject setStateForPreferences(AdobeDCXManifestNode adobeDCXManifestNode, boolean z) {
        JSONObject jSONObjectDeepMutableCopyOfDictionary;
        if (adobeDCXManifestNode == null) {
            jSONObjectDeepMutableCopyOfDictionary = null;
        } else {
            jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary((JSONObject) adobeDCXManifestNode.get(DCXProjectKeys.kDCX_AppProperties));
        }
        if (jSONObjectDeepMutableCopyOfDictionary != null) {
            try {
                jSONObjectDeepMutableCopyOfDictionary.put("state", z);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            updateModificationTimeInDictionary(jSONObjectDeepMutableCopyOfDictionary);
        }
        return jSONObjectDeepMutableCopyOfDictionary;
    }

    public static boolean valueForPreferences(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXManifestNode adobeDCXManifestNode) {
        JSONObject jSONObjectAppPropertiesFromNode;
        if (adobeDCXManifestNode == null || adobeDCXCompositeMutableBranch == null || (jSONObjectAppPropertiesFromNode = appPropertiesFromNode(adobeDCXManifestNode)) == null) {
            return false;
        }
        return jSONObjectAppPropertiesFromNode.optBoolean("state");
    }

    public static JSONObject setPreferencesKeyInSequence(AdobeDCXManifestNode adobeDCXManifestNode, String str, boolean z) {
        JSONObject jSONObject = null;
        if (adobeDCXManifestNode != null) {
            jSONObject = AdobeStorageCopyUtils.deepMutableCopyOfDictionary((JSONObject) adobeDCXManifestNode.get(DCXProjectKeys.kDCX_AppProperties));
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject.optJSONObject("preferences"));
        if (jSONObjectDeepMutableCopyOfDictionary == null) {
            jSONObjectDeepMutableCopyOfDictionary = new JSONObject();
        }
        try {
            jSONObjectDeepMutableCopyOfDictionary.put(str, z);
            jSONObject.put("preferences", jSONObjectDeepMutableCopyOfDictionary);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    static JSONObject removeKeyInNodeProperties(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode, String str) {
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary((JSONObject) adobeDCXMutableManifestNode.get(DCXProjectKeys.kDCX_AppProperties));
        jSONObjectDeepMutableCopyOfDictionary.remove(str);
        updateModificationTimeInDictionary(jSONObjectDeepMutableCopyOfDictionary);
        return jSONObjectDeepMutableCopyOfDictionary;
    }
}
