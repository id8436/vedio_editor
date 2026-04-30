package com.google.android.exoplayer.text.webvtt;

import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class WebvttSubtitle implements Subtitle {
    private final String[] cueText;
    private final long[] cueTimesUs;
    private final long[] sortedCueTimesUs;
    private final long startTimeUs;

    public WebvttSubtitle(String[] strArr, long j, long[] jArr) {
        this.cueText = strArr;
        this.startTimeUs = j;
        this.cueTimesUs = jArr;
        this.sortedCueTimesUs = Arrays.copyOf(jArr, jArr.length);
        Arrays.sort(this.sortedCueTimesUs);
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getStartTime() {
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        Assertions.checkArgument(j >= 0);
        int iBinarySearchCeil = Util.binarySearchCeil(this.sortedCueTimesUs, j, false, false);
        if (iBinarySearchCeil < this.sortedCueTimesUs.length) {
            return iBinarySearchCeil;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getEventTimeCount() {
        return this.sortedCueTimesUs.length;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i >= 0);
        Assertions.checkArgument(i < this.sortedCueTimesUs.length);
        return this.sortedCueTimesUs[i];
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getLastEventTime() {
        if (getEventTimeCount() == 0) {
            return -1L;
        }
        return this.sortedCueTimesUs[this.sortedCueTimesUs.length - 1];
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public String getText(long j) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.cueTimesUs.length; i += 2) {
            if (this.cueTimesUs[i] <= j && j < this.cueTimesUs[i + 1]) {
                sb.append(this.cueText[i / 2]);
            }
        }
        int length = sb.length();
        if (length > 0 && sb.charAt(length - 1) == '\n') {
            length--;
        }
        if (length == 0) {
            return null;
        }
        return sb.substring(0, length);
    }
}
