package com.adobe.premiereclip.dcx;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.looks.ClipLook;
import com.adobe.premiereclip.looks.LocalLooks;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ClipOptionsEffects;
import com.adobe.premiereclip.project.sequence.ImageClip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.sync.ComponentManagerHelper;
import com.adobe.sync.DBException;
import com.adobe.sync.database.CompositeLoader;
import com.adobe.sync.database.PreferenceCompositeLoader;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class DCXWriter {
    private static long DEFAULT_ASSET_DURATION = 150000;
    private static final String TAG = "DCXWriter";
    private static AdobeDCXComposite currentComposite;
    private static String projectId;

    public static String createBlankProject(String str, Date date, String str2, int i) {
        String pathToUserCompositionDirectory = DCXModelController.getInstance().getPathToUserCompositionDirectory();
        String adobeID = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
        UUID uuidRandomUUID = UUID.randomUUID();
        DCXProjectFactory.newBlankProjectDCXWithName(str, adobeID, pathToUserCompositionDirectory + File.separator + uuidRandomUUID.toString(), uuidRandomUUID.toString(), i);
        DCXModelController.getInstance().addNewProject((BasicDCXModel) DCXModelController.getInstance().getModelAtPath(uuidRandomUUID.toString()), uuidRandomUUID.toString());
        return uuidRandomUUID.toString();
    }

    public static void setCurrentComposite(String str) {
        projectId = str;
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(str);
        currentComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
    }

    private static void updateModificationTimeForNode(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXManifestNode adobeDCXManifestNode) {
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(DCXUtils.appPropertiesFromNode(adobeDCXManifestNode));
        DCXUtils.updateModificationTimeInDictionary(jSONObjectDeepMutableCopyOfDictionary);
        AdobeDCXMutableManifestNode mutableCopy = adobeDCXManifestNode.getMutableCopy();
        DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObjectDeepMutableCopyOfDictionary);
        try {
            adobeDCXCompositeMutableBranch.updateChild(mutableCopy);
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
        }
    }

    private static void setLookNodeFromLookInfo(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str, String str2, String str3, String str4, String str5) {
        AdobeDCXManifestNode sequenceNode;
        ClipLook clipLook;
        Object obj;
        String extension;
        String str6;
        String str7;
        String str8;
        if (adobeDCXCompositeMutableBranch != null && (sequenceNode = DCXUtils.getSequenceNode(adobeDCXCompositeMutableBranch)) != null) {
            AdobeDCXManifestNode lookNode = DCXUtils.getLookNode(adobeDCXCompositeMutableBranch);
            if (lookNode != null) {
                adobeDCXCompositeMutableBranch.removeChild(lookNode);
            }
            updateModificationTimeForNode(adobeDCXCompositeMutableBranch, sequenceNode);
            if (!str.equals("Normal") || str4 != null) {
                AdobeDCXManifestNode sequenceNode2 = DCXUtils.getSequenceNode(adobeDCXCompositeMutableBranch);
                String string = UUID.randomUUID().toString();
                if (str5 != null) {
                    string = str5;
                }
                AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(string, str);
                adobeDCXMutableManifestNode.setType("application/vnd.adobe.element.look+dcx");
                adobeDCXMutableManifestNode.setPath("look");
                try {
                    AdobeDCXMutableManifestNode mutableCopy = adobeDCXCompositeMutableBranch.addChild(adobeDCXMutableManifestNode, sequenceNode2).getMutableCopy();
                    if (str3 != null) {
                        clipLook = null;
                        obj = "library";
                        extension = FilenameUtils.getExtension(str3);
                        str6 = str3;
                    } else {
                        ClipLook lookFromLookName = LocalLooks.getLookFromLookName(str);
                        str6 = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/looks/" + ("gra_looks_" + Character.toLowerCase(str.charAt(0)) + (str.length() > 1 ? str.substring(1) : "")) + ".png";
                        File file = new File(str6);
                        if (!file.exists()) {
                            try {
                                FileUtils.copyInputStreamToFile(PremiereClipApplication.getContext().getResources().openRawResource(lookFromLookName.getDrawableId()), file);
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        clipLook = lookFromLookName;
                        obj = "built-in";
                        extension = "png";
                    }
                    String mimeTypefromPath = Utilities.getMimeTypefromPath(str6);
                    if (str6 != null) {
                        String string2 = UUID.randomUUID().toString();
                        adobeDCXCompositeMutableBranch.addComponent(DCXProjectKeys.kDCXKey_Sequence_look_image, string2, mimeTypefromPath, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition, string2 + "." + extension, (AdobeDCXManifestNode) mutableCopy, str6, true);
                        str7 = string2;
                    } else {
                        str7 = string;
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("type", obj);
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                    if (str2 == null) {
                        str8 = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/cubes/" + (Character.toLowerCase(str.charAt(0)) + (str.length() > 1 ? str.substring(1) : "") + ".cube");
                        File file2 = new File(str8);
                        if (!file2.exists()) {
                            try {
                                FileUtils.copyInputStreamToFile(PremiereClipApplication.getContext().getResources().openRawResource(clipLook.getRawId()), file2);
                            } catch (IOException e4) {
                                e4.printStackTrace();
                                return;
                            }
                        }
                        str5 = str7;
                    } else {
                        try {
                            jSONObject.put("libraryId", str4);
                        } catch (JSONException e5) {
                            e5.printStackTrace();
                        }
                        str8 = str2;
                    }
                    adobeDCXCompositeMutableBranch.addComponent(DCXProjectKeys.kDCXKey_Sequence_look_cube_file, UUID.randomUUID().toString(), DCXProjectKeys.kDCXKey_Sequence_look_cube_file_mimeType, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, str5 + ".cube", (AdobeDCXManifestNode) mutableCopy, str8, true);
                    DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObject);
                    adobeDCXCompositeMutableBranch.updateChild(mutableCopy);
                } catch (AdobeDCXException e6) {
                    e6.printStackTrace();
                }
            }
        }
    }

    public static void applyLook(String str, String str2, String str3, String str4, String str5) {
        if (currentComposite != null) {
            setLookNodeFromLookInfo(currentComposite.getCurrent(), str, str2, str3, str4, str5);
            commitToDCX();
        }
    }

    private static void setPropertySequence(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, Object obj, String str) {
        AdobeDCXManifestNode sequenceNode;
        if (adobeDCXCompositeMutableBranch != null && (sequenceNode = DCXUtils.getSequenceNode(adobeDCXCompositeMutableBranch)) != null) {
            updateModificationTimeForNode(adobeDCXCompositeMutableBranch, sequenceNode);
            AdobeDCXManifestNode sequenceNode2 = DCXUtils.getSequenceNode(currentComposite.getCurrent());
            JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(DCXUtils.appPropertiesFromNode(sequenceNode2));
            AdobeDCXMutableManifestNode mutableCopy = sequenceNode2.getMutableCopy();
            try {
                jSONObjectDeepMutableCopyOfDictionary.putOpt(str, obj);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObjectDeepMutableCopyOfDictionary);
            try {
                adobeDCXCompositeMutableBranch.updateChild(mutableCopy);
            } catch (AdobeDCXException e3) {
                e3.printStackTrace();
            }
        }
    }

    private static void setFloatPropertySequence(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, float f2, String str) {
        setPropertySequence(adobeDCXCompositeMutableBranch, new Float(f2), str);
    }

    private static void setBooleanPropertySequence(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, boolean z, String str) {
        setPropertySequence(adobeDCXCompositeMutableBranch, new Boolean(z), str);
    }

    public static void setFadeIn(boolean z) {
        if (currentComposite != null) {
            setBooleanPropertySequence(currentComposite.getCurrent(), z, DCXProjectKeys.kDCXKey_Sequence_fadeIn);
            commitToDCX();
        }
    }

    public static void setFadeOut(boolean z) {
        if (currentComposite != null) {
            setBooleanPropertySequence(currentComposite.getCurrent(), z, DCXProjectKeys.kDCXKey_Sequence_fadeOut);
            commitToDCX();
        }
    }

    public static void setCrossDissolves(boolean z) {
        if (currentComposite != null) {
            setBooleanPropertySequence(currentComposite.getCurrent(), z, DCXProjectKeys.kDCXKey_Sequence_crossDissolves);
            commitToDCX();
        }
    }

    public static void setPhotoMotion(boolean z) {
        if (currentComposite != null) {
            setBooleanPropertySequence(currentComposite.getCurrent(), z, DCXProjectKeys.kDCXKey_Sequence_photoMotion);
            commitToDCX();
        }
    }

    private static long convertToDCXTime(long j) {
        return Math.round((j * 30000.0d) / 1000000.0d);
    }

    private static long convertToDCXTimeAudio(long j) {
        return Math.round((j * 44100.0d) / 1000000.0d);
    }

    private static void setAssetDurationAndTimeScale(JSONObject jSONObject, long j) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(0);
        jSONArray.put(j == 0 ? DEFAULT_ASSET_DURATION : convertToDCXTime(j));
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(0);
        jSONArray2.put(30000L);
        jSONObject.putOpt("duration", jSONArray);
        jSONObject.putOpt("timeScale", jSONArray2);
    }

    private static void setAssetDurationAndTimeScaleAudio(JSONObject jSONObject, long j) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(0);
        jSONArray.put(j == 0 ? DEFAULT_ASSET_DURATION : convertToDCXTimeAudio(j));
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(0);
        jSONArray2.put(DCXProjectKeys.kDefaultDCXAudioTimeScale);
        jSONObject.putOpt("duration", jSONArray);
        jSONObject.putOpt("timeScale", jSONArray2);
    }

    private static void setClipContentIn(JSONObject jSONObject, Clip clip) throws JSONException {
        long jConvertToDCXTimeAudio;
        JSONArray jSONArray = new JSONArray();
        long startTimeUsWithSpeed = clip.getStartTimeUsWithSpeed();
        if (!(clip instanceof AudioClip)) {
            jConvertToDCXTimeAudio = convertToDCXTime(startTimeUsWithSpeed);
        } else {
            jConvertToDCXTimeAudio = convertToDCXTimeAudio(startTimeUsWithSpeed);
        }
        jSONArray.put(0);
        jSONArray.put(jConvertToDCXTimeAudio);
        jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_contentInPoint, jSONArray);
    }

    private static void setClipDuration(JSONObject jSONObject, Clip clip) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(0);
        jSONArray.put(convertToDCXTime(clip.getDurationUsWithSpeed()));
        jSONObject.putOpt("duration", jSONArray);
    }

    private static AdobeDCXManifestNode getMediaReference(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, Clip clip) {
        String availableHrefForUCID;
        AdobeDCXManifestNode mediaNode = DCXUtils.getMediaNode(adobeDCXCompositeMutableBranch);
        AssetReference assetReference = clip.getAssetReference();
        if (mediaNode != null) {
            Boolean boolValueOf = Boolean.valueOf(clip.getClipType() == Clip.CLIP_TYPE.IMAGE_TITLE);
            AdobeDCXComponent componentWithId = adobeDCXCompositeMutableBranch.getComponentWithId(assetReference.getAssetId());
            if (componentWithId != null) {
                return adobeDCXCompositeMutableBranch.findParentOfComponent(componentWithId);
            }
            AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName(DCXProjectKeys.kDCXKey_MediaNodeRef_name);
            adobeDCXMutableManifestNodeCreateNodeWithName.setType(DCXProjectKeys.kDCXKey_MediaRef_videoType);
            adobeDCXMutableManifestNodeCreateNodeWithName.setPath(adobeDCXMutableManifestNodeCreateNodeWithName.getNodeId());
            JSONObject jSONObject = new JSONObject();
            DCXUtils.updateModificationTimeInDictionary(jSONObject);
            try {
                setAssetDurationAndTimeScale(jSONObject, assetReference.getDurationUs());
                if (boolValueOf.booleanValue()) {
                    jSONObject.putOpt(DCXProjectKeys.kDCXKey_MediaRef_isSynthetic, true);
                }
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_MediaRef_assetURL, assetReference.getOriginalAssetPath());
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_MediaRef_creationDate, assetReference.getOriginalAssetDate());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            DCXUtils.setAppPropertiesForNode(adobeDCXMutableManifestNodeCreateNodeWithName, jSONObject);
            try {
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild = adobeDCXCompositeMutableBranch.addChild(adobeDCXMutableManifestNodeCreateNodeWithName, mediaNode);
                String assetId = assetReference.getAssetId() != null ? assetReference.getAssetId() : UUID.randomUUID().toString();
                String extension = FilenameUtils.getExtension(assetReference.getAssetPath());
                String mimeTypefromPath = Utilities.getMimeTypefromPath(assetReference.getAssetPath());
                String str = DCXProjectKeys.kDCXKey_MediaRef_componentVideo_name;
                String str2 = (extension == null || extension.length() <= 0) ? assetId : assetId + "." + extension;
                if (boolValueOf.booleanValue()) {
                    str = DCXProjectKeys.kDCXKey_MediaRef_componentTitle_name;
                }
                String uCIDForComponent = DCXUtils.getUCIDForComponent(assetReference.getOriginalAssetPath(), assetReference.getOriginalAssetDate());
                ComponentManagerHelper componentManagerHelper = ComponentManagerHelper.getInstance();
                componentManagerHelper.initialize();
                try {
                    availableHrefForUCID = componentManagerHelper.getAvailableHrefForUCID(uCIDForComponent);
                } catch (Exception e3) {
                    e3.printStackTrace();
                    availableHrefForUCID = null;
                }
                adobeDCXCompositeMutableBranch.addComponent(str, assetId, mimeTypefromPath, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, str2, adobeDCXManifestNodeAddChild, uCIDForComponent, availableHrefForUCID);
                return adobeDCXMutableManifestNodeCreateNodeWithName;
            } catch (AdobeDCXException e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }

    private static AdobeDCXManifestNode getBrandingMediaReference(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str, String str2, String str3) {
        String availableHrefForUCID;
        AdobeDCXManifestNode mediaNode = DCXUtils.getMediaNode(adobeDCXCompositeMutableBranch);
        if (mediaNode != null) {
            AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName(DCXProjectKeys.kDCXKey_MediaNodeRef_name);
            adobeDCXMutableManifestNodeCreateNodeWithName.setType(DCXProjectKeys.kDCXKey_MediaRef_videoType);
            adobeDCXMutableManifestNodeCreateNodeWithName.setPath(adobeDCXMutableManifestNodeCreateNodeWithName.getNodeId());
            JSONObject jSONObject = new JSONObject();
            DCXUtils.updateModificationTimeInDictionary(jSONObject);
            try {
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_MediaRef_assetURL, str);
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_Object_fileName, str2);
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_MediaRef_creationDate, str3);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            DCXUtils.setAppPropertiesForNode(adobeDCXMutableManifestNodeCreateNodeWithName, jSONObject);
            try {
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild = adobeDCXCompositeMutableBranch.addChild(adobeDCXMutableManifestNodeCreateNodeWithName, mediaNode);
                String string = UUID.randomUUID().toString();
                String extension = FilenameUtils.getExtension(str);
                String mimeTypefromPath = Utilities.getMimeTypefromPath(str);
                String str4 = (extension == null || extension.length() <= 0) ? string : string + "." + extension;
                String uCIDForComponent = DCXUtils.getUCIDForComponent(str, str3);
                ComponentManagerHelper componentManagerHelper = ComponentManagerHelper.getInstance();
                componentManagerHelper.initialize();
                try {
                    availableHrefForUCID = componentManagerHelper.getAvailableHrefForUCID(uCIDForComponent);
                } catch (Exception e3) {
                    e3.printStackTrace();
                    availableHrefForUCID = null;
                }
                adobeDCXCompositeMutableBranch.addComponent(DCXProjectKeys.kDCXKey_MediaRef_componentVideo_name, string, mimeTypefromPath, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, str4, adobeDCXManifestNodeAddChild, uCIDForComponent, availableHrefForUCID);
                return adobeDCXMutableManifestNodeCreateNodeWithName;
            } catch (AdobeDCXException e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }

    private static void setAppPropertiesClipDCX(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXMutableManifestNode adobeDCXMutableManifestNode, AdobeDCXManifestNode adobeDCXManifestNode, Clip clip, String str) {
        int iGetSequenceNumberOfChannels = DCXProjectKeys.GetSequenceNumberOfChannels();
        DCXProjectKeys.GetSequenceAudioSampleRate();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("numChannels", iGetSequenceNumberOfChannels);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            jSONObject.put(DCXProjectKeys.kDCXKey_Clip_speed, clip.getSpeed());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        try {
            jSONObject.getInt("numChannels");
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        try {
            jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_audioComponents, getClipAudioComponents(clip));
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        try {
            jSONObject.put(DCXProjectKeys.kDCXKey_Clip_videoComponents, getClipVideoComponents(clip));
        } catch (JSONException e6) {
            e6.printStackTrace();
        }
        DCXUtils.updateModificationTimeInDictionary(jSONObject);
        try {
            setClipContentIn(jSONObject, clip);
            setClipDuration(jSONObject, clip);
            jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_sortableValue, str);
            jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_backgroundColor, "0.0000 0.0000 0.0000 1.0000");
            jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_titleColor, "1.0000 1.0000 1.0000 1.0000");
            jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_mediaRef, "/media/" + adobeDCXManifestNode.getNodeId());
            if (clip.getClipType() == Clip.CLIP_TYPE.IMAGE_TITLE) {
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_backgroundColor, Utilities.hexStringToRgbaString(((ImageClip) clip).getBackgroundColor()));
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_titleColor, Utilities.hexStringToRgbaString(((ImageClip) clip).getTextColor()));
                jSONObject.putOpt("title", ((ImageClip) clip).getTitleText());
                jSONObject.put(DCXProjectKeys.kDCXKey_Clip_isTitleClip, true);
            }
            if ((clip instanceof ImageClip) && ((ImageClip) clip).isStoryCard()) {
                jSONObject.putOpt("title", ((ImageClip) clip).getStoryCardText());
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_isStoryCard, true);
            }
            if (clip.getClipGroupId() != null) {
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_clipGroupId, clip.getClipGroupId());
            }
        } catch (JSONException e7) {
            e7.printStackTrace();
        }
        DCXUtils.setAppPropertiesForNode(adobeDCXMutableManifestNode, jSONObject);
    }

    private static JSONArray getClipAudioComponents(Clip clip) {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            boolean z = !clip.getSmartVolumeApplied();
            jSONObject.put("Offset", 15);
            jSONObject.put("Noise Gate Active", 0);
            jSONObject.put("bypass", z);
            jSONObject.put("compressionActive", 0);
            jSONObject.put("Threshold", -6);
            jSONObject.put("Boost Low Signals", 0);
            jSONObject.put("Leveling Amount", 0.4d);
            jSONObject.put("type", "audio.smartVolume");
            jSONObject.put("Volume Level", -10);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        jSONArray.put(jSONObject);
        JSONObject jSONObject2 = new JSONObject();
        try {
            boolean audioFadeInApplied = clip.getAudioFadeInApplied();
            jSONObject2.put("Duration", 1);
            jSONObject2.put("type", "audio.fade");
            jSONObject2.put("Fade In", 1);
            jSONObject2.put("bypass", !audioFadeInApplied);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        jSONArray.put(jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        try {
            boolean audioFadeOutApplied = clip.getAudioFadeOutApplied();
            jSONObject3.put("Duration", 1);
            jSONObject3.put("type", "audio.fade");
            jSONObject3.put("Fade In", 0);
            jSONObject3.put("bypass", !audioFadeOutApplied);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        jSONArray.put(jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        try {
            float volume = clip.getVolume();
            jSONObject4.put("type", "audio.volume");
            jSONObject4.put("bypass", false);
            jSONObject4.put("Gain", volume);
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        jSONArray.put(jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        try {
            int i = clip.isMuted() ? 1 : 0;
            jSONObject5.put("type", "audio.mute");
            jSONObject5.put("bypass", false);
            jSONObject5.put("Mute", i);
        } catch (JSONException e6) {
            e6.printStackTrace();
        }
        jSONArray.put(jSONObject5);
        return jSONArray;
    }

    private static JSONArray getClipVideoComponents(Clip clip) {
        double shadows;
        ClipOptionsEffects clipOptionEffects;
        double highlights = 0.5d;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        double dCXExposure = 1.0d;
        if (clip == null || (clipOptionEffects = clip.getClipOptionEffects()) == null) {
            shadows = 0.5d;
        } else {
            shadows = clipOptionEffects.getShadows();
            highlights = clipOptionEffects.getHighlights();
            dCXExposure = clipOptionEffects.getDCXExposure();
        }
        try {
            jSONObject.put("shadows", shadows);
            jSONObject.put("bypass", (Object) false);
            jSONObject.put("gain", dCXExposure);
            jSONObject.put("endFrame", 0L);
            jSONObject.put("startFrame", 0L);
            jSONObject.put("type", "video.exposure");
            jSONObject.put("highlights", highlights);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        jSONArray.put(jSONObject);
        return jSONArray;
    }

    private static void createVideoClipDCXNode(Clip clip, String str) {
        AdobeDCXManifestNode mediaReference = getMediaReference(currentComposite.getCurrent(), clip);
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName(DCXProjectKeys.kDCXKey_VideoClip_node_name);
        adobeDCXMutableManifestNodeCreateNodeWithName.setNodeId(clip.getClipId());
        adobeDCXMutableManifestNodeCreateNodeWithName.setType(DCXProjectKeys.kDCXKey_VideoClip_type);
        adobeDCXMutableManifestNodeCreateNodeWithName.setPath(adobeDCXMutableManifestNodeCreateNodeWithName.getNodeId());
        setAppPropertiesClipDCX(currentComposite.getCurrent(), adobeDCXMutableManifestNodeCreateNodeWithName, mediaReference, clip, str);
        AdobeDCXCompositeMutableBranch current = currentComposite.getCurrent();
        for (AdobeDCXManifestNode adobeDCXManifestNode : current.getChildrenOf(DCXUtils.getSequenceNode(current))) {
            if (adobeDCXManifestNode.getName().equals(DCXProjectKeys.kDCXKey_VideoTrack_name)) {
                try {
                    current.addChild(adobeDCXMutableManifestNodeCreateNodeWithName, adobeDCXManifestNode.getMutableCopy());
                    return;
                } catch (AdobeDCXException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
    }

    public static void addClips(Clip clip, ArrayList<Clip> arrayList, Clip clip2) {
        if (DCXUtils.JSONObjectExists(currentComposite.getCurrent(), clip) && DCXUtils.JSONObjectExists(currentComposite.getCurrent(), clip2)) {
            String sortableValueOfCurrentClip = DCXUtils.getSortableValueOfCurrentClip(currentComposite.getCurrent(), clip, clip2);
            if (currentComposite != null) {
                Iterator<Clip> it = arrayList.iterator();
                while (true) {
                    String str = sortableValueOfCurrentClip;
                    if (it.hasNext()) {
                        Clip next = it.next();
                        createVideoClipDCXNode(next, str);
                        sortableValueOfCurrentClip = DCXUtils.getSortableValueOfCurrentClip(currentComposite.getCurrent(), next, clip2);
                    } else {
                        commitToDCX();
                        return;
                    }
                }
            }
        }
    }

    private static void updateSortableValue(Clip clip, String str) {
        AdobeDCXMutableManifestNode mutableCopy;
        if (currentComposite != null && (mutableCopy = currentComposite.getCurrent().getChildWithId(clip.getClipId()).getMutableCopy()) != null) {
            JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(DCXUtils.appPropertiesFromNode(mutableCopy));
            try {
                jSONObjectDeepMutableCopyOfDictionary.putOpt(DCXProjectKeys.kDCXKey_Clip_sortableValue, str);
                DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObjectDeepMutableCopyOfDictionary);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            try {
                currentComposite.getCurrent().updateChild(mutableCopy);
                commitToDCX();
            } catch (AdobeDCXException e3) {
                e3.printStackTrace();
            }
        }
    }

    public static void moveClips(Clip clip, ArrayList<Clip> arrayList, Clip clip2) {
        if (currentComposite != null && DCXUtils.JSONObjectExists(currentComposite.getCurrent(), clip) && DCXUtils.JSONObjectExists(currentComposite.getCurrent(), clip2)) {
            for (Clip clip3 : arrayList) {
                updateSortableValue(clip3, DCXUtils.getSortableValueOfCurrentClip(currentComposite.getCurrent(), clip, clip2));
                clip = clip3;
            }
            commitToDCX();
        }
    }

    public static void removeClip(Clip clip) {
        if (currentComposite != null) {
            ComponentManagerHelper componentManagerHelper = ComponentManagerHelper.getInstance();
            componentManagerHelper.initialize();
            try {
                AdobeDCXComponent componentWithId = currentComposite.getCurrent().getComponentWithId(clip.getAssetReference().getAssetId());
                if (componentWithId != null && !DCXUtils.isComponentUsedByClips(currentComposite.getCurrent(), componentWithId)) {
                    componentManagerHelper.deleteComponentWaiting(clip.getAssetReference().getAssetId());
                }
            } catch (DBException e2) {
                e2.printStackTrace();
            }
            DCXUtils.removeNodeWithIdFromComposite(currentComposite.getCurrent(), clip.getClipId());
            DCXUtils.removeUnusedMediaRefNodes(currentComposite.getCurrent());
            commitToDCX();
        }
    }

    public static void removeClips(ArrayList<Clip> arrayList) {
        if (currentComposite != null) {
            Iterator<Clip> it = arrayList.iterator();
            while (it.hasNext()) {
                DCXUtils.removeNodeWithIdFromComposite(currentComposite.getCurrent(), it.next().getClipId());
                DCXUtils.removeUnusedMediaRefNodes(currentComposite.getCurrent());
            }
            commitToDCX();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:6|(1:8)(1:59)|9|(6:101|10|(1:12)|13|(1:17)|18)|(4:(1:22)(9:60|(3:62|(1:64)(1:66)|65)(0)|99|34|(2:37|(2:72|(1:74)(6:75|(1:77)(1:89)|78|(1:80)|(1:95)(1:84)|85))(3:41|(5:43|(1:96)(1:47)|48|(1:50)|51)(1:97)|52))|53|105|54|(2:56|57)(1:108))|105|54|(0)(0))|103|23|(2:25|(1:27)(1:67))|(1:29)|30|(1:32)|33|99|34|(2:37|(4:39|72|(0)(0)|53)(0))(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(20:6|(1:8)(1:59)|9|101|10|(1:12)|13|(1:17)|18|(4:(1:22)(9:60|(3:62|(1:64)(1:66)|65)(0)|99|34|(2:37|(2:72|(1:74)(6:75|(1:77)(1:89)|78|(1:80)|(1:95)(1:84)|85))(3:41|(5:43|(1:96)(1:47)|48|(1:50)|51)(1:97)|52))|53|105|54|(2:56|57)(1:108))|105|54|(0)(0))|103|23|(2:25|(1:27)(1:67))|(1:29)|30|(1:32)|33|99|34|(2:37|(4:39|72|(0)(0)|53)(0))(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x023c, code lost:
    
        r2.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02e7, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02e8, code lost:
    
        r2.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02fc, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0135 A[Catch: Exception -> 0x02e7, TryCatch #0 {Exception -> 0x02e7, blocks: (B:34:0x0103, B:53:0x01f3, B:37:0x0135, B:39:0x0159, B:41:0x016e, B:43:0x0177, B:45:0x019a, B:47:0x01a0, B:48:0x01b9, B:50:0x01bd, B:51:0x01c6, B:52:0x01db, B:72:0x0241, B:74:0x0247, B:75:0x0283, B:77:0x0289, B:78:0x028d, B:82:0x02ab, B:84:0x02b1, B:85:0x02c9, B:89:0x02ed), top: B:99:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0207 A[Catch: AdobeDCXException -> 0x02f6, TRY_LEAVE, TryCatch #3 {AdobeDCXException -> 0x02f6, blocks: (B:54:0x01fc, B:56:0x0207), top: B:105:0x01fc }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0241 A[Catch: Exception -> 0x02e7, TRY_ENTER, TryCatch #0 {Exception -> 0x02e7, blocks: (B:34:0x0103, B:53:0x01f3, B:37:0x0135, B:39:0x0159, B:41:0x016e, B:43:0x0177, B:45:0x019a, B:47:0x01a0, B:48:0x01b9, B:50:0x01bd, B:51:0x01c6, B:52:0x01db, B:72:0x0241, B:74:0x0247, B:75:0x0283, B:77:0x0289, B:78:0x028d, B:82:0x02ab, B:84:0x02b1, B:85:0x02c9, B:89:0x02ed), top: B:99:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0247 A[Catch: Exception -> 0x02e7, TryCatch #0 {Exception -> 0x02e7, blocks: (B:34:0x0103, B:53:0x01f3, B:37:0x0135, B:39:0x0159, B:41:0x016e, B:43:0x0177, B:45:0x019a, B:47:0x01a0, B:48:0x01b9, B:50:0x01bd, B:51:0x01c6, B:52:0x01db, B:72:0x0241, B:74:0x0247, B:75:0x0283, B:77:0x0289, B:78:0x028d, B:82:0x02ab, B:84:0x02b1, B:85:0x02c9, B:89:0x02ed), top: B:99:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0283 A[Catch: Exception -> 0x02e7, TryCatch #0 {Exception -> 0x02e7, blocks: (B:34:0x0103, B:53:0x01f3, B:37:0x0135, B:39:0x0159, B:41:0x016e, B:43:0x0177, B:45:0x019a, B:47:0x01a0, B:48:0x01b9, B:50:0x01bd, B:51:0x01c6, B:52:0x01db, B:72:0x0241, B:74:0x0247, B:75:0x0283, B:77:0x0289, B:78:0x028d, B:82:0x02ab, B:84:0x02b1, B:85:0x02c9, B:89:0x02ed), top: B:99:0x0103 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void updateClipValues(com.adobe.premiereclip.project.sequence.Clip r16) {
        /*
            Method dump skipped, instruction units count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.dcx.DCXWriter.updateClipValues(com.adobe.premiereclip.project.sequence.Clip):void");
    }

    public static void updateClip(Clip clip) {
        if (currentComposite != null) {
            updateClipValues(clip);
            commitToDCX();
        }
    }

    public static void updateClips(ArrayList<Clip> arrayList) {
        if (currentComposite != null) {
            Iterator<Clip> it = arrayList.iterator();
            while (it.hasNext()) {
                updateClipValues(it.next());
            }
            commitToDCX();
        }
    }

    public static void setProjectPoster(String str) {
        if (str == null) {
            DCXModelController.getInstance().removePosterInModel(currentComposite);
        } else {
            DCXModelController.getInstance().updatePosterInModel(currentComposite, str);
        }
    }

    public static void commitToDCX() {
        DCXModelController.getInstance().pushProjectToServer(currentComposite);
    }

    private static AdobeDCXManifestNode getAudioMediaReference(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, Sequence sequence) {
        long durationUs;
        String str;
        AudioClip audioClip;
        AdobeDCXManifestNode mediaNode = DCXUtils.getMediaNode(adobeDCXCompositeMutableBranch);
        if (mediaNode == null) {
            return null;
        }
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName(DCXProjectKeys.kDCXKey_MediaNodeRef_name);
        adobeDCXMutableManifestNodeCreateNodeWithName.setType(DCXProjectKeys.kDCXKey_MediaRef_audioType);
        adobeDCXMutableManifestNodeCreateNodeWithName.setPath(adobeDCXMutableManifestNodeCreateNodeWithName.getNodeId());
        ArrayList<Clip> clips = sequence.getAudioTrackGroup().getAudioTrack().getClips();
        if (clips.size() <= 0 || (audioClip = (AudioClip) clips.get(0)) == null) {
            durationUs = 0;
            str = null;
        } else {
            String assetPath = audioClip.getAssetReference().getAssetPath();
            durationUs = audioClip.getAssetReference().getDurationUs();
            str = assetPath;
        }
        JSONObject jSONObject = new JSONObject();
        DCXUtils.updateModificationTimeInDictionary(jSONObject);
        try {
            setAssetDurationAndTimeScaleAudio(jSONObject, durationUs);
            jSONObject.putOpt(DCXProjectKeys.kDCXKey_MediaRef_assetURL, str);
            jSONObject.putOpt(DCXProjectKeys.kDCXKey_MediaRef_creationDate, DCXUtils.getLastModifiedDateFromFilePath(str));
            DCXUtils.setAppPropertiesForNode(adobeDCXMutableManifestNodeCreateNodeWithName, jSONObject);
            try {
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild = adobeDCXCompositeMutableBranch.addChild(adobeDCXMutableManifestNodeCreateNodeWithName, mediaNode);
                String assetId = sequence.getAudioTrackGroup().getAudioTrack().getClips().get(0).getAssetReference().getAssetId();
                if (assetId == null) {
                    assetId = UUID.randomUUID().toString();
                }
                String extension = FilenameUtils.getExtension(str);
                adobeDCXCompositeMutableBranch.addComponent(DCXProjectKeys.kDCXKey_MediaRef_componentAudio_name, assetId, Utilities.getMimeTypefromPath(str), AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, (extension == null || extension.length() <= 0) ? assetId : assetId + "." + extension, adobeDCXManifestNodeAddChild, DCXUtils.getUCIDForComponent(str, DCXUtils.getLastModifiedDateFromFilePath(str)), (String) null);
                return adobeDCXMutableManifestNodeCreateNodeWithName;
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (JSONException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static void addAudioTrack(Sequence sequence) {
        String str;
        AudioClip audioClip;
        AdobeDCXCompositeMutableBranch current = currentComposite.getCurrent();
        if (DCXUtils.getAudioClipNodes(current).size() != 0) {
            deleteAudioTrack();
        }
        AdobeDCXManifestNode audioMediaReference = getAudioMediaReference(current, sequence);
        if (audioMediaReference != null) {
            AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName(DCXProjectKeys.kDCXKey_AudioClip_node_name);
            String clipId = sequence.getAudioTrackGroup().getAudioTrack().getClips().get(0).getClipId();
            if (clipId == null) {
                clipId = UUID.randomUUID().toString();
            }
            adobeDCXMutableManifestNodeCreateNodeWithName.setNodeId(clipId);
            adobeDCXMutableManifestNodeCreateNodeWithName.setType(DCXProjectKeys.kDCXKey_AudioClip_type);
            adobeDCXMutableManifestNodeCreateNodeWithName.setPath(adobeDCXMutableManifestNodeCreateNodeWithName.getNodeId());
            JSONArray sequenceAudioComponents = getSequenceAudioComponents(sequence);
            JSONObject jSONObject = new JSONObject();
            ArrayList<Clip> clips = sequence.getAudioTrackGroup().getAudioTrack().getClips();
            if (clips.size() <= 0 || (audioClip = (AudioClip) clips.get(0)) == null) {
                str = null;
            } else {
                str = audioClip.songName;
            }
            try {
                DCXUtils.updateModificationTimeInDictionary(jSONObject);
                if (sequenceAudioComponents != null) {
                    jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_audioComponents, sequenceAudioComponents);
                }
                if (str != null) {
                    jSONObject.putOpt("title", str);
                }
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_mediaRef, "/media/" + audioMediaReference.getNodeId());
                DCXUtils.setAppPropertiesForNode(adobeDCXMutableManifestNodeCreateNodeWithName, jSONObject);
                Iterator<AdobeDCXManifestNode> it = current.getChildrenOf(DCXUtils.getSequenceNode(current)).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AdobeDCXManifestNode next = it.next();
                    if (next.getName().equals(DCXProjectKeys.kDCXKey_AudioTrack_name)) {
                        try {
                            current.addChild(adobeDCXMutableManifestNodeCreateNodeWithName, next.getMutableCopy());
                            break;
                        } catch (AdobeDCXException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                commitToDCX();
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
    }

    public static void deleteAudioTrack() {
        if (currentComposite != null) {
            AdobeDCXCompositeMutableBranch current = currentComposite.getCurrent();
            if (DCXUtils.getAudioTrackNode(current) != null) {
                boolean z = false;
                for (AdobeDCXManifestNode adobeDCXManifestNode : DCXUtils.getAudioClipNodes(current)) {
                    AdobeDCXManifestNode childWithId = current.getChildWithId(((String) ((JSONObject) adobeDCXManifestNode.get(DCXProjectKeys.kDCX_AppProperties)).opt(DCXProjectKeys.kDCXKey_Clip_mediaRef)).split(URIUtil.SLASH)[2]);
                    current.removeChild(adobeDCXManifestNode);
                    if (childWithId != null) {
                        current.removeChild(childWithId);
                    }
                    z = true;
                }
                if (z) {
                    updateModificationTimeForNode(current, DCXUtils.getSequenceNode(current));
                    commitToDCX();
                }
            }
        }
    }

    public static void updateAudioTrack(Sequence sequence) {
        if (currentComposite != null) {
            AdobeDCXCompositeMutableBranch current = currentComposite.getCurrent();
            setBooleanPropertySequence(current, sequence.getAudioDuckApplied(), DCXProjectKeys.kDCXKey_Sequence_autoDuck);
            setBooleanPropertySequence(current, sequence.getSnapToBeatApplied(), DCXProjectKeys.kDCXKey_Sequence_snap_to_beat);
            setFloatPropertySequence(current, sequence.getAudioSyncPace(), DCXProjectKeys.kDCXKey_Sequence_syncPace);
            ArrayList<AdobeDCXManifestNode> audioClipNodes = DCXUtils.getAudioClipNodes(current);
            if (audioClipNodes.size() != 0) {
                AdobeDCXMutableManifestNode mutableCopy = audioClipNodes.get(0).getMutableCopy();
                JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(DCXUtils.appPropertiesFromNode(mutableCopy));
                try {
                    jSONObjectDeepMutableCopyOfDictionary.putOpt(DCXProjectKeys.kDCXKey_Clip_audioComponents, getSequenceAudioComponents(sequence));
                    if (sequence.getAudioTrackGroup().getAudioTrack().getNumClips() > 0) {
                        try {
                            setClipContentIn(jSONObjectDeepMutableCopyOfDictionary, (AudioClip) sequence.getAudioTrackGroup().getAudioTrack().getClipAtIndex(0));
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                    }
                    DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObjectDeepMutableCopyOfDictionary);
                    try {
                        current.updateChild(mutableCopy);
                    } catch (AdobeDCXException e3) {
                        e3.printStackTrace();
                    }
                    commitToDCX();
                } catch (JSONException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0120, code lost:
    
        if (r1 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0123, code lost:
    
        r0.updateComponent(r1, r7, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0136, code lost:
    
        r0.addComponent(com.adobe.premiereclip.dcx.DCXProjectKeys.kSyncPoints_ComponentName, r2, "application/json", com.adobe.premiereclip.dcx.DCXProjectKeys.kSyncPoints_ComponentRel, com.adobe.premiereclip.dcx.DCXProjectKeys.kSyncPoints_ComponentPath, (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode) r6, r7, true, (java.lang.String) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0148, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0149, code lost:
    
        r0.printStackTrace();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void addTransitionTimesForSyncPoints(com.adobe.premiereclip.project.sequence.Sequence r12) {
        /*
            Method dump skipped, instruction units count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.dcx.DCXWriter.addTransitionTimesForSyncPoints(com.adobe.premiereclip.project.sequence.Sequence):void");
    }

    public static void addImpactDataToAudioTrack(AudioClip audioClip) {
        AdobeDCXManifestNode childWithId;
        AdobeDCXComponent next;
        if (currentComposite != null) {
            AdobeDCXCompositeMutableBranch current = currentComposite.getCurrent();
            ArrayList<AdobeDCXManifestNode> audioClipNodes = DCXUtils.getAudioClipNodes(current);
            if (audioClipNodes.size() != 0) {
                JSONObject jSONObjectAppPropertiesFromNode = DCXUtils.appPropertiesFromNode(audioClipNodes.get(0));
                if (audioClip.isImpactDataSet()) {
                    String mD5HashFromFilePath = Utilities.getMD5HashFromFilePath(audioClip.getAssetReference().getAssetPath(), true);
                    String str = PremiereClipApplication.getContext().getCacheDir() + File.separator + mD5HashFromFilePath + "_impact";
                    if (new File(str).exists() && (childWithId = current.getChildWithId(((String) jSONObjectAppPropertiesFromNode.opt(DCXProjectKeys.kDCXKey_Clip_mediaRef)).split(URIUtil.SLASH)[2])) != null) {
                        AdobeDCXMutableManifestNode mutableCopy = childWithId.getMutableCopy();
                        Iterator<AdobeDCXComponent> it = current.getComponentsOf(childWithId).iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            } else {
                                next = it.next();
                                if (!next.getType().equals("application/json")) {
                                }
                            }
                        }
                        try {
                            if (next != null) {
                                current.updateComponent(next, str, true);
                            } else {
                                current.addComponent(DCXProjectKeys.kSyncPoints_ComponentName, mD5HashFromFilePath, "application/json", DCXProjectKeys.kSyncPoints_ComponentRel, DCXProjectKeys.kSyncPoints_ComponentPath, (AdobeDCXManifestNode) mutableCopy, str, true, (String) null);
                            }
                        } catch (AdobeCSDKException e2) {
                            e2.printStackTrace();
                        }
                        commitToDCX();
                    }
                }
            }
        }
    }

    private static JSONArray getSequenceAudioComponents(Sequence sequence) {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            Boolean boolValueOf = Boolean.valueOf(sequence.getAudioFadeInApplied());
            jSONObject.put("Duration", 1);
            jSONObject.put("type", "audio.fade");
            jSONObject.put("Fade In", 1);
            jSONObject.put("bypass", !boolValueOf.booleanValue());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        jSONArray.put(jSONObject);
        JSONObject jSONObject2 = new JSONObject();
        try {
            Boolean boolValueOf2 = Boolean.valueOf(sequence.getAudioFadeOutApplied());
            jSONObject2.put("Duration", 1);
            jSONObject2.put("type", "audio.fade");
            jSONObject2.put("Fade In", 0);
            jSONObject2.put("bypass", !boolValueOf2.booleanValue());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        jSONArray.put(jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        try {
            float volume = sequence.getVolume();
            jSONObject3.put("type", "audio.volume");
            jSONObject3.put("bypass", false);
            jSONObject3.put("Gain", volume);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        jSONArray.put(jSONObject3);
        return jSONArray;
    }

    private static void resetProjectBumper(String str) {
        DCXUtils.removeBumperNodesInComposite(str);
        setPreferenceKey(str, DCXProjectKeys.kDCXKey_Sequence_VideoBumper, false);
        commitToDCX();
    }

    private static void resetProjectOverlay(String str) {
        DCXUtils.removeOverlayNodesInComposite(str);
        setPreferenceKey(str, DCXProjectKeys.kDCXKey_Sequence_GraphicOverlay, false);
        commitToDCX();
    }

    private static void setPreferenceKey(String str, String str2, boolean z) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(str, null, null);
        AdobeDCXManifestNode sequenceNode = DCXUtils.getSequenceNode(adobeDCXCompositeLoadComposite.getCurrent());
        JSONObject preferencesKeyInSequence = DCXUtils.setPreferencesKeyInSequence(sequenceNode, str2, z);
        if (preferencesKeyInSequence != null) {
            AdobeDCXMutableManifestNode mutableCopy = sequenceNode.getMutableCopy();
            DCXUtils.setAppPropertiesForNode(mutableCopy, preferencesKeyInSequence);
            DCXUtils.updateModificationTimeForNode(adobeDCXCompositeLoadComposite.getCurrent(), mutableCopy);
        }
    }

    private static void copyBumperPreferenceToProject(String str) {
        AdobeDCXCompositeMutableBranch current;
        AdobeDCXManifestNode childWithAbsolutePath;
        String strOptString;
        boolean zOptBoolean;
        AdobeDCXComposite adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null);
        if (adobeDCXCompositeLoadComposite != null && (childWithAbsolutePath = (current = adobeDCXCompositeLoadComposite.getCurrent()).getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_BumperNode_absolutePath)) != null) {
            JSONObject jSONObjectAppPropertiesFromNode = DCXUtils.appPropertiesFromNode(childWithAbsolutePath);
            if (jSONObjectAppPropertiesFromNode != null) {
                zOptBoolean = jSONObjectAppPropertiesFromNode.optBoolean(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault);
                strOptString = jSONObjectAppPropertiesFromNode.optString(DCXProjectKeys.kDCXKey_Clip_mediaRef);
            } else {
                strOptString = null;
                zOptBoolean = true;
            }
            if (zOptBoolean) {
                String str2 = DCXPreferencesManager.defaultBumperPath;
                if (new File(str2).exists()) {
                    if (DCXUtils.setBumperNode(CompositeLoader.getInstance().loadComposite(str, null, null).getCurrent(), str2, DCXProjectKeys.kDCXKey_Sequence_Bumper_Video_Default) != null) {
                        setPreferenceKey(str, DCXProjectKeys.kDCXKey_Sequence_VideoBumper, true);
                    }
                    commitToDCX();
                    return;
                }
                return;
            }
            StringBuilder sb = new StringBuilder();
            String mediaFilepathForNodeInPreferencesWithAbsolutePath = DCXUtils.getMediaFilepathForNodeInPreferencesWithAbsolutePath(strOptString, DCXProjectKeys.kDCXKey_BumperNode_absolutePath, childWithAbsolutePath, current, sb);
            if (mediaFilepathForNodeInPreferencesWithAbsolutePath != null && mediaFilepathForNodeInPreferencesWithAbsolutePath.length() > 0 && new File(mediaFilepathForNodeInPreferencesWithAbsolutePath).exists()) {
                if (DCXUtils.setBumperNode(CompositeLoader.getInstance().loadComposite(str, null, null).getCurrent(), mediaFilepathForNodeInPreferencesWithAbsolutePath, sb.toString()) != null) {
                    setPreferenceKey(str, DCXProjectKeys.kDCXKey_Sequence_VideoBumper, true);
                }
                commitToDCX();
            }
        }
    }

    private static void copyOverlayPreferenceToProject(String str) {
        AdobeDCXCompositeMutableBranch current;
        AdobeDCXManifestNode childWithAbsolutePath;
        AdobeDCXComposite adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null);
        if (adobeDCXCompositeLoadComposite != null && (childWithAbsolutePath = (current = adobeDCXCompositeLoadComposite.getCurrent()).getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath)) != null) {
            String strOptString = DCXUtils.appPropertiesFromNode(childWithAbsolutePath).optString(DCXProjectKeys.kDCXKey_Clip_mediaRef);
            StringBuilder sb = new StringBuilder();
            String mediaFilepathForNodeInPreferencesWithAbsolutePath = DCXUtils.getMediaFilepathForNodeInPreferencesWithAbsolutePath(strOptString, DCXProjectKeys.kDCXKey_OverlayNode_absolutePath, childWithAbsolutePath, current, sb);
            if (mediaFilepathForNodeInPreferencesWithAbsolutePath != null && mediaFilepathForNodeInPreferencesWithAbsolutePath.length() > 0 && new File(mediaFilepathForNodeInPreferencesWithAbsolutePath).exists()) {
                if (DCXUtils.setOverlayNode(CompositeLoader.getInstance().loadComposite(str, null, null).getCurrent(), mediaFilepathForNodeInPreferencesWithAbsolutePath, sb.toString()) != null) {
                    setPreferenceKey(str, DCXProjectKeys.kDCXKey_Sequence_GraphicOverlay, true);
                }
                commitToDCX();
            }
        }
    }

    public static void setVideoBumperState(boolean z, String str) {
        if (z) {
            copyBumperPreferenceToProject(str);
        } else {
            resetProjectBumper(str);
        }
    }

    public static void setGraphicOverlay(boolean z, String str) {
        if (z) {
            copyOverlayPreferenceToProject(str);
        } else {
            resetProjectOverlay(str);
        }
    }

    public static void setPreferenceBrandingState(String str, boolean z, String str2) {
        AdobeDCXManifestNode childWithAbsolutePath;
        JSONObject stateForPreferences;
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXPreferencesManager.getInstance().setupPreferences(str2);
        if (adobeDCXCompositeLoadComposite == null && (adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null)) == null) {
            Log.w(TAG, "Error: Not able to create/find composite to load for preferences");
            return;
        }
        if (adobeDCXCompositeLoadComposite.getCompositeId() != null && (childWithAbsolutePath = adobeDCXCompositeLoadComposite.getCurrent().getChildWithAbsolutePath(str)) != null && (stateForPreferences = DCXUtils.setStateForPreferences(childWithAbsolutePath, z)) != null) {
            AdobeDCXMutableManifestNode mutableCopy = childWithAbsolutePath.getMutableCopy();
            DCXUtils.setAppPropertiesForNode(mutableCopy, stateForPreferences);
            try {
                adobeDCXCompositeLoadComposite.getCurrent().updateChild(mutableCopy);
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
            }
            DCXModelController.getInstance().pushProjectToServer(adobeDCXCompositeLoadComposite);
        }
    }

    public static void setBumperPreference(String str, String str2, String str3, boolean z, String str4) {
        AdobeDCXManifestNode adobeDCXManifestNode;
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXPreferencesManager.getInstance().setupPreferences(str4);
        if (adobeDCXCompositeLoadComposite == null && (adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null)) == null) {
            Log.w(TAG, "Error: Not able to create/find composite to load for preferences");
            return;
        }
        AdobeDCXComposite adobeDCXComposite = adobeDCXCompositeLoadComposite;
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        AdobeDCXManifestNode childWithAbsolutePath = current.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_BumperNode_absolutePath);
        if (str != null) {
            if (z) {
                adobeDCXManifestNode = null;
            } else {
                AdobeDCXManifestNode brandingMediaReference = getBrandingMediaReference(current, str, str2, str3);
                if (brandingMediaReference == null) {
                    Log.w(TAG, "Error adding mediaRefNode.");
                    return;
                }
                adobeDCXManifestNode = brandingMediaReference;
            }
            if (childWithAbsolutePath != null) {
                JSONObject jSONObject = (JSONObject) childWithAbsolutePath.get(DCXProjectKeys.kDCX_AppProperties);
                JSONObject jSONObject2 = jSONObject == null ? new JSONObject() : jSONObject;
                if (!z) {
                    try {
                        jSONObject2.putOpt(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault, false);
                        jSONObject2.putOpt(DCXProjectKeys.kDCXKey_Clip_mediaRef, "/media/" + adobeDCXManifestNode.getNodeId());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                } else {
                    try {
                        jSONObject2.putOpt(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault, true);
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
                AdobeDCXMutableManifestNode mutableCopy = childWithAbsolutePath.getMutableCopy();
                DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObject2);
                try {
                    current.updateChild(mutableCopy);
                } catch (AdobeDCXException e4) {
                    e4.printStackTrace();
                }
                DCXModelController.getInstance().pushProjectToServer(adobeDCXComposite);
                return;
            }
            return;
        }
        if (childWithAbsolutePath != null) {
            if (((JSONObject) childWithAbsolutePath.get(DCXProjectKeys.kDCX_AppProperties)) != null) {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.putOpt("state", false);
                } catch (JSONException e5) {
                    e5.printStackTrace();
                }
                AdobeDCXMutableManifestNode mutableCopy2 = childWithAbsolutePath.getMutableCopy();
                DCXUtils.setAppPropertiesForNode(mutableCopy2, jSONObject3);
                try {
                    current.updateChild(mutableCopy2);
                } catch (AdobeDCXException e6) {
                    e6.printStackTrace();
                }
            }
            DCXModelController.getInstance().pushProjectToServer(adobeDCXComposite);
        }
    }

    public static void setOverlayPreference(String str, String str2, String str3, String str4) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXPreferencesManager.getInstance().setupPreferences(str4);
        if (adobeDCXCompositeLoadComposite == null && (adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null)) == null) {
            Log.w(TAG, "Error: Not able to create/find composite to load for preferences");
            return;
        }
        AdobeDCXComposite adobeDCXComposite = adobeDCXCompositeLoadComposite;
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        AdobeDCXManifestNode brandingMediaReference = getBrandingMediaReference(current, str, str2, str3);
        AdobeDCXManifestNode childWithAbsolutePath = current.getChildWithAbsolutePath(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath);
        if (str != null) {
            if (childWithAbsolutePath != null && brandingMediaReference != null) {
                JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(DCXUtils.appPropertiesFromNode(childWithAbsolutePath));
                JSONObject jSONObject = jSONObjectDeepMutableCopyOfDictionary == null ? new JSONObject() : jSONObjectDeepMutableCopyOfDictionary;
                try {
                    jSONObject.putOpt(DCXProjectKeys.kDCXKey_Clip_mediaRef, "/media/" + brandingMediaReference.getNodeId());
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                AdobeDCXMutableManifestNode mutableCopy = childWithAbsolutePath.getMutableCopy();
                DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObject);
                try {
                    current.updateChild(mutableCopy);
                } catch (AdobeDCXException e3) {
                    e3.printStackTrace();
                }
                DCXModelController.getInstance().pushProjectToServer(adobeDCXComposite);
                return;
            }
            return;
        }
        if (childWithAbsolutePath != null) {
            if (((JSONObject) childWithAbsolutePath.get(DCXProjectKeys.kDCX_AppProperties)) != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.putOpt("state", false);
                } catch (JSONException e4) {
                    e4.printStackTrace();
                }
                AdobeDCXMutableManifestNode mutableCopy2 = childWithAbsolutePath.getMutableCopy();
                DCXUtils.setAppPropertiesForNode(mutableCopy2, jSONObject2);
                try {
                    current.updateChild(mutableCopy2);
                } catch (AdobeDCXException e5) {
                    e5.printStackTrace();
                }
            }
            DCXModelController.getInstance().pushProjectToServer(adobeDCXComposite);
        }
    }
}
