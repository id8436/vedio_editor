package com.adobe.premiereclip.dcx;

import android.net.Uri;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXLocalStorageScheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.premiereclip.editor.waveform.WaveUtils;
import com.adobe.premiereclip.media.TitleImage;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ImageClip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.sync.database.CompositeLoader;
import com.adobe.sync.database.PreferenceCompositeLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class DCXReader {
    private static final String TAGAssetRef = "DCXAssetRef";
    private static final String TAGClip = "DCXClip";

    private static void logError(String str) {
        if (!str.isEmpty()) {
            Log.e("DCXReader", str);
        }
    }

    public static void setSequenceFromDCX(String str, Sequence sequence) {
        Metrics.sharedInstance().didStartProjectOpenForMyProject(str);
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(str);
        if (projectPathFromProjectId == null || projectPathFromProjectId.trim().isEmpty()) {
            logError("EMPTY-PROJECT-PATH - project path empty or undefined");
        }
        AdobeDCXComposite adobeDCXComposite = null;
        try {
            adobeDCXComposite = new AdobeDCXComposite(projectPathFromProjectId, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite);
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
        }
        if (adobeDCXComposite != null) {
            adobeDCXComposite.setAutoRemoveUnusedLocalFiles(false);
            AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
            if (current != null) {
                AdobeDCXManifestNode childWithAbsolutePath = current.getChildWithAbsolutePath("/sequence");
                if (childWithAbsolutePath != null) {
                    setSequencePropertiesFromDCX((JSONObject) childWithAbsolutePath.get(DCXProjectKeys.kDCX_AppProperties), sequence);
                    for (AdobeDCXManifestNode adobeDCXManifestNode : current.getChildrenOf(childWithAbsolutePath)) {
                        if ("VideoTrack".equals(adobeDCXManifestNode.getType())) {
                            getClipsFromDCX(current, adobeDCXManifestNode, adobeDCXComposite, sequence);
                        }
                        if ("AudioTrack".equals(adobeDCXManifestNode.getType())) {
                            setAudioTrackPropertiesOfSequenceFromDCX(current, adobeDCXManifestNode, adobeDCXComposite, sequence);
                        }
                        if ("look".equals(adobeDCXManifestNode.getPath())) {
                            sequence.setLook(getLookFromDCX(current, adobeDCXManifestNode, adobeDCXComposite));
                        }
                    }
                    return;
                }
                return;
            }
            logError("NULL-BRANCH - branch not created while reading sequence");
            return;
        }
        logError("Null-Composite - error in creating dcx composite structure, currently inside sequence creation");
    }

    public static boolean getPreferenceBumperState(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXPreferencesManager.getInstance().setupPreferences(str);
        if (adobeDCXCompositeLoadComposite == null && (adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null)) == null) {
            return false;
        }
        return DCXUtils.getPreferenceState(adobeDCXCompositeLoadComposite.getCurrent(), DCXProjectKeys.kDCXKey_BumperNode_absolutePath, "state");
    }

    public static boolean isPreferenceBumperPremiereClip(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXPreferencesManager.getInstance().setupPreferences(str);
        if (adobeDCXCompositeLoadComposite == null && (adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null)) == null) {
            return true;
        }
        return DCXUtils.isDefaultBumperInPreferences(adobeDCXCompositeLoadComposite.getCurrent());
    }

    public static String getPreferenceBumperPath(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXPreferencesManager.getInstance().setupPreferences(str);
        if (adobeDCXCompositeLoadComposite == null && (adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null)) == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (DCXUtils.isValidBumperPresentInPreferences(adobeDCXCompositeLoadComposite.getCurrent(), sb)) {
        }
        return sb.toString();
    }

    public static boolean getPreferenceOverlayState(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXPreferencesManager.getInstance().setupPreferences(str);
        if (adobeDCXCompositeLoadComposite == null && (adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null)) == null) {
            return false;
        }
        return DCXUtils.getPreferenceState(adobeDCXCompositeLoadComposite.getCurrent(), DCXProjectKeys.kDCXKey_OverlayNode_absolutePath, "state");
    }

    public static String getPreferenceOverlayPath(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXPreferencesManager.getInstance().setupPreferences(str);
        if (adobeDCXCompositeLoadComposite == null && (adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null)) == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (DCXUtils.isValidOverlayPresentInPreferences(adobeDCXCompositeLoadComposite.getCurrent(), sb)) {
            return sb.toString();
        }
        return null;
    }

    public static String getPreferenceBumperName() {
        return DCXUtils.getFileNameOfPreferenceSetting(PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null).getCurrent(), DCXProjectKeys.kDCXKey_BumperNode_absolutePath);
    }

    public static String getPreferenceOverlayName() {
        return DCXUtils.getFileNameOfPreferenceSetting(PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null).getCurrent(), DCXProjectKeys.kDCXKey_OverlayNode_absolutePath);
    }

    public static String getOverlayPath(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(str, DCXModelController.getInstance().getProjectPathFromProjectId(str), null);
        if (adobeDCXCompositeLoadComposite == null) {
            return null;
        }
        return DCXUtils.filePathInComponentForOverlayNodeInBranch(adobeDCXCompositeLoadComposite.getCurrent());
    }

    public static String getOverlayName(String str) {
        return DCXUtils.fileNameOfOverlayImage(CompositeLoader.getInstance().loadComposite(str, DCXModelController.getInstance().getProjectPathFromProjectId(str), null).getCurrent());
    }

    public static boolean isBumperEnabled(String str) {
        return DCXUtils.isKeyPresentInSequenceProperties(DCXUtils.getSequenceNode(CompositeLoader.getInstance().loadComposite(str, DCXModelController.getInstance().getProjectPathFromProjectId(str), null).getCurrent()), DCXProjectKeys.kDCXKey_Sequence_VideoBumper);
    }

    public static String getBumperPath(String str) {
        return DCXUtils.filePathInComponentForBumperNodeInBranch(CompositeLoader.getInstance().loadComposite(str, DCXModelController.getInstance().getProjectPathFromProjectId(str), null).getCurrent());
    }

    public static String getBumperName(String str) {
        return DCXUtils.fileNameOfBumperVideo(CompositeLoader.getInstance().loadComposite(str, DCXModelController.getInstance().getProjectPathFromProjectId(str), null).getCurrent());
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.adobe.premiereclip.looks.BaseLook getLookFromDCX(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch r10, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode r11, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r12) throws com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException {
        /*
            r2 = 0
            java.lang.String r4 = r11.getName()
            java.lang.String r0 = "apc#properties"
            java.lang.Object r0 = r11.get(r0)
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            java.lang.String r3 = "built-in"
            if (r0 == 0) goto Lbb
            java.lang.String r1 = "type"
            java.lang.Object r1 = r0.get(r1)     // Catch: org.json.JSONException -> L41
            java.lang.String r1 = (java.lang.String) r1     // Catch: org.json.JSONException -> L41
            if (r1 == 0) goto Lb8
            java.lang.String r3 = "built-in"
            boolean r3 = r1.equals(r3)     // Catch: org.json.JSONException -> Lb6
            if (r3 != 0) goto Lb8
            java.lang.String r3 = "libraryId"
            java.lang.Object r0 = r0.get(r3)     // Catch: org.json.JSONException -> Lb6
            java.lang.String r0 = (java.lang.String) r0     // Catch: org.json.JSONException -> Lb6
        L30:
            r3 = r0
        L31:
            if (r1 == 0) goto L3c
            java.lang.String r0 = "built-in"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L48
        L3c:
            com.adobe.premiereclip.looks.ClipLook r0 = com.adobe.premiereclip.looks.LocalLooks.getLookFromLookName(r4)
        L40:
            return r0
        L41:
            r0 = move-exception
            r1 = r3
        L43:
            r0.printStackTrace()
            r3 = r2
            goto L31
        L48:
            java.util.List r0 = r10.getComponentsOf(r11)
            java.lang.String r5 = r11.getNodeId()
            java.util.Iterator r6 = r0.iterator()
            r1 = r2
        L55:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L99
            java.lang.Object r0 = r6.next()
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r0 = (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent) r0
            java.lang.String r7 = r0.getName()
            java.lang.String r8 = "Look Image"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L7f
            java.lang.String r0 = com.adobe.premiereclip.dcx.DCXUtils.getPathForComponent(r0, r10)     // Catch: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException -> L78
            r9 = r1
            r1 = r0
            r0 = r9
        L75:
            r2 = r1
            r1 = r0
            goto L55
        L78:
            r0 = move-exception
            r0.printStackTrace()
            r0 = r1
            r1 = r2
            goto L75
        L7f:
            java.lang.String r7 = r0.getName()
            java.lang.String r8 = "Look Cube File"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L96
            java.lang.String r0 = com.adobe.premiereclip.dcx.DCXUtils.getPathForComponent(r0, r10)     // Catch: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException -> L92
            r1 = r2
            goto L75
        L92:
            r0 = move-exception
            r0.printStackTrace()
        L96:
            r0 = r1
            r1 = r2
            goto L75
        L99:
            if (r3 == 0) goto Lae
            if (r2 == 0) goto Lae
            if (r1 == 0) goto Lae
            com.adobe.premiereclip.looks.CandyLook r0 = new com.adobe.premiereclip.looks.CandyLook
            r0.<init>(r5, r4)
            r0.setLibraryId(r3)
            r0.setCubeDataUrl(r1)
            r0.setRenditionPathUrl(r2)
            goto L40
        Lae:
            java.lang.String r0 = "Normal"
            com.adobe.premiereclip.looks.ClipLook r0 = com.adobe.premiereclip.looks.LocalLooks.getLookFromLookName(r0)
            goto L40
        Lb6:
            r0 = move-exception
            goto L43
        Lb8:
            r0 = r2
            goto L30
        Lbb:
            r1 = r3
            r3 = r2
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.dcx.DCXReader.getLookFromDCX(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite):com.adobe.premiereclip.looks.BaseLook");
    }

    private static void getClipsFromDCX(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXComposite adobeDCXComposite, Sequence sequence) {
        List<AdobeDCXManifestNode> childrenOf = adobeDCXCompositeBranch.getChildrenOf(adobeDCXManifestNode);
        ArrayList arrayList = new ArrayList();
        sequence.removeAllClips();
        for (AdobeDCXManifestNode adobeDCXManifestNode2 : childrenOf) {
            if (adobeDCXManifestNode2.getType().equals(DCXProjectKeys.kDCXKey_VideoClip_type)) {
                arrayList.add(getDCXClipNode(adobeDCXCompositeBranch, adobeDCXManifestNode2, adobeDCXComposite, arrayList));
            }
        }
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sequence.addClip(((DCXClipNode) it.next()).getClip());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x02eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void setAudioTrackPropertiesOfSequenceFromDCX(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch r22, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode r23, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r24, com.adobe.premiereclip.project.sequence.Sequence r25) {
        /*
            Method dump skipped, instruction units count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.dcx.DCXReader.setAudioTrackPropertiesOfSequenceFromDCX(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite, com.adobe.premiereclip.project.sequence.Sequence):void");
    }

    private static DCXClipNode getDCXClipNode(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXComposite adobeDCXComposite, ArrayList<DCXClipNode> arrayList) {
        String str;
        long j;
        boolean z;
        boolean z2;
        float fOptDouble;
        boolean z3;
        boolean z4;
        JSONObject jSONObject = (JSONObject) adobeDCXManifestNode.get(DCXProjectKeys.kDCX_AppProperties);
        try {
            AssetReference assetReferenceFromDCX = getAssetReferenceFromDCX(adobeDCXCompositeBranch, (String) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_mediaRef), adobeDCXComposite);
            for (DCXClipNode dCXClipNode : arrayList) {
                if (dCXClipNode.clip.getAssetReference().getAssetPath().equals(assetReferenceFromDCX.getAssetPath())) {
                    assetReferenceFromDCX = dCXClipNode.clip.getAssetReference();
                }
            }
            long jLongValue = 0;
            long jLongValue2 = WaveUtils.END_DURATION_BLOCKED;
            try {
                JSONArray jSONArray = (JSONArray) jSONObject.opt("duration");
                if (jSONArray != null) {
                    jLongValue2 = new Long((jSONArray.getLong(1) * 1000000) / 30000).longValue();
                }
                JSONArray jSONArray2 = (JSONArray) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_contentInPoint);
                if (jSONArray2 != null) {
                    jLongValue = new Long((jSONArray2.getLong(1) * 1000000) / 30000).longValue();
                }
                String str2 = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_sortableValue);
                if (str2 == null) {
                    str2 = ".A";
                }
                str = str2;
                j = jLongValue;
            } catch (JSONException e2) {
                logError("ClipParamReadIssue - " + e2.toString());
                e2.printStackTrace();
                str = ".A";
                j = jLongValue;
            }
            Boolean bool = (Boolean) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_isTitleClip);
            if (bool != null && bool.booleanValue()) {
                assetReferenceFromDCX.setMediaType("title");
            }
            float fOptDouble2 = (float) jSONObject.optDouble(DCXProjectKeys.kDCXKey_Clip_speed);
            if (fOptDouble2 != 0.0f) {
                j = (long) (j * fOptDouble2);
                jLongValue2 = (long) (jLongValue2 * fOptDouble2);
            }
            Clip clipCreateClip = Sequence.createClip(assetReferenceFromDCX, j, jLongValue2, adobeDCXManifestNode.getNodeId());
            JSONArray jSONArray3 = (JSONArray) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_audioComponents);
            if (jSONArray3 != null) {
                float f2 = 1.0f;
                boolean z5 = false;
                boolean z6 = false;
                boolean z7 = true;
                boolean z8 = false;
                int i = 0;
                while (i < jSONArray3.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArray3.optJSONObject(i);
                    if (jSONObjectOptJSONObject == null) {
                        z3 = z8;
                        z4 = z7;
                        z = z6;
                        z2 = z5;
                        fOptDouble = f2;
                    } else {
                        switch (jSONObjectOptJSONObject.optString("type")) {
                            case "audio.mute":
                                if (jSONObjectOptJSONObject.optInt("Mute") == 1) {
                                    z3 = true;
                                    z4 = z7;
                                    z = z6;
                                    z2 = z5;
                                    fOptDouble = f2;
                                    break;
                                }
                                break;
                            case "audio.volume":
                                boolean z9 = z8;
                                z4 = z7;
                                z = z6;
                                z2 = z5;
                                fOptDouble = (float) jSONObjectOptJSONObject.optDouble("Gain");
                                z3 = z9;
                                continue;
                                break;
                            case "audio.fade":
                                boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("bypass");
                                int iOptInt = jSONObjectOptJSONObject.optInt("Fade In");
                                if (iOptInt == 1) {
                                    z5 = !zOptBoolean;
                                }
                                if (iOptInt == 0) {
                                    z2 = z5;
                                    fOptDouble = f2;
                                    z3 = z8;
                                    z4 = z7;
                                    z = !zOptBoolean;
                                    break;
                                }
                                break;
                            case "audio.smartVolume":
                                z = z6;
                                z2 = z5;
                                fOptDouble = f2;
                                z3 = z8;
                                z4 = !jSONObjectOptJSONObject.optBoolean("bypass");
                                continue;
                                break;
                        }
                        z3 = z8;
                        z4 = z7;
                        z = z6;
                        z2 = z5;
                        fOptDouble = f2;
                    }
                    i++;
                    f2 = fOptDouble;
                    z5 = z2;
                    z6 = z;
                    z7 = z4;
                    z8 = z3;
                }
                if (z8) {
                    clipCreateClip.muteClip();
                }
                clipCreateClip.setAudioFadeInApplied(z5);
                clipCreateClip.setAudioFadeOutApplied(z6);
                clipCreateClip.setVolume(f2);
                clipCreateClip.setSmartVolumeApplied(z7);
            }
            JSONArray jSONArray4 = (JSONArray) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_videoComponents);
            if (jSONArray4 != null && !jSONArray4.isNull(0)) {
                JSONObject jSONObject2 = jSONArray4.getJSONObject(0);
                float fOptDouble3 = 0.5f;
                float fOptDouble4 = 0.5f;
                float fOptDouble5 = 1.0f;
                String strOptString = jSONObject2.optString("type");
                if (strOptString != null && strOptString.equals("video.exposure")) {
                    fOptDouble3 = (float) jSONObject2.optDouble("shadows");
                    jSONObject2.optBoolean("bypass");
                    fOptDouble5 = (float) jSONObject2.optDouble("gain");
                    jSONObject2.optLong("endFrame");
                    jSONObject2.optLong("startFrame");
                    fOptDouble4 = (float) jSONObject2.optDouble("highlights");
                }
                clipCreateClip.setDCXExposure(fOptDouble5);
                clipCreateClip.setShadows(fOptDouble3);
                clipCreateClip.setHighlights(fOptDouble4);
            }
            if (fOptDouble2 != 0.0f) {
                clipCreateClip.setSpeed(fOptDouble2);
            }
            String strOptString2 = jSONObject.optString(DCXProjectKeys.kDCXKey_Clip_clipGroupId, null);
            if (strOptString2 != null) {
                clipCreateClip.setClipGroupId(strOptString2);
            }
            if (bool != null && bool.booleanValue()) {
                String str3 = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_backgroundColor);
                String str4 = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_titleColor);
                ((ImageClip) clipCreateClip).setTitleImage(new TitleImage(assetReferenceFromDCX.getAssetId(), adobeDCXComposite.getCompositeId(), (String) jSONObject.opt("title"), str4 == null ? null : Utilities.rgbaStringToHexString(str4), str3 == null ? null : Utilities.rgbaStringToHexString(str3)));
            }
            Boolean bool2 = (Boolean) jSONObject.opt(DCXProjectKeys.kDCXKey_Clip_isStoryCard);
            if (bool2 != null && bool2.booleanValue()) {
                ImageClip imageClip = (ImageClip) clipCreateClip;
                String str5 = (String) jSONObject.opt("title");
                if (str5 == null) {
                    str5 = "";
                }
                imageClip.setStoryCard(str5);
            }
            return new DCXClipNode(clipCreateClip, str);
        } catch (Exception e3) {
            DCXUtils.logCrashLytics(TAGClip, e3, "compositeId: " + adobeDCXComposite.getCompositeId());
            logError("GetClipDCX - " + e3.toString());
            return null;
        }
    }

    private static AssetReference getAssetReferenceFromDCX(AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str, AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXManifestNode childWithId = str != null ? adobeDCXCompositeBranch.getChildWithId(str.split(URIUtil.SLASH)[2]) : null;
        if (str == null || childWithId == null || childWithId.get("components") == null || ((JSONArray) childWithId.get("components")).length() == 0) {
            String nonExistentPath = DCXUtils.getNonExistentPath();
            return new AssetReference(UUID.randomUUID().toString(), Uri.parse(nonExistentPath), nonExistentPath, nonExistentPath, new Date().toString(), "video");
        }
        if (childWithId.getType().equals(DCXProjectKeys.kDCXKey_MediaRef_videoType) || childWithId.getName().equals(DCXProjectKeys.kDCXKey_MediaNodeRef_name)) {
            try {
                AdobeDCXComponent componentWithId = adobeDCXCompositeBranch.getComponentWithId((String) ((JSONObject) ((JSONArray) childWithId.get("components")).get(0)).get("id"));
                JSONObject jSONObject = (JSONObject) childWithId.get(DCXProjectKeys.kDCX_AppProperties);
                String componentId = componentWithId.getComponentId();
                String pathForComponent = DCXUtils.getPathForComponent(componentWithId, adobeDCXCompositeBranch);
                String str2 = componentWithId.getType().startsWith("image") ? "image" : "video";
                componentWithId.getWidth();
                componentWithId.getHeight();
                Uri uriFromFile = Uri.fromFile(new File(pathForComponent));
                long j = 150000;
                JSONArray jSONArray = (JSONArray) jSONObject.opt("duration");
                if (jSONArray != null) {
                    jSONArray.getLong(0);
                    j = jSONArray.getLong(1);
                }
                JSONArray jSONArray2 = (JSONArray) jSONObject.opt("timeScale");
                String str3 = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_MediaRef_assetURL);
                long j2 = jSONArray2 != null ? jSONArray2.getLong(1) : 30000L;
                AssetReference assetReference = new AssetReference(componentId, uriFromFile, pathForComponent, str3, DCXUtils.getOriginalAssetDate(componentWithId, adobeDCXCompositeBranch), str2);
                assetReference.setDurationAndTimescale(j, j2);
                return assetReference;
            } catch (Exception e2) {
                DCXUtils.logCrashLytics(TAGAssetRef, e2, "compositeId: " + adobeDCXComposite.getCompositeId());
                logError("GetAssetReferenceDCX - " + e2.toString());
            }
        }
        return null;
    }

    private static void setSequencePropertiesFromDCX(JSONObject jSONObject, Sequence sequence) {
        if (jSONObject.opt(DCXProjectKeys.kDCXKey_Sequence_fadeIn) != null) {
            sequence.setFadeIn(jSONObject.optBoolean(DCXProjectKeys.kDCXKey_Sequence_fadeIn));
        }
        if (jSONObject.opt(DCXProjectKeys.kDCXKey_Sequence_fadeOut) != null) {
            sequence.setFadeOut(jSONObject.optBoolean(DCXProjectKeys.kDCXKey_Sequence_fadeOut));
        }
        if (jSONObject.opt(DCXProjectKeys.kDCXKey_Sequence_crossDissolves) != null) {
            sequence.setGlobalTransition(jSONObject.optBoolean(DCXProjectKeys.kDCXKey_Sequence_crossDissolves));
        }
        if (jSONObject.opt(DCXProjectKeys.kDCXKey_Sequence_photoMotion) != null) {
            sequence.setPhotoMotion(jSONObject.optBoolean(DCXProjectKeys.kDCXKey_Sequence_photoMotion));
        }
        if (jSONObject.opt(DCXProjectKeys.kDCXKey_Sequence_autoDuck) != null) {
            sequence.setAudioDuckApplied(jSONObject.optBoolean(DCXProjectKeys.kDCXKey_Sequence_autoDuck));
        }
        if (jSONObject.opt(DCXProjectKeys.kDCXKey_Sequence_snap_to_beat) != null) {
            sequence.setSnapToBeatApplied(jSONObject.optBoolean(DCXProjectKeys.kDCXKey_Sequence_snap_to_beat));
        }
        if (jSONObject.opt(DCXProjectKeys.kDCXKey_Sequence_syncPace) != null) {
            sequence.setAudioSyncPace((float) jSONObject.optDouble(DCXProjectKeys.kDCXKey_Sequence_syncPace));
        }
    }

    class DCXClipNode implements Comparable {
        Clip clip;
        String sortableValue;

        public DCXClipNode(Clip clip, String str) {
            this.clip = clip;
            this.sortableValue = str;
        }

        public String getSortableValue() {
            return this.sortableValue;
        }

        public Clip getClip() {
            return this.clip;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.sortableValue.compareTo(((DCXClipNode) obj).getSortableValue());
        }
    }
}
