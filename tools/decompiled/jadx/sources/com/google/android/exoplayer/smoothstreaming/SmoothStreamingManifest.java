package com.google.android.exoplayer.smoothstreaming;

import android.net.Uri;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class SmoothStreamingManifest {
    public final long durationUs;
    public final long dvrWindowLengthUs;
    public final boolean isLive;
    public final int lookAheadCount;
    public final int majorVersion;
    public final int minorVersion;
    public final ProtectionElement protectionElement;
    public final StreamElement[] streamElements;

    public SmoothStreamingManifest(int i, int i2, long j, long j2, long j3, int i3, boolean z, ProtectionElement protectionElement, StreamElement[] streamElementArr) {
        this.majorVersion = i;
        this.minorVersion = i2;
        this.lookAheadCount = i3;
        this.isLive = z;
        this.protectionElement = protectionElement;
        this.streamElements = streamElementArr;
        this.dvrWindowLengthUs = j3 == 0 ? -1L : Util.scaleLargeTimestamp(j3, 1000000L, j);
        this.durationUs = j2 == 0 ? -1L : Util.scaleLargeTimestamp(j2, 1000000L, j);
    }

    public class ProtectionElement {
        public final byte[] data;
        public final UUID uuid;

        public ProtectionElement(UUID uuid, byte[] bArr) {
            this.uuid = uuid;
            this.data = bArr;
        }
    }

    public class TrackElement {
        public final int audioTag;
        public final int bitPerSample;
        public final int bitrate;
        public final String content;
        public final byte[][] csd;
        public final int index;
        public final int level;
        public final int maxHeight;
        public final int maxWidth;
        public final String mimeType;
        public final int nalUnitLengthField;
        public final int numChannels;
        public final int packetSize;
        public final int profile;
        public final int sampleRate;

        public TrackElement(int i, int i2, String str, byte[][] bArr, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, String str2) {
            this.index = i;
            this.bitrate = i2;
            this.mimeType = str;
            this.csd = bArr;
            this.profile = i3;
            this.level = i4;
            this.maxWidth = i5;
            this.maxHeight = i6;
            this.sampleRate = i7;
            this.numChannels = i8;
            this.packetSize = i9;
            this.audioTag = i10;
            this.bitPerSample = i11;
            this.nalUnitLengthField = i12;
            this.content = str2;
        }
    }

    public class StreamElement {
        public static final int TYPE_AUDIO = 0;
        public static final int TYPE_TEXT = 2;
        public static final int TYPE_UNKNOWN = -1;
        public static final int TYPE_VIDEO = 1;
        private static final String URL_PLACEHOLDER_BITRATE = "{bitrate}";
        private static final String URL_PLACEHOLDER_START_TIME = "{start time}";
        private final Uri baseUri;
        public final int chunkCount;
        private final List<Long> chunkStartTimes;
        private final long[] chunkStartTimesUs;
        private final String chunkTemplate;
        public final int displayHeight;
        public final int displayWidth;
        public final String language;
        private final long lastChunkDurationUs;
        public final int maxHeight;
        public final int maxWidth;
        public final String name;
        public final int qualityLevels;
        public final String subType;
        public final long timescale;
        public final TrackElement[] tracks;
        public final int type;

        public StreamElement(Uri uri, String str, int i, String str2, long j, String str3, int i2, int i3, int i4, int i5, int i6, String str4, TrackElement[] trackElementArr, List<Long> list, long j2) {
            this.baseUri = uri;
            this.chunkTemplate = str;
            this.type = i;
            this.subType = str2;
            this.timescale = j;
            this.name = str3;
            this.qualityLevels = i2;
            this.maxWidth = i3;
            this.maxHeight = i4;
            this.displayWidth = i5;
            this.displayHeight = i6;
            this.language = str4;
            this.tracks = trackElementArr;
            this.chunkCount = list.size();
            this.chunkStartTimes = list;
            this.lastChunkDurationUs = Util.scaleLargeTimestamp(j2, 1000000L, j);
            this.chunkStartTimesUs = Util.scaleLargeTimestamps(list, 1000000L, j);
        }

        public int getChunkIndex(long j) {
            return Util.binarySearchFloor(this.chunkStartTimesUs, j, true, true);
        }

        public long getStartTimeUs(int i) {
            return this.chunkStartTimesUs[i];
        }

        public long getChunkDurationUs(int i) {
            return i == this.chunkCount + (-1) ? this.lastChunkDurationUs : this.chunkStartTimesUs[i + 1] - this.chunkStartTimesUs[i];
        }

        public Uri buildRequestUri(int i, int i2) {
            Assertions.checkState(this.tracks != null);
            Assertions.checkState(this.chunkStartTimes != null);
            Assertions.checkState(i2 < this.chunkStartTimes.size());
            return Util.getMergedUri(this.baseUri, this.chunkTemplate.replace(URL_PLACEHOLDER_BITRATE, Integer.toString(this.tracks[i].bitrate)).replace(URL_PLACEHOLDER_START_TIME, this.chunkStartTimes.get(i2).toString()));
        }
    }
}
