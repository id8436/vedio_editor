package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.util.Assertions;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class Format {
    public final int audioSamplingRate;

    @Deprecated
    public final int bandwidth;
    public final int bitrate;
    public final String codecs;
    public final int height;
    public final String id;
    public final String language;
    public final String mimeType;
    public final int numChannels;
    public final int width;

    /* JADX INFO: loaded from: classes2.dex */
    public final class DecreasingBandwidthComparator implements Comparator<Format> {
        @Override // java.util.Comparator
        public int compare(Format format, Format format2) {
            return format2.bitrate - format.bitrate;
        }
    }

    public Format(String str, String str2, int i, int i2, int i3, int i4, int i5) {
        this(str, str2, i, i2, i3, i4, i5, null, null);
    }

    public Format(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3) {
        this(str, str2, i, i2, i3, i4, i5, str3, null);
    }

    public Format(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4) {
        this.id = (String) Assertions.checkNotNull(str);
        this.mimeType = str2;
        this.width = i;
        this.height = i2;
        this.numChannels = i3;
        this.audioSamplingRate = i4;
        this.bitrate = i5;
        this.language = str3;
        this.codecs = str4;
        this.bandwidth = i5 / 8;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return ((Format) obj).id.equals(this.id);
    }
}
