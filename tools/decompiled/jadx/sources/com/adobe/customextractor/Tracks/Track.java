package com.adobe.customextractor.Tracks;

import com.adobe.customextractor.Util.Media.MediaFormat;

/* JADX INFO: loaded from: classes2.dex */
public final class Track {
    public static final int TYPE_AUDIO = 1936684398;
    public static final int TYPE_HINT = 1751740020;
    public static final int TYPE_META = 1835365473;
    public static final int TYPE_TEXT = 1952807028;
    public static final int TYPE_TIME_CODE = 1953325924;
    public static final int TYPE_VIDEO = 1986618469;
    public final long durationUs;
    public final int id;
    public final MediaFormat mediaFormat;
    public final int nalUnitLengthFieldLength;
    public final TrackEncryptionBox[] sampleDescriptionEncryptionBoxes;
    public final long timescale;
    public final int type;

    public Track(int i, int i2, long j, long j2, MediaFormat mediaFormat, TrackEncryptionBox[] trackEncryptionBoxArr, int i3) {
        this.id = i;
        this.type = i2;
        this.timescale = j;
        this.durationUs = j2;
        this.mediaFormat = mediaFormat;
        this.sampleDescriptionEncryptionBoxes = trackEncryptionBoxArr;
        this.nalUnitLengthFieldLength = i3;
    }
}
