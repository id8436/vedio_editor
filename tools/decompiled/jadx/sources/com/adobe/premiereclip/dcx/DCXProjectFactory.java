package com.adobe.premiereclip.dcx;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXLocalStorageScheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.sync.database.CompositeLoader;
import com.adobe.sync.database.PreferenceCompositeLoader;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DCXProjectFactory {
    private static final String TAG = "DCXProjectFactory";
    private static SimpleDateFormat formatter;

    static {
        formatter = null;
        formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        formatter.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private DCXProjectFactory() {
    }

    public static AdobeDCXComposite newBlankProjectDCXWithName(String str, String str2, String str3, String str4, int i) {
        Object obj;
        AdobeDCXComposite adobeDCXComposite;
        Log.d("createComposite", "Document Path = " + str3);
        Log.d("createComposite", "Document ID = " + str4);
        if (i == 1) {
            obj = DCXProjectKeys.kDCXKey_Project_projectModeAuto;
        } else if (i != 2) {
            obj = "";
        } else {
            obj = DCXProjectKeys.kDCXKey_Project_projectModeFreeform;
        }
        try {
            adobeDCXComposite = new AdobeDCXComposite(str, DCXProjectKeys.kDCX_ClipProjectMimeType, str3, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite, (String) null);
        } catch (AdobeDCXException e2) {
            adobeDCXComposite = null;
        }
        if (adobeDCXComposite != null) {
            adobeDCXComposite.setCompositeId(str4);
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_schemaVersion, 6);
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_owner, str2);
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_createdDate, formatter.format(new Date(jCurrentTimeMillis)));
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_lastModifiedDate, formatter.format(new Date(jCurrentTimeMillis)));
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_projectMode, obj);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
            adobeDCXComposite.getCurrent().setValue(jSONObject, DCXProjectKeys.kDCX_AppProperties);
            addEmptyMediaNode(adobeDCXComposite);
            addEmptySequenceNode(adobeDCXComposite);
            adobeDCXComposite.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateModified);
            try {
            } catch (AdobeDCXException e4) {
                Log.d("createComposite", "Error Creating Project");
            }
            if (!adobeDCXComposite.commitChanges()) {
                Log.d("createComposite", "Error Creating Document Path = " + str3);
                adobeDCXComposite = null;
            }
        }
        handlePreferencesWhenCreatingNewProjectID(str4, str2);
        return adobeDCXComposite;
    }

    public static AdobeDCXManifestNode addEmptyMediaNode(AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (current == null) {
            return null;
        }
        try {
            return current.addChild(new AdobeDCXMutableManifestNode("media", "media", DCXProjectKeys.kDCXKey_MediaNode_name), null);
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static AdobeDCXManifestNode addEmptySequenceNode(AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXManifestNode adobeDCXManifestNodeAddChild = null;
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (current != null) {
            int iGetSequenceAudioSampleRate = DCXProjectKeys.GetSequenceAudioSampleRate();
            int iGetSequenceNumberOfChannels = DCXProjectKeys.GetSequenceNumberOfChannels();
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            JSONObject jSONObject4 = new JSONObject();
            try {
                Dictionary_AddSamplePosition(jSONObject, "timeScale", 30000L);
                Dictionary_AddSamplePosition(jSONObject, DCXProjectKeys.kDCXKey_FrameRate_sampleSize, 1000L);
                jSONObject2.put("numChannels", iGetSequenceNumberOfChannels);
                jSONObject2.put(DCXProjectKeys.kDCXKey_Sequence_sampleRate, iGetSequenceAudioSampleRate);
                jSONObject2.put(DCXProjectKeys.kDCXKey_Sequence_frameRate, jSONObject);
                jSONObject2.put(DCXProjectKeys.kDCXKey_Sequence_autoDuck, true);
                jSONObject2.put(DCXProjectKeys.kDCXKey_Sequence_photoMotion, true);
                jSONObject3.put("width", Sequence.EXPORT_HD_WIDTH);
                jSONObject3.put("height", Sequence.EXPORT_HD_HEIGHT);
                jSONObject2.put(DCXProjectKeys.kDCXKey_Sequence_frameSize, jSONObject3);
                jSONObject4.put(DCXProjectKeys.kDCXKey_PixelAspectRatio_numerator, 1);
                jSONObject4.put(DCXProjectKeys.kDCXKey_PixelAspectRatio_denominator, 1);
                jSONObject2.put(DCXProjectKeys.kDCXKey_Sequence_pixelAspectRatio, jSONObject4);
                AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode("sequence", "sequence", DCXProjectKeys.kDCXKey_SequenceNode_name);
                adobeDCXMutableManifestNode.setValue(jSONObject2, DCXProjectKeys.kDCX_AppProperties);
                try {
                    adobeDCXManifestNodeAddChild = current.addChild(adobeDCXMutableManifestNode, null);
                    addEmptyVideoTrackToSequenceNode(adobeDCXComposite, adobeDCXManifestNodeAddChild);
                    addEmptyAudioTrackToSequenceNode(adobeDCXComposite, adobeDCXManifestNodeAddChild);
                } catch (AdobeDCXException e2) {
                    e2.printStackTrace();
                }
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
        return adobeDCXManifestNodeAddChild;
    }

    public static AdobeDCXManifestNode addEmptyVideoTrackToSequenceNode(AdobeDCXComposite adobeDCXComposite, AdobeDCXManifestNode adobeDCXManifestNode) {
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (current == null) {
            return null;
        }
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode("VideoTrack", (String) null, DCXProjectKeys.kDCXKey_VideoTrack_name);
        adobeDCXMutableManifestNode.setPath(adobeDCXMutableManifestNode.getNodeId());
        try {
            return current.addChild(adobeDCXMutableManifestNode, adobeDCXManifestNode);
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static AdobeDCXManifestNode addEmptyAudioTrackToSequenceNode(AdobeDCXComposite adobeDCXComposite, AdobeDCXManifestNode adobeDCXManifestNode) {
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (current == null) {
            return null;
        }
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode("AudioTrack", (String) null, DCXProjectKeys.kDCXKey_AudioTrack_name);
        adobeDCXMutableManifestNode.setPath(adobeDCXMutableManifestNode.getNodeId());
        try {
            return current.addChild(adobeDCXMutableManifestNode, adobeDCXManifestNode);
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void Dictionary_AddSamplePosition(JSONObject jSONObject, String str, long j) throws JSONException {
        jSONObject.put(str, Arrays.asList(Integer.valueOf(((int) (j >> 32)) & (-1)), Integer.valueOf(((int) j) & (-1))));
    }

    private static void handlePreferencesWhenCreatingNewProjectID(String str, String str2) {
        DCXPreferencesManager dCXPreferencesManager = DCXPreferencesManager.getInstance();
        if (!isPreferencesFolderPresent()) {
            dCXPreferencesManager.setupPreferences(str2);
        }
        AdobeDCXComposite adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null);
        if (adobeDCXCompositeLoadComposite != null) {
            handlePreferencesNodesForComposite(adobeDCXCompositeLoadComposite, DCXProjectKeys.kDCXKey_BumperNode_absolutePath, str);
            handlePreferencesNodesForComposite(adobeDCXCompositeLoadComposite, DCXProjectKeys.kDCXKey_OverlayNode_absolutePath, str);
        }
    }

    private static boolean isPreferencesFolderPresent() {
        File file = new File(DCXModelController.getInstance().getPathToUserCompositionDirectory());
        file.mkdirs();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.getName().equals("preferences")) {
                return true;
            }
        }
        return false;
    }

    private static void handlePreferencesNodesForComposite(AdobeDCXComposite adobeDCXComposite, String str, String str2) {
        JSONObject preferencesKeyInSequence;
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        AdobeDCXManifestNode childWithAbsolutePath = current.getChildWithAbsolutePath(str);
        if (DCXUtils.valueForPreferences(current, childWithAbsolutePath)) {
            StringBuilder sb = new StringBuilder();
            if (str.equals(DCXProjectKeys.kDCXKey_BumperNode_absolutePath)) {
                if (DCXUtils.isValidBumperPresentInPreferences(current, sb)) {
                    addMediaRefNodesToSequenceForBranch(current, childWithAbsolutePath, DCXProjectKeys.kDCXKey_BumperNode_absolutePath, sb.toString(), adobeDCXComposite.getCompositeId(), str2);
                    return;
                }
                return;
            } else {
                if (str.equals(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath) && DCXUtils.isValidOverlayPresentInPreferences(current, sb)) {
                    addMediaRefNodesToSequenceForBranch(current, childWithAbsolutePath, DCXProjectKeys.kDCXKey_OverlayNode_absolutePath, sb.toString(), adobeDCXComposite.getCompositeId(), str2);
                    return;
                }
                return;
            }
        }
        AdobeDCXManifestNode sequenceNode = DCXUtils.getSequenceNode(adobeDCXComposite.getCurrent());
        if (sequenceNode != null) {
            if (str.equals(DCXProjectKeys.kDCXKey_BumperNode_absolutePath)) {
                JSONObject preferencesKeyInSequence2 = DCXUtils.setPreferencesKeyInSequence(sequenceNode, DCXProjectKeys.kDCXKey_Sequence_VideoBumper, true);
                if (preferencesKeyInSequence2 != null) {
                    AdobeDCXMutableManifestNode mutableCopy = sequenceNode.getMutableCopy();
                    DCXUtils.setAppPropertiesForNode(mutableCopy, preferencesKeyInSequence2);
                    DCXUtils.updateModificationTimeForNode(adobeDCXComposite.getCurrent(), mutableCopy);
                    return;
                }
                return;
            }
            if (str.equals(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath) && (preferencesKeyInSequence = DCXUtils.setPreferencesKeyInSequence(sequenceNode, DCXProjectKeys.kDCXKey_Sequence_GraphicOverlay, true)) != null) {
                AdobeDCXMutableManifestNode mutableCopy2 = sequenceNode.getMutableCopy();
                DCXUtils.setAppPropertiesForNode(mutableCopy2, preferencesKeyInSequence);
                DCXUtils.updateModificationTimeForNode(adobeDCXComposite.getCurrent(), mutableCopy2);
            }
        }
    }

    private static void addMediaRefNodesToSequenceForBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXManifestNode adobeDCXManifestNode, String str, String str2, String str3, String str4) {
        JSONObject jSONObjectAppPropertiesFromNode = DCXUtils.appPropertiesFromNode(adobeDCXManifestNode);
        String strOptString = jSONObjectAppPropertiesFromNode.optString(DCXProjectKeys.kDCXKey_Clip_mediaRef);
        if (str.equals(DCXProjectKeys.kDCXKey_BumperNode_absolutePath) && jSONObjectAppPropertiesFromNode.optBoolean(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault)) {
            addNodeToProjectDCXWithFilePath(DCXPreferencesManager.defaultBumperPath, str3, str, str4, DCXProjectKeys.kDCXKey_Sequence_Bumper_Video_Default);
            return;
        }
        StringBuilder sb = new StringBuilder();
        String mediaFilepathForNodeInPreferencesWithAbsolutePath = DCXUtils.getMediaFilepathForNodeInPreferencesWithAbsolutePath(strOptString, str, adobeDCXManifestNode, adobeDCXCompositeMutableBranch, sb);
        if (mediaFilepathForNodeInPreferencesWithAbsolutePath != null && mediaFilepathForNodeInPreferencesWithAbsolutePath.length() > 0) {
            addNodeToProjectDCXWithFilePath(mediaFilepathForNodeInPreferencesWithAbsolutePath, str3, str, str4, sb.toString());
        }
    }

    private static void addNodeToProjectDCXWithFilePath(String str, String str2, String str3, String str4, String str5) {
        AdobeDCXManifestNode overlayNode;
        AdobeDCXManifestNode bumperNode;
        if (new File(str).exists()) {
            AdobeDCXComposite adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(str4, null, null);
            if (adobeDCXCompositeLoadComposite != null) {
                if (str3.equals(DCXProjectKeys.kDCXKey_BumperNode_absolutePath)) {
                    String strFilePathInComponentForBumperNodeInBranch = DCXUtils.filePathInComponentForBumperNodeInBranch(adobeDCXCompositeLoadComposite.getCurrent());
                    if (!Utilities.getMD5HashFromFilePath(str, true).equals(strFilePathInComponentForBumperNodeInBranch != null ? Utilities.getMD5HashFromFilePath(strFilePathInComponentForBumperNodeInBranch, true) : null) && (bumperNode = DCXUtils.setBumperNode(adobeDCXCompositeLoadComposite.getCurrent(), str, str5)) != null) {
                        Log.d(TAG, "Sequence/Preferences/Bumper node has been set in Sequence " + bumperNode.getNodeId());
                        JSONObject preferencesKeyInSequence = DCXUtils.setPreferencesKeyInSequence(DCXUtils.getSequenceNode(adobeDCXCompositeLoadComposite.getCurrent()), DCXProjectKeys.kDCXKey_Sequence_VideoBumper, true);
                        if (preferencesKeyInSequence != null) {
                            AdobeDCXMutableManifestNode mutableCopy = DCXUtils.getSequenceNode(adobeDCXCompositeLoadComposite.getCurrent()).getMutableCopy();
                            DCXUtils.setAppPropertiesForNode(mutableCopy, preferencesKeyInSequence);
                            DCXUtils.updateModificationTimeForNode(adobeDCXCompositeLoadComposite.getCurrent(), mutableCopy);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (str3.equals(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath)) {
                    String strFilePathInComponentForOverlayNodeInBranch = DCXUtils.filePathInComponentForOverlayNodeInBranch(adobeDCXCompositeLoadComposite.getCurrent());
                    if (!Utilities.getMD5HashFromFilePath(str, true).equals(strFilePathInComponentForOverlayNodeInBranch != null ? Utilities.getMD5HashFromFilePath(strFilePathInComponentForOverlayNodeInBranch, true) : null) && (overlayNode = DCXUtils.setOverlayNode(adobeDCXCompositeLoadComposite.getCurrent(), str, str5)) != null) {
                        Log.d(TAG, "Sequence/Preferences/Overlay node has been set in Sequence " + overlayNode.getNodeId());
                        JSONObject preferencesKeyInSequence2 = DCXUtils.setPreferencesKeyInSequence(DCXUtils.getSequenceNode(adobeDCXCompositeLoadComposite.getCurrent()), DCXProjectKeys.kDCXKey_Sequence_GraphicOverlay, true);
                        if (preferencesKeyInSequence2 != null) {
                            AdobeDCXMutableManifestNode mutableCopy2 = DCXUtils.getSequenceNode(adobeDCXCompositeLoadComposite.getCurrent()).getMutableCopy();
                            DCXUtils.setAppPropertiesForNode(mutableCopy2, preferencesKeyInSequence2);
                            DCXUtils.updateModificationTimeForNode(adobeDCXCompositeLoadComposite.getCurrent(), mutableCopy2);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        Log.w(TAG, "Error: Invalid file path " + str);
    }

    static AdobeDCXComposite newPreferencesProjectWithName(String str, String str2, String str3, String str4) throws AdobeDCXException {
        AdobeDCXComposite adobeDCXComposite;
        try {
            adobeDCXComposite = new AdobeDCXComposite(str, DCXProjectKeys.kDCX_ClipProjectMimeType, str3, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite, (String) null);
        } catch (AdobeDCXException e2) {
            adobeDCXComposite = null;
        }
        if (adobeDCXComposite != null) {
            try {
                adobeDCXComposite.setHref(new URI(DCXPreferencesManager.getInstance().hrefForCompositeID(str4)));
            } catch (URISyntaxException e3) {
                e3.printStackTrace();
            }
            adobeDCXComposite.setCompositeId(str4);
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_schemaVersion, 1);
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_owner, str2);
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_createdDate, formatter.format(new Date(jCurrentTimeMillis)));
                jSONObject.put(DCXProjectKeys.kDCXKey_Project_lastModifiedDate, formatter.format(new Date(jCurrentTimeMillis)));
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
            adobeDCXComposite.getCurrent().setValue(jSONObject, DCXProjectKeys.kDCX_AppProperties);
            addEmptyMediaNode(adobeDCXComposite);
            addBrandingNodes(adobeDCXComposite);
            adobeDCXComposite.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateModified);
            try {
            } catch (AdobeDCXException e5) {
                Log.d("createComposite", "Error Creating Project");
            }
            if (!adobeDCXComposite.commitChanges()) {
                Log.d("createComposite", "Error Creating Document Path = " + str3);
                adobeDCXComposite = null;
            }
            DCXModelController.getInstance().pushProjectToServer(adobeDCXComposite);
        }
        return adobeDCXComposite;
    }

    private static void addBrandingNodes(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        AdobeDCXManifestNode adobeDCXManifestNodeAddChild;
        boolean z;
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        try {
            z = false;
            adobeDCXManifestNodeAddChild = current.addChild(new AdobeDCXMutableManifestNode("branding", "branding", "Branding"), null);
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
            adobeDCXManifestNodeAddChild = null;
            z = true;
        }
        if (!z) {
            try {
                current.addChild(new AdobeDCXMutableManifestNode("bumper", "bumper", "Bumper"), adobeDCXManifestNodeAddChild);
            } catch (AdobeDCXException e3) {
                e3.printStackTrace();
                z = true;
            }
            if (!z) {
                try {
                    current.addChild(new AdobeDCXMutableManifestNode("overlay", "overlay", "Overlay"), adobeDCXManifestNodeAddChild);
                } catch (AdobeDCXException e4) {
                    e4.printStackTrace();
                    z = true;
                }
                if (!z) {
                    AdobeDCXManifestNode childWithAbsolutePath = current.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_BumperNode_absolutePath);
                    if (childWithAbsolutePath != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("state", false);
                            jSONObject.put(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault, true);
                            jSONObject.put(DCXProjectKeys.kDCXKey_Object_lastModifiedTime, formatter.format(new Date()));
                        } catch (JSONException e5) {
                            e5.printStackTrace();
                        }
                        AdobeDCXMutableManifestNode mutableCopy = childWithAbsolutePath.getMutableCopy();
                        DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObject);
                        try {
                            current.updateChild(mutableCopy);
                        } catch (AdobeDCXException e6) {
                            e6.printStackTrace();
                        }
                    }
                    AdobeDCXManifestNode childWithAbsolutePath2 = current.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath);
                    if (childWithAbsolutePath2 != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("state", false);
                            jSONObject2.put(DCXProjectKeys.kDCXKey_Object_lastModifiedTime, formatter.format(new Date()));
                        } catch (JSONException e7) {
                            e7.printStackTrace();
                        }
                        AdobeDCXMutableManifestNode mutableCopy2 = childWithAbsolutePath2.getMutableCopy();
                        DCXUtils.setAppPropertiesForNode(mutableCopy2, jSONObject2);
                        try {
                            current.updateChild(mutableCopy2);
                        } catch (AdobeDCXException e8) {
                            e8.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    public static void handlePreferencesWhenOpeningProjectWithId(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(str, null, null);
        if (adobeDCXCompositeLoadComposite != null) {
            AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
            AdobeDCXManifestNode sequenceNode = DCXUtils.getSequenceNode(current);
            AdobeDCXMutableManifestNode mutableCopy = sequenceNode.getMutableCopy();
            JSONObject jSONObjectAppPropertiesFromNode = DCXUtils.appPropertiesFromNode(sequenceNode);
            if (jSONObjectAppPropertiesFromNode != null && jSONObjectAppPropertiesFromNode.optJSONObject("preferences") == null) {
                JSONObject preferencesKeyInSequence = DCXUtils.setPreferencesKeyInSequence(DCXUtils.getSequenceNode(adobeDCXCompositeLoadComposite.getCurrent()), DCXProjectKeys.kDCXKey_Sequence_GraphicOverlay, false);
                if (preferencesKeyInSequence != null) {
                    DCXUtils.setAppPropertiesForNode(mutableCopy, preferencesKeyInSequence);
                }
                JSONObject preferencesKeyInSequence2 = DCXUtils.setPreferencesKeyInSequence(mutableCopy, DCXProjectKeys.kDCXKey_Sequence_VideoBumper, false);
                if (preferencesKeyInSequence2 != null) {
                    DCXUtils.setAppPropertiesForNode(mutableCopy, preferencesKeyInSequence2);
                }
                try {
                    current.updateChild(mutableCopy);
                } catch (AdobeDCXException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
