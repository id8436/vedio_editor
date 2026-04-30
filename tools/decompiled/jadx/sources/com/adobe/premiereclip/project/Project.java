package com.adobe.premiereclip.project;

import android.util.Log;
import c.a.a.a.a.d.d;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.media.ClipAsset;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ClipOptionsEffects;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.ThumbnailHelper;
import com.adobe.premiereclip.util.Utilities;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.data.analytics.Engagement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class Project {
    private static final long MIN_CLIP_DURATION_DCX = 5000;
    private static final String TAG = "Project";
    public static final int kAnalyticsProjectModeAuto = 1;
    public static final int kAnalyticsProjectModeFreeform = 0;
    private Date creationDate;
    private int editMode;
    private Date lastModifiedDate;
    private String posterAssetPath;
    private ClipOptionsEffects posterEffects;
    private String posterHashValue;
    private long posterInTime;
    private BaseLook posterLook;
    public final String projectKey;
    private String projectName;
    private Sequence sequence;
    private int assetCount = 0;
    private String posterPath = null;
    private String normalPosterPath = null;
    private boolean pendingSendPPro = false;

    Project(String str, String str2, Date date, Sequence sequence) {
        this.projectKey = str;
        this.projectName = str2;
        this.creationDate = date;
        this.lastModifiedDate = date;
        this.sequence = sequence;
    }

    public String getProjectExportName() {
        String[] strArr = {URIUtil.SLASH, "\"", ":", "?", "*", "\\", BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR, Engagement.Comparison.LT, Engagement.Comparison.GT};
        String strReplace = this.projectName;
        for (String str : strArr) {
            strReplace = strReplace.replace(str, d.ROLL_OVER_FILE_NAME_SEPARATOR);
        }
        return strReplace;
    }

    public String getProjectName() {
        return this.projectName;
    }

    public void setProjectName(String str) {
        this.projectName = str;
    }

    public Date getCreationDate() {
        return this.creationDate;
    }

    public Date getLastModifiedDate() {
        return this.lastModifiedDate;
    }

    public void setLastModifiedDate(Date date) {
        this.lastModifiedDate = date;
    }

    public boolean isPendingSendPPro() {
        return this.pendingSendPPro;
    }

    public void setPendingSendPPro(boolean z) {
        this.pendingSendPPro = z;
    }

    public int getPosterClipIndex() {
        ArrayList<Clip> clips = this.sequence.getClips();
        if (clips.size() == 0) {
            return -1;
        }
        Clip clip = clips.get(0);
        if (clips.size() == 1) {
            return 0;
        }
        int i = 0;
        Clip clip2 = clip;
        int i2 = 0;
        while (true) {
            if (clip2.getClipType() == Clip.CLIP_TYPE.STORY_CARD || clip2.getClipType() == Clip.CLIP_TYPE.IMAGE_TITLE) {
                i++;
                if (i >= clips.size()) {
                    return 0;
                }
                clip2 = clips.get(i);
                i2 = i;
            } else {
                return i2;
            }
        }
    }

    public Clip getPosterClip() {
        int posterClipIndex = getPosterClipIndex();
        if (posterClipIndex == -1) {
            return null;
        }
        return this.sequence.getClips().get(posterClipIndex);
    }

    public String getThumbPath() {
        Clip posterClip = getPosterClip();
        if (posterClip != null) {
            return posterClip.getAssetReference().getClipAsset().filePath;
        }
        return null;
    }

    public Clip.CLIP_TYPE getThumbType() {
        return this.sequence.getClips().size() == 0 ? Clip.CLIP_TYPE.NONE : getPosterClip().getClipType();
    }

    public boolean shouldApplyLookOnPoster() {
        Clip posterClip = getPosterClip();
        return (posterClip == null || posterClip.getClipType() == Clip.CLIP_TYPE.IMAGE_TITLE || posterClip.getClipType() == Clip.CLIP_TYPE.STORY_CARD) ? false : true;
    }

    public void setPosterPath(String str) {
        this.posterPath = str;
    }

    public void setNormalPosterPath(String str) {
        this.normalPosterPath = str;
    }

    public String getPosterPath() {
        return this.posterPath;
    }

    public String getNormalPosterPath() {
        return this.normalPosterPath;
    }

    public String getPosterHashValue() {
        return this.posterHashValue;
    }

    public void setPosterHashValue(String str) {
        this.posterHashValue = str;
    }

    public void setEditMode(int i) {
        this.editMode = i;
    }

    public int getEditMode() {
        return this.editMode;
    }

    public boolean posterPropertiesEqual(String str) {
        boolean z;
        ClipOptionsEffects clipOptionsEffects;
        if (this.posterAssetPath == null) {
            return str == null;
        }
        if (str != null && this.normalPosterPath != null) {
            boolean z2 = this.posterAssetPath.equals(str) && this.posterLook == this.sequence.getLook();
            Clip posterClip = getPosterClip();
            if (posterClip != null) {
                ClipOptionsEffects clipOptionEffects = posterClip.getClipOptionEffects();
                z = z2 && (posterClip.getClipType() != Clip.CLIP_TYPE.VIDEO || this.posterInTime == posterClip.getStartTimeUs());
                clipOptionsEffects = clipOptionEffects;
            } else {
                Log.w(TAG, "We have got in a pickle");
                z = z2;
                clipOptionsEffects = new ClipOptionsEffects();
            }
            return z && this.posterEffects.getExposure() == clipOptionsEffects.getExposure() && this.posterEffects.getHighlights() == clipOptionsEffects.getHighlights() && this.posterEffects.getShadows() == clipOptionsEffects.getShadows();
        }
        return false;
    }

    public void setPosterProperties() {
        this.posterAssetPath = null;
        this.posterInTime = 0L;
        this.posterLook = this.sequence.getLook();
        this.posterEffects = new ClipOptionsEffects();
        Clip posterClip = getPosterClip();
        if (posterClip != null) {
            ClipOptionsEffects clipOptionEffects = posterClip.getClipOptionEffects();
            this.posterEffects.setExposure(clipOptionEffects.getExposure());
            this.posterEffects.setHighlights(clipOptionEffects.getHighlights());
            this.posterEffects.setShadows(clipOptionEffects.getShadows());
            this.posterInTime = posterClip.getStartTimeUs();
            this.posterAssetPath = posterClip.getAssetReference().getAssetPath();
        }
    }

    public Sequence getSequence() {
        return this.sequence;
    }

    public double getDurationUs() {
        return this.sequence.getSequenceDurationUs();
    }

    public void addAssets(ArrayList<ClipAsset> arrayList) {
        addAssetsAtIndex(arrayList, 0);
    }

    public static Clip createClip(ClipAsset clipAsset, ArrayList<Clip> arrayList) {
        AssetReference assetReference = null;
        Iterator<Clip> it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Clip next = it.next();
            if (next.getAssetReference().getAssetPath().equals(clipAsset.filePath)) {
                assetReference = next.getAssetReference();
                break;
            }
        }
        if (assetReference == null) {
            AssetReference assetReference2 = new AssetReference(clipAsset.clipAssetID, clipAsset.fileUri, clipAsset.filePath, clipAsset.originalPath, clipAsset.originalAssetDate, clipAsset.assetType);
            assetReference2.setWidth(clipAsset.width);
            assetReference2.setHeight(clipAsset.height);
            assetReference2.setRotation(clipAsset.rotation);
            assetReference2.setDurationUs(0L);
            assetReference = assetReference2;
        }
        return Sequence.createClip(assetReference, 0L, 0L, UUID.randomUUID().toString());
    }

    public void addAssetsAtIndex(ArrayList<ClipAsset> arrayList, int i) {
        ArrayList<Clip> arrayList2 = new ArrayList<>();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= arrayList.size()) {
                break;
            }
            Clip clipCreateClip = createClip(arrayList.get(i3), this.sequence.getClips());
            Metrics.sharedInstance().didAddVideoClipWithHeight(clipCreateClip.getAssetReference().getHeight(), clipCreateClip.getAssetReference().getWidth(), 0.0d, clipCreateClip.getSpeed());
            arrayList2.add(clipCreateClip);
            i2 = i3 + 1;
        }
        this.sequence.addClipsAtIndex(arrayList2, i);
        this.assetCount += arrayList2.size();
        if (arrayList.size() != 0) {
            ArrayList<Clip> clips = this.sequence.getClips();
            DCXWriter.addClips(i + (-1) >= 0 ? clips.get(i - 1) : null, arrayList2, arrayList2.size() + i < clips.size() ? clips.get(arrayList2.size() + i) : null);
        }
    }

    public void replaceAssetAtIndex(int i, ClipAsset clipAsset) {
        String clipId = this.sequence.getClips().get(i).getClipId();
        AssetReference assetReference = new AssetReference(clipAsset.clipAssetID, clipAsset.fileUri, clipAsset.filePath, clipAsset.originalPath, clipAsset.originalAssetDate, clipAsset.assetType);
        assetReference.setWidth(clipAsset.width);
        assetReference.setHeight(clipAsset.height);
        assetReference.setRotation(clipAsset.rotation);
        assetReference.setDurationUs(0L);
        Clip clipCreateClip = Sequence.createClip(assetReference, 0L, 0L, clipId);
        this.sequence.addClipAtIndex(clipCreateClip, i);
        this.sequence.removeClip(i + 1);
        ThumbnailHelper.resetKey(clipId);
        BitmapCache.markBitmapDirty(clipId);
        DCXWriter.updateClip(clipCreateClip);
    }

    public void addClipsAtIndex(ArrayList<Clip> arrayList, int i) {
        ArrayList<Clip> clips = this.sequence.getClips();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= arrayList.size()) {
                break;
            }
            Clip clip = arrayList.get(i3);
            Metrics.sharedInstance().didAddVideoClipWithHeight(clip.getAssetReference().getHeight(), clip.getAssetReference().getWidth(), 0.0d, clip.getSpeed());
            this.sequence.addClipAtIndex(clip, i + i3);
            this.assetCount++;
            i2 = i3 + 1;
        }
        if (arrayList.size() != 0) {
            DCXWriter.addClips(i + (-1) >= 0 ? clips.get(i - 1) : null, arrayList, arrayList.size() + i < clips.size() ? clips.get(arrayList.size() + i) : null);
        }
    }

    public void removeAsset(int i) {
        this.sequence.removeClip(i);
        this.assetCount--;
    }

    public void removeGroupAsset(int i) {
        int firstClipIndexInGroup = this.sequence.getFirstClipIndexInGroup(i);
        int lastClipIndexInGroup = this.sequence.getLastClipIndexInGroup(i);
        this.sequence.removeClips(firstClipIndexInGroup, lastClipIndexInGroup);
        this.sequence.removeGroup(i);
        this.assetCount -= (lastClipIndexInGroup - firstClipIndexInGroup) + 1;
    }

    public void moveAsset(int i, int i2) {
        this.sequence.moveClip(i, i2);
    }

    public void moveGroupAsset(int i, int i2) {
        this.sequence.moveGroup(i, i2);
    }

    public void setGlobalTransition(boolean z) {
        this.sequence.setGlobalTransition(z);
    }

    public void setStartTimeOfClipUs(int i, long j) {
        this.sequence.setStartTimeOfClipUs(i, j);
    }

    public void setEndTimeOfClipUs(int i, long j) {
        this.sequence.setEndTimeOfClipUs(i, j);
    }

    public void setExposureOnClip(int i, float f2) {
        this.sequence.getClips().get(i).setSeekExposure(f2);
    }

    public void setHighlightsOnClip(int i, float f2) {
        this.sequence.getClips().get(i).setHighlights(f2);
    }

    public void setShadowsOnClip(int i, float f2) {
        this.sequence.getClips().get(i).setShadows(f2);
    }

    public void setSpeedOfClip(int i, float f2) {
        this.sequence.getClips().get(i).setSpeed(f2);
    }

    public void setAudioFadeInOfClip(int i, boolean z) {
        this.sequence.getClips().get(i).setAudioFadeInApplied(z);
    }

    public void setAudioFadeOutOfClip(int i, boolean z) {
        this.sequence.getClips().get(i).setAudioFadeOutApplied(z);
    }

    public void setSmartVolumeOfClip(int i, boolean z) {
        this.sequence.getClips().get(i).setSmartVolumeApplied(z);
    }

    public void setAudioVolumeOfClip(int i, float f2) {
        this.sequence.getClips().get(i).setVolume(f2);
    }

    public void muteClip(int i) {
        this.sequence.getClips().get(i).muteClip();
    }

    public void unMuteClip(int i) {
        this.sequence.getClips().get(i).unMuteClip();
    }

    public void setAssetDuration(int i, long j) {
        this.sequence.setAssetDurationUs(i, j);
    }

    public void setAssetAvailability(int i, boolean z) {
        this.sequence.setAvailability(i, z);
    }

    private static long convertSeconds2AlignedUs(float f2) {
        return Utilities.convertTimescale((((long) (30000.0f * f2)) / 1000) * 1000, 30000L, 1000000L, 1L);
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x02f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void composeAutomaticTimeline(float r24, com.adobe.premiereclip.project.sequence.SyncData r25, android.os.Handler r26) {
        /*
            Method dump skipped, instruction units count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.project.Project.composeAutomaticTimeline(float, com.adobe.premiereclip.project.sequence.SyncData, android.os.Handler):void");
    }
}
