package com.adobe.premiereclip.project.sequence;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.premiereclip.editor.waveform.WaveUtils;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.looks.LocalLooks;
import com.adobe.premiereclip.media.TitleImage;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class Clip {
    static final /* synthetic */ boolean $assertionsDisabled;
    private AssetReference assetReference;
    private boolean audioFadeInApplied;
    private boolean audioFadeOutApplied;
    private boolean availability;
    private String clipGroupId;
    private String clipId;
    private ClipOptionsEffects clipOptionsEffects;
    private CLIP_TYPE clipType;
    private long contentIn;
    private long contentOut;
    private boolean disableTransition;
    protected BaseLook look;
    private int maxHeight;
    private int maxWidth;
    private boolean muted;
    private float scale;
    private boolean scalingOn;
    private boolean smartVolumeApplied;
    private double speed;
    public final long stableId = System.nanoTime();
    private boolean tempUnavailable;
    private float volume;

    public enum CLIP_TYPE {
        NONE,
        VIDEO,
        IMAGE_NON_TITLE,
        IMAGE_TITLE,
        EMPTY_VIDEO,
        AUDIO,
        EMPTY_AUDIO,
        TRANSITION,
        VIDEO_BUMPER,
        STORY_CARD
    }

    static {
        $assertionsDisabled = !Clip.class.desiredAssertionStatus();
    }

    public Clip(AssetReference assetReference, long j, long j2, CLIP_TYPE clip_type, String str) {
        long durationUs;
        this.assetReference = assetReference;
        this.clipType = clip_type;
        if (assetReference == null && clip_type == CLIP_TYPE.EMPTY_VIDEO) {
            this.contentIn = j;
            this.contentOut = j + j2;
            this.availability = true;
        } else if (this.assetReference.getDurationUs() == 0) {
            this.contentIn = 0L;
            this.contentOut = 0L;
            this.availability = false;
        } else {
            if (j2 == 0) {
                switch (this.assetReference.getMediaType()) {
                    case "video":
                        durationUs = this.assetReference.getDurationUs();
                        break;
                    case "image":
                        durationUs = 2500000;
                        break;
                    default:
                        durationUs = WaveUtils.END_DURATION_BLOCKED;
                        break;
                }
            } else {
                durationUs = j + j2 > this.assetReference.getDurationUs() ? this.assetReference.getDurationUs() - j : j2;
            }
            this.contentIn = j;
            this.contentOut = durationUs + j;
            this.availability = true;
        }
        this.muted = false;
        this.volume = 1.0f;
        this.clipId = str;
        this.clipGroupId = null;
        this.clipOptionsEffects = new ClipOptionsEffects(0.0f, 0.5f, 0.5f);
        this.speed = 1.0d;
        this.audioFadeInApplied = false;
        this.audioFadeOutApplied = true;
        this.smartVolumeApplied = false;
        this.look = LocalLooks.getClipLook("0");
        this.maxWidth = Sequence.PLAYBACK_WIDTH;
        this.maxHeight = Sequence.PLAYBACK_HEIGHT;
        this.scalingOn = false;
        this.disableTransition = false;
        this.tempUnavailable = false;
        this.scale = 1.0f;
    }

    public boolean disabledTransition() {
        return this.disableTransition;
    }

    public void setDisableTransition(boolean z) {
        this.disableTransition = z;
    }

    public void setTempUnavailable(boolean z) {
        this.tempUnavailable = z;
    }

    public void setScalingOn(boolean z) {
        this.scalingOn = z;
    }

    public boolean getScalingOn() {
        return this.scalingOn && this.clipType == CLIP_TYPE.IMAGE_NON_TITLE;
    }

    public boolean isBumper() {
        return this.clipType == CLIP_TYPE.VIDEO_BUMPER;
    }

    public void setBumper() {
        setClipType(CLIP_TYPE.VIDEO_BUMPER);
    }

    public Object[] getOriginalDimensions() {
        return new Object[]{Integer.valueOf(getAssetReference().getWidth()), Integer.valueOf(getAssetReference().getHeight()), getAssetReference().getRotation()};
    }

    public Object[] getDimensions() {
        int width = getAssetReference().getWidth();
        int height = getAssetReference().getHeight();
        if (this.clipType == CLIP_TYPE.IMAGE_NON_TITLE) {
            float f2 = width / height;
            if (f2 > this.maxWidth / this.maxHeight) {
                if (width > this.maxWidth) {
                    width = this.maxWidth;
                    height = (int) (width / f2);
                }
            } else if (height > this.maxHeight) {
                height = this.maxHeight;
                width = (int) (height * f2);
            }
        }
        return new Object[]{Integer.valueOf(width), Integer.valueOf(height), getAssetReference().getRotation()};
    }

    protected void setMaxWidth(int i) {
        this.maxWidth = i;
    }

    protected void setMaxHeight(int i) {
        this.maxHeight = i;
    }

    public AssetReference getAssetReference() {
        return this.assetReference;
    }

    public CLIP_TYPE getClipType() {
        return this.clipType;
    }

    public String getClipTypeString() {
        switch (this.clipType) {
            case IMAGE_TITLE:
                return "Title";
            case IMAGE_NON_TITLE:
                return "StillImage";
            case VIDEO:
                return DCXProjectKeys.kDCXKey_MediaRef_componentVideo_name;
            case AUDIO:
                return DCXProjectKeys.kDCXKey_MediaRef_componentAudio_name;
            default:
                return "None";
        }
    }

    public String getClipId() {
        return this.clipId;
    }

    public String getClipGroupId() {
        return this.clipGroupId;
    }

    public void setClipGroupId(String str) {
        this.clipGroupId = str;
    }

    public long getTimeScale() {
        if (this.assetReference == null || !this.assetReference.getMediaType().equals("audio")) {
            return 30000L;
        }
        return DCXProjectKeys.kDefaultDCXAudioTimeScale;
    }

    public long getStartTimeUs() {
        if (this.tempUnavailable) {
            return 0L;
        }
        return this.contentIn;
    }

    public long getEndTimeUs() {
        if (this.tempUnavailable) {
            return 0L;
        }
        return this.contentOut;
    }

    public long getDurationUs() {
        return getEndTimeUs() - getStartTimeUs();
    }

    public long getStartTimeUsWithSpeed() {
        return (long) (getStartTimeUs() / this.speed);
    }

    public long getEndTimeUsWithSpeed() {
        return (long) (getEndTimeUs() / this.speed);
    }

    public void setStartTimeUs(long j) {
        this.contentIn = j;
    }

    public void setEndTimeUs(long j) {
        this.contentOut = j;
    }

    public long getDurationUsWithSpeed() {
        return (long) (getDurationUs() / this.speed);
    }

    public void setAvailability(boolean z) {
        this.availability = z;
        if (!this.availability) {
            setStartTimeUs(0L);
            setEndTimeUs(0L);
        }
    }

    public boolean isAvailable() {
        return this.availability && !this.tempUnavailable;
    }

    public void muteClip() {
        this.muted = true;
    }

    public void unMuteClip() {
        this.muted = false;
    }

    public void setVolume(float f2) {
        this.volume = f2;
    }

    public float getVolume() {
        return this.volume;
    }

    public void setExposure(float f2) {
        this.clipOptionsEffects.setExposure(f2);
    }

    public void setSeekExposure(float f2) {
        this.clipOptionsEffects.setSeekExposure(f2);
    }

    public void setDCXExposure(float f2) {
        this.clipOptionsEffects.setDCXExposure(f2);
    }

    public float getSpeed() {
        return (float) this.speed;
    }

    public void setSpeed(float f2) {
        this.speed = f2;
    }

    public boolean isMuted() {
        return this.muted;
    }

    public boolean getAudioFadeInApplied() {
        return this.audioFadeInApplied;
    }

    public boolean getAudioFadeOutApplied() {
        return this.audioFadeOutApplied;
    }

    public void setAudioFadeInApplied(boolean z) {
        this.audioFadeInApplied = z;
    }

    public void setAudioFadeOutApplied(boolean z) {
        this.audioFadeOutApplied = z;
    }

    public boolean getSmartVolumeApplied() {
        return this.smartVolumeApplied;
    }

    public void setSmartVolumeApplied(boolean z) {
        this.smartVolumeApplied = z;
    }

    public void setHighlights(float f2) {
        this.clipOptionsEffects.setHighlights(f2);
    }

    public void setShadows(float f2) {
        this.clipOptionsEffects.setShadows(f2);
    }

    public ClipOptionsEffects getClipOptionEffects() {
        return this.clipOptionsEffects;
    }

    public BaseLook getLook() {
        return this.look;
    }

    public void setLook(BaseLook baseLook) {
        if (this.clipType != CLIP_TYPE.IMAGE_TITLE && this.clipType != CLIP_TYPE.STORY_CARD && this.clipType != CLIP_TYPE.VIDEO_BUMPER) {
            this.look = baseLook;
        }
    }

    protected void setClipType(CLIP_TYPE clip_type) {
        this.clipType = clip_type;
    }

    public void restoreClipOptions() {
        this.clipOptionsEffects = new ClipOptionsEffects(0.0f, 0.5f, 0.5f);
    }

    public Clip copyClip() {
        Clip clipCreateClip;
        String string = UUID.randomUUID().toString();
        AssetReference assetReference = getAssetReference();
        if (getClipType() == CLIP_TYPE.IMAGE_TITLE) {
            TitleImage titleImageCopyTitleImage = ((ImageClip) this).copyTitleImage();
            AssetReference assetReference2 = new AssetReference(titleImageCopyTitleImage.getClipAsset().clipAssetID, this.assetReference.getAssetUri(), this.assetReference.getAssetPath(), this.assetReference.getOriginalAssetPath(), this.assetReference.getOriginalAssetDate(), this.assetReference.getMediaType());
            assetReference2.setWidth(this.assetReference.getWidth());
            assetReference2.setHeight(this.assetReference.getHeight());
            assetReference2.setRotation(this.assetReference.getRotation());
            assetReference2.setDurationUs(this.assetReference.getDurationUs());
            clipCreateClip = Sequence.createClip(assetReference2, getStartTimeUs(), getDurationUs(), string);
            ((ImageClip) clipCreateClip).setTitleImage(titleImageCopyTitleImage);
        } else {
            clipCreateClip = Sequence.createClip(assetReference, getStartTimeUs(), getDurationUs(), string);
        }
        if (!$assertionsDisabled && clipCreateClip == null) {
            throw new AssertionError();
        }
        clipCreateClip.setSpeed(getSpeed());
        if (isMuted()) {
            clipCreateClip.muteClip();
        }
        clipCreateClip.setAudioFadeInApplied(getAudioFadeInApplied());
        clipCreateClip.setAudioFadeOutApplied(getAudioFadeOutApplied());
        clipCreateClip.setAvailability(isAvailable());
        clipCreateClip.setExposure(getClipOptionEffects().getExposure());
        clipCreateClip.setHighlights(getClipOptionEffects().getHighlights());
        clipCreateClip.setShadows(getClipOptionEffects().getShadows());
        clipCreateClip.setVolume(getVolume());
        clipCreateClip.setSmartVolumeApplied(getSmartVolumeApplied());
        return clipCreateClip;
    }

    public void setScale(float f2) {
        this.scale = f2;
    }

    public float getScale() {
        return this.scale;
    }
}
