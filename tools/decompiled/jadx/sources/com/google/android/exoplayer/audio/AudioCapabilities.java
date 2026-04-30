package com.google.android.exoplayer.audio;

import android.annotation.TargetApi;
import com.google.android.exoplayer.util.Util;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(21)
public final class AudioCapabilities {
    private final int maxChannelCount;
    private final Set<Integer> supportedEncodings = new HashSet();

    public AudioCapabilities(int[] iArr, int i) {
        if (iArr != null) {
            for (int i2 : iArr) {
                this.supportedEncodings.add(Integer.valueOf(i2));
            }
        }
        this.maxChannelCount = i;
    }

    public boolean supportsAc3() {
        return Util.SDK_INT >= 21 && this.supportedEncodings.contains(5);
    }

    public boolean supportsEAc3() {
        return Util.SDK_INT >= 21 && this.supportedEncodings.contains(6);
    }

    public boolean supportsPcm() {
        return this.supportedEncodings.contains(2);
    }

    public int getMaxChannelCount() {
        return this.maxChannelCount;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioCapabilities)) {
            return false;
        }
        AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
        return this.supportedEncodings.equals(audioCapabilities.supportedEncodings) && this.maxChannelCount == audioCapabilities.maxChannelCount;
    }

    public int hashCode() {
        return this.maxChannelCount + (this.supportedEncodings.hashCode() * 31);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.maxChannelCount + ", supportedEncodings=" + this.supportedEncodings + "]";
    }
}
