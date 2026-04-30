package com.adobe.premiereclip.editor.waveform;

import android.util.Log;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.sequence.AudioTrack;

/* JADX INFO: loaded from: classes2.dex */
public class WaveUtils {
    public static final long END_DURATION_BLOCKED = 5000000;
    private static final int MAX_LENGTH_WAVE = 20000;
    private static final int MIN_LENGTH_WAVE = 200;
    private static final double waveScaleFactor = 5.0E-5d;

    public static int getTotalWaveFormLength(Project project) {
        AudioTrack audioTrack = project.getSequence().getAudioTrackGroup().getAudioTrack();
        if (audioTrack.getNumClips() <= 0) {
            return 0;
        }
        long durationUs = audioTrack.getClipAtIndex(0).getAssetReference().getDurationUs();
        double d2 = waveScaleFactor * durationUs;
        long jRound = Math.round(d2);
        if (jRound > 2147483647L) {
            jRound = 2147483647L;
        }
        if (jRound > 20000) {
            jRound = 20000;
        }
        long j = jRound >= 200 ? jRound : 200L;
        Log.d("MusicView", "total length: got pixels " + d2 + "  for duration " + durationUs);
        int i = (int) j;
        return i - (i % 200);
    }

    public static int getWaveFormLength(Project project, long j) {
        int totalWaveFormLength = getTotalWaveFormLength(project);
        if (project.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() <= 0) {
            return 0;
        }
        return (int) Math.round((((double) totalWaveFormLength) / r2.getClipAtIndex(0).getAssetReference().getDurationUs()) * j);
    }

    public static long getDurationOfWave(Project project, int i) {
        if (project.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() <= 0) {
            return 0L;
        }
        double durationUs = (r0.getClipAtIndex(0).getAssetReference().getDurationUs() / ((double) getTotalWaveFormLength(project))) * ((double) i);
        Log.d("MusicView", "got duration " + durationUs + "  for pixels " + i);
        return Math.round(durationUs);
    }
}
