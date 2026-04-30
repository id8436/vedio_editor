package com.adobe.premiereclip.prexport;

import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.util.Log;
import com.adobe.common.Size;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.editor.Editor;
import com.adobe.premiereclip.editor.SnapToBeatController;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.prexport.fcpxml.clip.AudioTrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.EmptyAudioTrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.MasterClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.TitleTrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem;
import com.adobe.premiereclip.prexport.fcpxml.clip.VideoTrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.track.AudioTrack;
import com.adobe.premiereclip.prexport.fcpxml.clip.track.VideoTrack;
import com.adobe.premiereclip.prexport.fcpxml.clip.transition.AudioFadeTransition;
import com.adobe.premiereclip.prexport.fcpxml.clip.transition.CrossDissolveTransition;
import com.adobe.premiereclip.prexport.fcpxml.filter.AudioLevelsFilter;
import com.adobe.premiereclip.prexport.fcpxml.filter.LooksFilter;
import com.adobe.premiereclip.prexport.fcpxml.filter.Marker;
import com.adobe.premiereclip.prexport.fcpxml.filter.MotionFilter;
import com.adobe.premiereclip.prexport.fcpxml.filter.SpeedFilter;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import com.adobe.premiereclip.prexport.fcpxml.utils.VideoSettings;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ImageClip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.util.Utilities;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class PrExportProjectConverter {
    private static final int AUDIO_SAMPLE_RATE = 44100;
    private static final int FADE_FULL_DURATION = 30;
    private static final int FADE_SHORT_DURATION = 4;
    private static final String PPRO_EXPORT_MEDIA_FOLDER_NAME = "media";
    private static final int VIDEO_FRAME_RATE = 30000;
    private static final int VIDEO_FRAME_SAMPLE_SIZE = 1000;
    private HashMap<String, MasterClip> mMasterClips = new HashMap<>();

    /* JADX WARN: Removed duplicated region for block: B:18:0x00b1 A[PHI: r2
  0x00b1: PHI (r2v3 java.lang.String) = (r2v1 java.lang.String), (r2v6 java.lang.String) binds: [B:6:0x0065, B:8:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:506)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:509)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getFileNameForManifestNode(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode r8, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r9) {
        /*
            r7 = this;
            java.lang.String r2 = ""
            java.lang.String r1 = ""
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch r0 = r9.getCurrent()
            java.util.List r0 = r0.getComponentsOf(r8)
            java.util.Iterator r3 = r0.iterator()
        L12:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L88
            java.lang.Object r0 = r3.next()
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r0 = (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent) r0
            java.lang.String r4 = "ProjectConverter"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "got filename and path "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = r0.getComponentId()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = "   "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = r0.getAbsolutePath()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = " for relationship "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = r0.getRelationship()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r4, r5)
            java.lang.String r4 = r0.getRelationship()
            java.lang.String r5 = "primary"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto Lb1
            java.lang.String r2 = r0.getComponentId()
            java.lang.String r0 = r0.getAbsolutePath()
            java.lang.String r4 = "."
            boolean r4 = r0.contains(r4)
            if (r4 == 0) goto Lb1
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            int r1 = r1 + (-1)
            r0 = r0[r1]
            r1 = r2
        L85:
            r2 = r1
            r1 = r0
            goto L12
        L88:
            int r0 = r2.length()
            if (r0 <= 0) goto Lad
            int r0 = r1.length()
            if (r0 <= 0) goto Lad
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r2 = "."
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
        Lac:
            return r0
        Lad:
            java.lang.String r0 = ""
            goto Lac
        Lb1:
            r0 = r1
            r1 = r2
            goto L85
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.prexport.PrExportProjectConverter.getFileNameForManifestNode(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite):java.lang.String");
    }

    private String getFileNameForMediaReference(AssetReference assetReference, String str) {
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(str);
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
        AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
        if (current != null) {
            AdobeDCXComponent componentWithId = current.getComponentWithId(assetReference.getAssetId());
            if (componentWithId == null) {
                Log.d("ProjConverter", "got component null for " + assetReference.getAssetId());
                return "";
            }
            AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = current.findParentOfComponent(componentWithId);
            if (adobeDCXManifestNodeFindParentOfComponent != null) {
                return getFileNameForManifestNode(adobeDCXManifestNodeFindParentOfComponent, adobeDCXCompositeLoadComposite);
            }
            Log.d("ProjConverter", "got medianode null for " + assetReference.getAssetId());
            return "";
        }
        Log.d("ProjConverter", "got branch null for " + assetReference.getAssetId());
        return "";
    }

    private String getNameForMediaReference(AssetReference assetReference, String str) {
        String fileNameForMediaReference = getFileNameForMediaReference(assetReference, str);
        if (fileNameForMediaReference.contains(".") && fileNameForMediaReference.indexOf(".") > 0) {
            return fileNameForMediaReference.substring(0, fileNameForMediaReference.lastIndexOf("."));
        }
        return "";
    }

    private String getFileNameForLook(String str) {
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(str);
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
        AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
        return current != null ? getFileNameForManifestNode(DCXUtils.getLookNode(current), adobeDCXCompositeLoadComposite) : "";
    }

    private String filePathForMediaWithFileName(String str) {
        return "media/" + str;
    }

    private String getFileNameForBackgroundTrack(String str) {
        AdobeDCXManifestNode backgroundTrackNode;
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(str);
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
        AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
        if (current != null && (backgroundTrackNode = DCXUtils.getBackgroundTrackNode(current)) != null) {
            return getFileNameForManifestNode(current.getChildWithId(((String) DCXUtils.appPropertiesFromNode(backgroundTrackNode).opt(DCXProjectKeys.kDCXKey_Clip_mediaRef)).split(URIUtil.SLASH)[2]), adobeDCXCompositeLoadComposite);
        }
        return "";
    }

    private String getNameForBackgroundTrack(String str) {
        String fileNameForBackgroundTrack = getFileNameForBackgroundTrack(str);
        if (fileNameForBackgroundTrack.contains(".") && fileNameForBackgroundTrack.indexOf(".") > 0) {
            return fileNameForBackgroundTrack.substring(0, fileNameForBackgroundTrack.lastIndexOf("."));
        }
        return "";
    }

    private long convertFrameValueForVideo(long j) {
        return j / 1000;
    }

    private long convertFrameValueForAudio(long j) {
        return (long) ((j / 44100.0f) * 30.0f);
    }

    private long convertFrameValueForMediaReference(String str, long j) {
        return str.equals("audio") ? convertFrameValueForAudio(j) : convertFrameValueForVideo(j);
    }

    private long getFadeDurationForClipDuration(long j) {
        if (j < 60) {
            return j / 2;
        }
        return 30L;
    }

    private long getAudioFadeDurationForClipDuration(long j) {
        return j < 30 ? 3L : 30L;
    }

    private TitleTrackClip convertClipToTitleClip(Clip clip) {
        return new TitleTrackClip(Utilities.stringByReplacingNonPlaneZeroCharacters(((ImageClip) clip).getTitleText(), " "), convertDurationForClip(clip));
    }

    private MasterClip convertMediaReferenceToMasterClip(AssetReference assetReference, String str) {
        return new MasterClip(getNameForMediaReference(assetReference, str), "media/" + getFileNameForMediaReference(assetReference, str), !assetReference.getMediaType().equals("audio"), assetReference.getNumAudioChannels(), convertFrameValueForMediaReference(assetReference.getMediaType(), assetReference.getDurationUs()), 0L);
    }

    private MasterClip convertBackgroundTrackToMasterClip(Project project) {
        Log.d("PrExportConverter", "adding background audio to masterclips");
        return new MasterClip(getNameForBackgroundTrack(project.projectKey), "media/" + getFileNameForBackgroundTrack(project.projectKey), false, 1, clipDurationToDCXDuration(project.getSequence().getSequenceDurationUs(), 30000L), 0L);
    }

    private SpeedFilter convertSpeedFilterForClip(Clip clip) {
        if (clip.getSpeed() == 0.0d || clip.getSpeed() == 1.0d) {
            return null;
        }
        SpeedFilter speedFilter = new SpeedFilter();
        speedFilter.setParamValue(DCXProjectKeys.kDCXKey_Clip_speed, clip.getSpeed() * 100.0f);
        return speedFilter;
    }

    private AudioLevelsFilter convertAudioLevelsFilterForClip(Clip clip) {
        if (clip.isMuted()) {
            AudioLevelsFilter audioLevelsFilter = new AudioLevelsFilter();
            audioLevelsFilter.setParamValue("Level", 0.0f);
            return audioLevelsFilter;
        }
        AudioLevelsFilter audioLevelsFilter2 = new AudioLevelsFilter();
        audioLevelsFilter2.setParamValue("Level", clip.getVolume());
        return audioLevelsFilter2;
    }

    private LooksFilter convertLooksFilterForSequence(Sequence sequence, String str) {
        String lookName;
        try {
            BaseLook look = sequence.getLook();
            if (look == null || (lookName = look.getLookName()) == null) {
                return null;
            }
            LooksFilter looksFilter = new LooksFilter(lookName);
            looksFilter.setParamValue("path", "media/" + getFileNameForLook(str));
            return looksFilter;
        } catch (Exception e2) {
            return null;
        }
    }

    private void storeMasterClip(MasterClip masterClip, String str) {
        this.mMasterClips.put(str, masterClip);
    }

    private MasterClip getMasterClipForName(String str) {
        if (this.mMasterClips.containsKey(str)) {
            return this.mMasterClips.get(str);
        }
        return null;
    }

    private long clipDurationToDCXDuration(long j, long j2) {
        return (j * j2) / 1000000;
    }

    private long convertDurationForClip(Clip clip) {
        long timeScale = clip.getTimeScale();
        long jClipDurationToDCXDuration = clipDurationToDCXDuration(clip.getDurationUsWithSpeed(), timeScale);
        Log.d("PrExportConverter", "clip name : " + clip.getAssetReference().getAssetId() + "   clip duration : " + clip.getDurationUsWithSpeed() + "   clip timescale : " + timeScale);
        return convertFrameValueForMediaReference(clip.getAssetReference().getMediaType(), jClipDurationToDCXDuration);
    }

    private long convertInPointForClip(Clip clip) {
        return convertFrameValueForMediaReference(clip.getAssetReference().getMediaType(), clipDurationToDCXDuration(clip.getStartTimeUsWithSpeed(), clip.getTimeScale()));
    }

    private VideoTrackClip convertVideoClipForClip(Clip clip, String str) {
        long jConvertDurationForClip = convertDurationForClip(clip);
        long jConvertInPointForClip = convertInPointForClip(clip);
        String nameForMediaReference = getNameForMediaReference(clip.getAssetReference(), str);
        VideoTrackClip videoTrackClip = new VideoTrackClip(nameForMediaReference, getMasterClipForName(nameForMediaReference), jConvertInPointForClip, jConvertDurationForClip);
        SpeedFilter speedFilterConvertSpeedFilterForClip = convertSpeedFilterForClip(clip);
        if (speedFilterConvertSpeedFilterForClip != null) {
            videoTrackClip.addFilter(speedFilterConvertSpeedFilterForClip);
        }
        return videoTrackClip;
    }

    private AudioTrackClip convertAudioClipForClip(Clip clip, String str) {
        if (clip.getAssetReference().getNumAudioChannels() < 1) {
            return new EmptyAudioTrackClip(convertDurationForClip(clip));
        }
        String nameForMediaReference = getNameForMediaReference(clip.getAssetReference(), str);
        AudioTrackClip audioTrackClip = new AudioTrackClip(nameForMediaReference, getMasterClipForName(nameForMediaReference), convertInPointForClip(clip), convertDurationForClip(clip));
        SpeedFilter speedFilterConvertSpeedFilterForClip = convertSpeedFilterForClip(clip);
        if (speedFilterConvertSpeedFilterForClip != null) {
            audioTrackClip.addFilter(speedFilterConvertSpeedFilterForClip);
        }
        AudioLevelsFilter audioLevelsFilterConvertAudioLevelsFilterForClip = convertAudioLevelsFilterForClip(clip);
        if (audioLevelsFilterConvertAudioLevelsFilterForClip != null) {
            audioTrackClip.addFilter(audioLevelsFilterConvertAudioLevelsFilterForClip);
            return audioTrackClip;
        }
        return audioTrackClip;
    }

    private boolean convertScaleParamForMotionFilter(MotionFilter motionFilter, Clip clip) {
        boolean z;
        Object[] originalDimensions = clip.getOriginalDimensions();
        int iIntValue = ((Integer) originalDimensions[0]).intValue();
        int iIntValue2 = ((Integer) originalDimensions[1]).intValue();
        int[] iArr = {1920, 1080};
        float fMin = (iIntValue2 == 0 || iIntValue == 0) ? 100.0f : Math.min(iArr[1] / iIntValue2, iArr[0] / iIntValue) * 100.0f;
        if (fMin != 100.0f) {
            motionFilter.setParamValue("Scale", String.valueOf(fMin));
            z = true;
        } else {
            z = false;
        }
        if (!clip.getScalingOn()) {
            return z;
        }
        long jConvertDurationForClip = convertDurationForClip(clip);
        float f2 = 0.15f * ((jConvertDurationForClip / 30) / 5.0f);
        float f3 = (fMin * f2) + fMin;
        Log.i("PRExportConvert", "start: " + fMin + " end: " + f3 + " inc: " + f2);
        motionFilter.setParamValue("Scale", String.valueOf(fMin));
        motionFilter.setParamValue("Scale", fMin, 0L);
        motionFilter.setParamValue("Scale", f3, jConvertDurationForClip);
        return true;
    }

    private float determineScaleForFrame(Size size, Size size2) {
        return Math.min(size2.getHeight() / size.getHeight(), size2.getWidth() / size.getWidth()) * 100.0f;
    }

    private boolean convertRotationParamForMotionFilter(MotionFilter motionFilter, Clip clip) {
        try {
            int iAsInt = clip.getAssetReference().getRotation().asInt();
            if (iAsInt == 0) {
                return false;
            }
            motionFilter.setParamValue("Rotation", String.valueOf(360 - iAsInt));
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private MotionFilter convertMotionFilterForStillImage(Clip clip) {
        MotionFilter motionFilter = new MotionFilter();
        boolean zConvertRotationParamForMotionFilter = false;
        if (clip.getClipType().equals(Clip.CLIP_TYPE.IMAGE_NON_TITLE)) {
            zConvertRotationParamForMotionFilter = convertRotationParamForMotionFilter(motionFilter, clip);
        }
        if (convertScaleParamForMotionFilter(motionFilter, clip) || zConvertRotationParamForMotionFilter) {
            return motionFilter;
        }
        return null;
    }

    private void convertAndAddCrossDissolveForVideoTrack(VideoTrack videoTrack, AudioTrack audioTrack, TrackClip trackClip, TrackClip trackClip2) {
        long jMin = Math.min(getFadeDurationForClipDuration(trackClip2.getDuration()), getFadeDurationForClipDuration(trackClip.getDuration()));
        if (jMin == 4) {
            videoTrack.adjustCurrentTime(-1L);
            audioTrack.adjustCurrentTime(-1L);
            if (trackClip != null) {
                trackClip.adjustOutPoint(-1L);
                trackClip.adjustDuration(-1L);
                trackClip.adjustTrackDuration(-1L);
                trackClip.adjustEnd(-1L);
                for (int i = 0; i < trackClip.numLinkedClips(); i++) {
                    TrackClip linkedClipAt = trackClip.getLinkedClipAt(i);
                    if (linkedClipAt != null) {
                        linkedClipAt.adjustOutPoint(-1L);
                        linkedClipAt.adjustDuration(-1L);
                        linkedClipAt.adjustTrackDuration(-1L);
                        linkedClipAt.adjustEnd(-1L);
                    }
                }
            }
        }
        videoTrack.addItem(new CrossDissolveTransition(jMin, Utils.TransitionAlignment.center, jMin / 2));
    }

    private void convertVideoTrack(com.adobe.premiereclip.project.sequence.VideoTrack videoTrack, VideoTrack videoTrack2, AudioTrack audioTrack, TrackOptions trackOptions, String str) {
        VideoTrackClip videoTrackClipConvertVideoClipForClip;
        AudioTrackClip audioTrackClipConvertAudioClipForClip;
        ArrayList<Clip> clips = videoTrack.getClips();
        if (!clips.isEmpty()) {
            if (trackOptions.fadeIn) {
                videoTrack2.addItem(new CrossDissolveTransition(getFadeDurationForClipDuration(convertDurationForClip(clips.get(0))), Utils.TransitionAlignment.start, 0L));
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= clips.size()) {
                    break;
                }
                Clip clip = clips.get(i2);
                if (clip.getClipType().equals(Clip.CLIP_TYPE.IMAGE_TITLE)) {
                    videoTrackClipConvertVideoClipForClip = convertClipToTitleClip(clip);
                    audioTrackClipConvertAudioClipForClip = new EmptyAudioTrackClip(videoTrackClipConvertVideoClipForClip.getDuration());
                } else {
                    videoTrackClipConvertVideoClipForClip = convertVideoClipForClip(clip, str);
                    if (trackOptions.look != null) {
                        videoTrackClipConvertVideoClipForClip.addFilter(trackOptions.look);
                    }
                    MotionFilter motionFilterConvertMotionFilterForStillImage = convertMotionFilterForStillImage(clip);
                    if (motionFilterConvertMotionFilterForStillImage != null) {
                        videoTrackClipConvertVideoClipForClip.addFilter(motionFilterConvertMotionFilterForStillImage);
                    }
                    audioTrackClipConvertAudioClipForClip = convertAudioClipForClip(clip, str);
                }
                videoTrackClipConvertVideoClipForClip.addLinkedClip(audioTrackClipConvertAudioClipForClip);
                if (trackOptions.crossDissolve && i2 > 0) {
                    convertAndAddCrossDissolveForVideoTrack(videoTrack2, audioTrack, (TrackClip) videoTrack2.getItemAt(videoTrack2.numItems() - 1), videoTrackClipConvertVideoClipForClip);
                }
                videoTrack2.addItem(videoTrackClipConvertVideoClipForClip);
                long audioFadeDurationForClipDuration = getAudioFadeDurationForClipDuration(videoTrackClipConvertVideoClipForClip.getDuration());
                if (clip.getAudioFadeInApplied() && clip.getAssetReference().getNumAudioChannels() > 0) {
                    audioTrack.addItem(new AudioFadeTransition(audioFadeDurationForClipDuration, Utils.TransitionAlignment.start, 0L));
                }
                audioTrack.addItem(audioTrackClipConvertAudioClipForClip);
                if (clip.getAudioFadeOutApplied() && clip.getAssetReference().getNumAudioChannels() > 0) {
                    audioTrack.addItem(new AudioFadeTransition(audioFadeDurationForClipDuration, Utils.TransitionAlignment.end, audioFadeDurationForClipDuration));
                }
                i = i2 + 1;
            }
            if (trackOptions.fadeOut) {
                long fadeDurationForClipDuration = getFadeDurationForClipDuration(videoTrack2.getItemAt(0).getDuration());
                videoTrack2.addItem(new CrossDissolveTransition(fadeDurationForClipDuration, Utils.TransitionAlignment.end, fadeDurationForClipDuration));
            }
            videoTrack2.calculateTimings();
            audioTrack.calculateTimings();
        }
    }

    private ArrayList<Long> calculateBeatMarkersForMediaRef(com.adobe.premiereclip.project.sequence.AudioTrack audioTrack) {
        ArrayList<Long> arrayList = new ArrayList<>();
        ArrayList<SnapToBeatController.SyncPoint> allSyncPoints = new SnapToBeatController(null, audioTrack).getAllSyncPoints();
        if (allSyncPoints != null && allSyncPoints.size() > 0) {
            Log.d("PPro", "sync pts size = " + allSyncPoints.size());
            SnapToBeatController.SyncPoint syncPoint = allSyncPoints.get(allSyncPoints.size() - 1);
            long j = syncPoint.time;
            float f2 = syncPoint.intensity;
            allSyncPoints.remove(allSyncPoints.size() - 1);
            if (allSyncPoints.get(allSyncPoints.size() - 1).time != j - 1000) {
                allSyncPoints.add(new SnapToBeatController.SyncPoint(j - 1000, f2));
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.ensureCapacity(allSyncPoints.size());
            Iterator<SnapToBeatController.SyncPoint> it = allSyncPoints.iterator();
            while (it.hasNext()) {
                arrayList2.add(Float.valueOf(it.next().intensity));
            }
            Collections.sort(arrayList2);
            float fFloatValue = ((Float) arrayList2.get(arrayList2.size() / 2)).floatValue();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= allSyncPoints.size()) {
                    break;
                }
                long jConvertFrameValueForVideo = convertFrameValueForVideo(allSyncPoints.get(i2).time);
                if (allSyncPoints.get(i2).intensity >= fFloatValue) {
                    new Marker(jConvertFrameValueForVideo, -1L, "", "");
                    arrayList.add(Long.valueOf(jConvertFrameValueForVideo));
                }
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    private ArrayList<Long> addMissingVideoTransitions(ArrayList<Long> arrayList, ArrayList<Long> arrayList2, AudioTrackClip audioTrackClip, long j) {
        long inPoint;
        ArrayList<Long> arrayList3 = new ArrayList<>(arrayList2);
        Iterator<Long> it = arrayList.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            long duration = audioTrackClip.getDuration();
            if (jLongValue > duration) {
                inPoint = (jLongValue - duration) % j;
            } else {
                inPoint = jLongValue + audioTrackClip.getInPoint();
            }
            if (!arrayList3.contains(Long.valueOf(inPoint))) {
                arrayList3.add(Long.valueOf(inPoint));
            }
        }
        Collections.sort(arrayList3, new Comparator<Long>() { // from class: com.adobe.premiereclip.prexport.PrExportProjectConverter.1
            @Override // java.util.Comparator
            public int compare(Long l, Long l2) {
                return (int) (l.longValue() - l2.longValue());
            }
        });
        return arrayList3;
    }

    private void convertAudioTrack(com.adobe.premiereclip.project.sequence.AudioTrack audioTrack, AudioTrack audioTrack2, long j, String str, boolean z, ArrayList<Long> arrayList) {
        ArrayList<Long> arrayListAddMissingVideoTransitions;
        ArrayList<Long> arrayList2 = null;
        for (Clip clip : audioTrack.getClips()) {
            if (clip.getAudioFadeInApplied()) {
                audioTrack2.addItem(new AudioFadeTransition(30L, Utils.TransitionAlignment.start, 0L));
            }
            Log.d("PrExportConverter", "audio clip duration : " + j);
            long j2 = 0;
            while (j2 < j) {
                AudioTrackClip audioTrackClipConvertAudioClipForClip = convertAudioClipForClip(clip, str);
                if (j2 != 0) {
                    audioTrackClipConvertAudioClipForClip.adjustInPoint((-1) * audioTrackClipConvertAudioClipForClip.getInPoint());
                }
                long jConvertFrameValueForMediaReference = convertFrameValueForMediaReference("audio", clipDurationToDCXDuration(clip.getAssetReference().getDurationUs(), clip.getTimeScale()));
                long inPoint = jConvertFrameValueForMediaReference - audioTrackClipConvertAudioClipForClip.getInPoint();
                Log.d("PrExportConverter", "audio clip asset original duration : " + clip.getAssetReference().getDurationUs() + "  converted duration : " + inPoint);
                long j3 = j2 + inPoint > j ? j - j2 : inPoint;
                long duration = audioTrackClipConvertAudioClipForClip.getDuration();
                if (j3 != duration) {
                    audioTrackClipConvertAudioClipForClip.setDuration(j3);
                    audioTrackClipConvertAudioClipForClip.adjustOutPoint(j3 - duration);
                }
                if (z) {
                    arrayListAddMissingVideoTransitions = arrayList2 == null ? addMissingVideoTransitions(arrayList, calculateBeatMarkersForMediaRef(audioTrack), audioTrackClipConvertAudioClipForClip, jConvertFrameValueForMediaReference) : arrayList2;
                    Iterator<Long> it = arrayListAddMissingVideoTransitions.iterator();
                    while (it.hasNext()) {
                        audioTrackClipConvertAudioClipForClip.addMarker(new Marker(it.next().longValue(), -1L, "", ""));
                    }
                } else {
                    arrayListAddMissingVideoTransitions = arrayList2;
                }
                audioTrack2.addItem(audioTrackClipConvertAudioClipForClip);
                j2 += j3;
                arrayList2 = arrayListAddMissingVideoTransitions;
            }
            if (clip.getAudioFadeOutApplied()) {
                audioTrack2.addItem(new AudioFadeTransition(30L, Utils.TransitionAlignment.end, 30L));
            }
        }
        audioTrack2.calculateTimings();
    }

    private void convertSequence(Sequence sequence, com.adobe.premiereclip.prexport.fcpxml.Sequence sequence2, String str) {
        Clip clipCreateBumperClip;
        MasterClip masterClipConvertClipForBumper;
        VideoTrackClip videoTrackClipConvertTrackClipForOverlay;
        Log.d("PrExportConverter", "starting sequence conversion to xml");
        com.adobe.premiereclip.project.sequence.VideoTrack mainVideoTrack = sequence.getVideoTrackGroup().getMainVideoTrack();
        VideoTrack videoTrack = new VideoTrack();
        AudioTrack audioTrack = new AudioTrack(sequence2.getNumChannels());
        TrackOptions trackOptions = new TrackOptions(sequence.fadeInApplied(), sequence.fadeOutApplied(), sequence.transitionAppliedOnSequence());
        if (!sequence.getLook().getLookName().equals("Normal")) {
            trackOptions.setLook(convertLooksFilterForSequence(sequence, str));
        }
        convertVideoTrack(mainVideoTrack, videoTrack, audioTrack, trackOptions, str);
        sequence2.addVideoTrack(videoTrack);
        sequence2.addAudioTrack(audioTrack);
        com.adobe.premiereclip.project.sequence.AudioTrack audioTrack2 = sequence.getAudioTrackGroup().getAudioTrack();
        AudioTrack audioTrack3 = new AudioTrack(sequence2.getNumChannels());
        long duration = 0;
        if (videoTrack.numItems() > 0) {
            duration = videoTrack.getItemAt(videoTrack.numItems() - 1).getEnd();
        }
        ArrayList<Long> arrayList = new ArrayList<>();
        if (audioTrack2.isSnapToBeatApplied()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= videoTrack.numItems()) {
                    break;
                }
                TrackItem itemAt = videoTrack.getItemAt(i2);
                if (itemAt instanceof VideoTrackClip) {
                    arrayList.add(Long.valueOf(((VideoTrackClip) itemAt).getEnd()));
                }
                i = i2 + 1;
            }
        }
        convertAudioTrack(audioTrack2, audioTrack3, duration, str, audioTrack2.isSnapToBeatApplied(), arrayList);
        sequence2.addAudioTrack(audioTrack3);
        if (sequence.isOverlayEnabled() && (videoTrackClipConvertTrackClipForOverlay = convertTrackClipForOverlay(sequence, str)) != null) {
            VideoTrack videoTrack2 = new VideoTrack();
            if (trackOptions.fadeIn) {
                videoTrack2.addItem(new CrossDissolveTransition(getFadeDurationForClipDuration(videoTrackClipConvertTrackClipForOverlay.getDuration()), Utils.TransitionAlignment.start, 0L));
            }
            storeMasterClip(videoTrackClipConvertTrackClipForOverlay.getMasterClip(), videoTrackClipConvertTrackClipForOverlay.getName());
            videoTrackClipConvertTrackClipForOverlay.setDuration(duration);
            videoTrack2.addItem(videoTrackClipConvertTrackClipForOverlay);
            if (trackOptions.fadeOut) {
                long fadeDurationForClipDuration = getFadeDurationForClipDuration(videoTrackClipConvertTrackClipForOverlay.getDuration());
                videoTrack2.addItem(new CrossDissolveTransition(fadeDurationForClipDuration, Utils.TransitionAlignment.end, fadeDurationForClipDuration));
            }
            videoTrack2.calculateTimings();
            sequence2.addVideoTrack(videoTrack2);
        }
        if (sequence.isBumperEnabled(str) && (masterClipConvertClipForBumper = convertClipForBumper((clipCreateBumperClip = Editor.createBumperClip(DCXReader.getBumperPath(str))), str)) != null) {
            storeMasterClip(masterClipConvertClipForBumper, masterClipConvertClipForBumper.getName());
            VideoTrackClip videoTrackClip = new VideoTrackClip(masterClipConvertClipForBumper.getName(), masterClipConvertClipForBumper, 0L, masterClipConvertClipForBumper.getDuration());
            MotionFilter motionFilterConvertMotionFilterForBumperClip = convertMotionFilterForBumperClip(clipCreateBumperClip);
            if (motionFilterConvertMotionFilterForBumperClip != null) {
                videoTrackClip.addFilter(motionFilterConvertMotionFilterForBumperClip);
            }
            videoTrack.addItem(videoTrackClip);
            TrackItem emptyAudioTrackClip = new EmptyAudioTrackClip(masterClipConvertClipForBumper.getDuration());
            if (masterClipConvertClipForBumper.hasAudio()) {
                emptyAudioTrackClip = new AudioTrackClip(masterClipConvertClipForBumper.getName(), masterClipConvertClipForBumper, 0L, masterClipConvertClipForBumper.getDuration());
            }
            audioTrack.addItem(emptyAudioTrackClip);
            duration += masterClipConvertClipForBumper.getDuration();
        }
        sequence2.setDuration(duration);
    }

    private MotionFilter convertMotionFilterForBumperClip(Clip clip) {
        if (clip == null) {
            return null;
        }
        float fDetermineScaleForFrame = determineScaleForFrame(Size.makeSize(clip.getAssetReference().getWidth(), clip.getAssetReference().getHeight()), Size.makeSize(1920, 1080));
        if (fDetermineScaleForFrame == 100.0f) {
            return null;
        }
        MotionFilter motionFilter = new MotionFilter();
        motionFilter.setParamValue("Scale", fDetermineScaleForFrame);
        return motionFilter;
    }

    private MasterClip convertClipForBumper(Clip clip, String str) {
        String bumperName = DCXReader.getBumperName(str);
        String str2 = DCXProjectKeys.kDCXKey_Sequence_Bumper_Video_Default.equals(bumperName) ? bumperName + ".mp4" : bumperName;
        long jConvertFrameValueForVideo = clip != null ? convertFrameValueForVideo(Utilities.convertTimescale(clip.getDurationUs(), 1000000L, 30000L, 1000L)) : 0L;
        int numAudioChannels = 0;
        if (clip != null) {
            numAudioChannels = clip.getAssetReference().getNumAudioChannels();
        }
        return new MasterClip(str2, filePathForMediaWithFileName(str2), true, numAudioChannels, jConvertFrameValueForVideo, 0L);
    }

    private VideoTrackClip convertTrackClipForOverlay(Sequence sequence, String str) {
        String overlayName = DCXReader.getOverlayName(str);
        MasterClip masterClip = new MasterClip(overlayName, filePathForMediaWithFileName(overlayName), true, 0, 150L, 0L);
        storeMasterClip(masterClip, overlayName);
        VideoTrackClip videoTrackClip = new VideoTrackClip(overlayName, masterClip, 0L, 150L);
        MotionFilter motionFilter = new MotionFilter();
        String overlayPath = DCXReader.getOverlayPath(str);
        if (overlayPath != null && !overlayPath.equals("")) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(overlayPath, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            Rect rect = new Rect(0, 0, i, i2);
            Rect rect2 = new Rect(0, 0, 1920, 1080);
            VideoSettings videoSettings = masterClip.getVideoSettings();
            videoSettings.width = i;
            videoSettings.height = i2;
            motionFilter.setParamValue("Center", convertPointXToPercentXForFrame(rect, rect2), convertPointYToPercentYForFrame(rect, rect2));
        }
        videoTrackClip.addFilter(motionFilter);
        return videoTrackClip;
    }

    private float convertPointXToPercentXForFrame(Rect rect, Rect rect2) {
        return ((rect.centerX() * 2) - rect2.right) / (rect.right * 2);
    }

    private float convertPointYToPercentYForFrame(Rect rect, Rect rect2) {
        return ((rect.centerY() * 2) - rect2.bottom) / (rect.bottom * 2);
    }

    private void convertClips(ArrayList<Clip> arrayList, ArrayList<MasterClip> arrayList2, String str) {
        if (arrayList.size() > 0) {
            for (Clip clip : arrayList) {
                if (!clip.getClipType().equals(Clip.CLIP_TYPE.IMAGE_TITLE)) {
                    if (!this.mMasterClips.containsKey(getNameForMediaReference(clip.getAssetReference(), str))) {
                        Log.d("ProjConverter", "got clip name " + clip.getAssetReference().getAssetId());
                        MasterClip masterClipConvertMediaReferenceToMasterClip = convertMediaReferenceToMasterClip(clip.getAssetReference(), str);
                        storeMasterClip(masterClipConvertMediaReferenceToMasterClip, masterClipConvertMediaReferenceToMasterClip.getName());
                        arrayList2.add(masterClipConvertMediaReferenceToMasterClip);
                    }
                }
            }
        }
    }

    public void convertProject(Project project, com.adobe.premiereclip.prexport.fcpxml.Project project2) {
        this.mMasterClips.clear();
        String projectName = project.getProjectName();
        Sequence sequence = project.getSequence();
        ArrayList<Clip> arrayList = new ArrayList<>(sequence.getVideoTrackGroup().getMainVideoTrack().getClips());
        if (sequence.getAudioTrackGroup().getAudioTrack().getNumClips() > 0) {
            arrayList.add(sequence.getAudioTrackGroup().getAudioTrack().getClipAtIndex(0));
        }
        convertClips(arrayList, new ArrayList<>(), project.projectKey);
        com.adobe.premiereclip.prexport.fcpxml.Sequence sequence2 = new com.adobe.premiereclip.prexport.fcpxml.Sequence(projectName);
        convertSequence(sequence, sequence2, project.projectKey);
        project2.addSequence(sequence2);
    }

    class TrackOptions {
        public boolean crossDissolve;
        public boolean fadeIn;
        public boolean fadeOut;
        public LooksFilter look = null;

        public TrackOptions(boolean z, boolean z2, boolean z3) {
            this.fadeIn = z;
            this.fadeOut = z2;
            this.crossDissolve = z3;
        }

        public void setLook(LooksFilter looksFilter) {
            this.look = looksFilter;
        }
    }
}
