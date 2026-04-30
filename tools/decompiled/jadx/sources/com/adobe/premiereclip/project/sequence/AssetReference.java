package com.adobe.premiereclip.project.sequence;

import android.net.Uri;
import com.adobe.premiereclip.media.ClipAsset;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;

/* JADX INFO: loaded from: classes2.dex */
public class AssetReference {
    private String assetId;
    private String assetPath;
    private Uri assetUri;
    private long duration;
    private long durationUs;
    private String mediaType;
    private int numAudioChannels;
    private String originalAssetDate;
    private String originalAssetPath;
    private long timescale = 30000;
    private boolean propertiesSet = false;
    private int width = -1;
    private int height = -1;
    private Rotation rotation = Rotation.NORMAL;

    public AssetReference(String str, Uri uri, String str2, String str3, String str4, String str5) {
        this.assetId = str;
        this.assetUri = uri;
        this.mediaType = str5;
        this.assetPath = str2;
        this.originalAssetPath = str3;
        this.originalAssetDate = str4;
        if (this.mediaType.equals("audio")) {
            this.numAudioChannels = 1;
        } else {
            this.numAudioChannels = 0;
        }
    }

    public boolean getPropertiesSet() {
        return this.propertiesSet;
    }

    public void setPropertiesSet(boolean z) {
        this.propertiesSet = z;
    }

    public long getDuration() {
        return this.duration;
    }

    public long getTimescale() {
        return this.timescale;
    }

    public void setDurationAndTimescale(long j, long j2) {
        this.duration = j;
        this.timescale = j2;
        this.durationUs = (1000000 * j) / j2;
    }

    public ClipAsset getClipAsset() {
        ClipAsset clipAsset = new ClipAsset();
        clipAsset.assetType = this.mediaType;
        clipAsset.clipAssetID = this.assetId;
        clipAsset.fileUri = this.assetUri;
        clipAsset.filePath = this.assetPath;
        return clipAsset;
    }

    public void setDurationUs(long j) {
        this.durationUs = j;
        this.duration = (this.timescale * j) / 1000000;
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public Rotation getRotation() {
        if (this.rotation == null) {
            this.rotation = Rotation.NORMAL;
        }
        return this.rotation;
    }

    public void setRotation(Rotation rotation) {
        this.rotation = rotation;
    }

    public String getMediaType() {
        return this.mediaType;
    }

    public void setMediaType(String str) {
        this.mediaType = str;
    }

    public Uri getAssetUri() {
        return this.assetUri;
    }

    public String getAssetId() {
        return this.assetId;
    }

    public String getOriginalAssetDate() {
        return this.originalAssetDate;
    }

    public String getAssetPath() {
        return this.assetPath;
    }

    public String getOriginalAssetPath() {
        return this.originalAssetPath;
    }

    public void setAssetPath(String str) {
        this.assetPath = str;
    }

    public void setAssetId(String str) {
        this.assetId = str;
    }

    public int getNumAudioChannels() {
        return this.numAudioChannels;
    }

    public void setNumAudioChannels(int i) {
        this.numAudioChannels = i;
    }

    public void setOriginalAssetPath(String str) {
        this.originalAssetPath = str;
    }

    public void setOriginalAssetDate(String str) {
        this.originalAssetDate = str;
    }
}
