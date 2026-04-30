package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MediaFormat {
    private static final String KEY_PIXEL_WIDTH_HEIGHT_RATIO = "com.google.android.videos.pixelWidthHeightRatio";
    public static final int NO_VALUE = -1;
    public final int bitrate;
    public final int channelCount;
    private android.media.MediaFormat frameworkMediaFormat;
    private int hashCode;
    public final int height;
    public final List<byte[]> initializationData;
    private int maxHeight;
    public final int maxInputSize;
    private int maxWidth;
    public final String mimeType;
    public final float pixelWidthHeightRatio;
    public final int sampleRate;
    public final int width;

    @TargetApi(16)
    public static MediaFormat createFromFrameworkMediaFormatV16(android.media.MediaFormat mediaFormat) {
        return new MediaFormat(mediaFormat);
    }

    public static MediaFormat createVideoFormat(String str, int i, int i2, int i3, List<byte[]> list) {
        return createVideoFormat(str, i, i2, i3, 1.0f, list);
    }

    public static MediaFormat createVideoFormat(String str, int i, int i2, int i3, float f2, List<byte[]> list) {
        return new MediaFormat(str, i, i2, i3, f2, -1, -1, -1, list);
    }

    public static MediaFormat createAudioFormat(String str, int i, int i2, int i3, List<byte[]> list) {
        return new MediaFormat(str, i, -1, -1, -1.0f, i2, i3, -1, list);
    }

    public static MediaFormat createAudioFormat(String str, int i, int i2, int i3, int i4, List<byte[]> list) {
        return new MediaFormat(str, i, -1, -1, -1.0f, i2, i3, i4, list);
    }

    public static MediaFormat createId3Format() {
        return createFormatForMimeType("application/id3");
    }

    public static MediaFormat createEia608Format() {
        return createFormatForMimeType("application/eia-608");
    }

    public static MediaFormat createTtmlFormat() {
        return createFormatForMimeType("application/ttml+xml");
    }

    public static MediaFormat createFormatForMimeType(String str) {
        return new MediaFormat(str, -1, -1, -1, -1.0f, -1, -1, -1, null);
    }

    @TargetApi(16)
    private MediaFormat(android.media.MediaFormat mediaFormat) {
        this.frameworkMediaFormat = mediaFormat;
        this.mimeType = mediaFormat.getString("mime");
        this.maxInputSize = getOptionalIntegerV16(mediaFormat, "max-input-size");
        this.width = getOptionalIntegerV16(mediaFormat, "width");
        this.height = getOptionalIntegerV16(mediaFormat, "height");
        this.channelCount = getOptionalIntegerV16(mediaFormat, "channel-count");
        this.sampleRate = getOptionalIntegerV16(mediaFormat, "sample-rate");
        this.bitrate = getOptionalIntegerV16(mediaFormat, "bitrate");
        this.pixelWidthHeightRatio = getOptionalFloatV16(mediaFormat, KEY_PIXEL_WIDTH_HEIGHT_RATIO);
        this.initializationData = new ArrayList();
        for (int i = 0; mediaFormat.containsKey("csd-" + i); i++) {
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer("csd-" + i);
            byte[] bArr = new byte[byteBuffer.limit()];
            byteBuffer.get(bArr);
            this.initializationData.add(bArr);
            byteBuffer.flip();
        }
        this.maxWidth = -1;
        this.maxHeight = -1;
    }

    private MediaFormat(String str, int i, int i2, int i3, float f2, int i4, int i5, int i6, List<byte[]> list) {
        this.mimeType = str;
        this.maxInputSize = i;
        this.width = i2;
        this.height = i3;
        this.pixelWidthHeightRatio = f2;
        this.channelCount = i4;
        this.sampleRate = i5;
        this.bitrate = i6;
        this.initializationData = list == null ? Collections.emptyList() : list;
        this.maxWidth = -1;
        this.maxHeight = -1;
    }

    public void setMaxVideoDimensions(int i, int i2) {
        this.maxWidth = i;
        this.maxHeight = i2;
        if (this.frameworkMediaFormat != null) {
            maybeSetMaxDimensionsV16(this.frameworkMediaFormat);
        }
    }

    public int getMaxVideoWidth() {
        return this.maxWidth;
    }

    public int getMaxVideoHeight() {
        return this.maxHeight;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            int iHashCode = (((((((((((((((((((this.mimeType == null ? 0 : this.mimeType.hashCode()) + 527) * 31) + this.maxInputSize) * 31) + this.width) * 31) + this.height) * 31) + Float.floatToRawIntBits(this.pixelWidthHeightRatio)) * 31) + this.maxWidth) * 31) + this.maxHeight) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.bitrate;
            for (int i = 0; i < this.initializationData.size(); i++) {
                iHashCode = Arrays.hashCode(this.initializationData.get(i)) + (iHashCode * 31);
            }
            this.hashCode = iHashCode;
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return equalsInternal((MediaFormat) obj, false);
    }

    public boolean equals(MediaFormat mediaFormat, boolean z) {
        if (this == mediaFormat) {
            return true;
        }
        if (mediaFormat == null) {
            return false;
        }
        return equalsInternal(mediaFormat, z);
    }

    private boolean equalsInternal(MediaFormat mediaFormat, boolean z) {
        if (this.maxInputSize != mediaFormat.maxInputSize || this.width != mediaFormat.width || this.height != mediaFormat.height || this.pixelWidthHeightRatio != mediaFormat.pixelWidthHeightRatio) {
            return false;
        }
        if ((!z && (this.maxWidth != mediaFormat.maxWidth || this.maxHeight != mediaFormat.maxHeight)) || this.channelCount != mediaFormat.channelCount || this.sampleRate != mediaFormat.sampleRate || !Util.areEqual(this.mimeType, mediaFormat.mimeType) || this.bitrate != mediaFormat.bitrate || this.initializationData.size() != mediaFormat.initializationData.size()) {
            return false;
        }
        for (int i = 0; i < this.initializationData.size(); i++) {
            if (!Arrays.equals(this.initializationData.get(i), mediaFormat.initializationData.get(i))) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return "MediaFormat(" + this.mimeType + ", " + this.maxInputSize + ", " + this.width + ", " + this.height + ", " + this.pixelWidthHeightRatio + ", " + this.channelCount + ", " + this.sampleRate + ", " + this.bitrate + ", " + this.maxWidth + ", " + this.maxHeight + ")";
    }

    @TargetApi(16)
    public final android.media.MediaFormat getFrameworkMediaFormatV16() {
        if (this.frameworkMediaFormat == null) {
            android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
            mediaFormat.setString("mime", this.mimeType);
            maybeSetIntegerV16(mediaFormat, "max-input-size", this.maxInputSize);
            maybeSetIntegerV16(mediaFormat, "width", this.width);
            maybeSetIntegerV16(mediaFormat, "height", this.height);
            maybeSetIntegerV16(mediaFormat, "channel-count", this.channelCount);
            maybeSetIntegerV16(mediaFormat, "sample-rate", this.sampleRate);
            maybeSetIntegerV16(mediaFormat, "bitrate", this.bitrate);
            maybeSetFloatV16(mediaFormat, KEY_PIXEL_WIDTH_HEIGHT_RATIO, this.pixelWidthHeightRatio);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.initializationData.size()) {
                    break;
                }
                mediaFormat.setByteBuffer("csd-" + i2, ByteBuffer.wrap(this.initializationData.get(i2)));
                i = i2 + 1;
            }
            maybeSetMaxDimensionsV16(mediaFormat);
            this.frameworkMediaFormat = mediaFormat;
        }
        return this.frameworkMediaFormat;
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    private final void maybeSetMaxDimensionsV16(android.media.MediaFormat mediaFormat) {
        maybeSetIntegerV16(mediaFormat, "max-width", this.maxWidth);
        maybeSetIntegerV16(mediaFormat, "max-height", this.maxHeight);
    }

    @TargetApi(16)
    private static final void maybeSetIntegerV16(android.media.MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @TargetApi(16)
    private static final void maybeSetFloatV16(android.media.MediaFormat mediaFormat, String str, float f2) {
        if (f2 != -1.0f) {
            mediaFormat.setFloat(str, f2);
        }
    }

    @TargetApi(16)
    private static final int getOptionalIntegerV16(android.media.MediaFormat mediaFormat, String str) {
        if (mediaFormat.containsKey(str)) {
            return mediaFormat.getInteger(str);
        }
        return -1;
    }

    @TargetApi(16)
    private static final float getOptionalFloatV16(android.media.MediaFormat mediaFormat, String str) {
        if (mediaFormat.containsKey(str)) {
            return mediaFormat.getFloat(str);
        }
        return -1.0f;
    }
}
