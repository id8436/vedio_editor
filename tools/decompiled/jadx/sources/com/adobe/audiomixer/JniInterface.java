package com.adobe.audiomixer;

import com.adobe.decoderfactory.AudioInfo;
import java.nio.ByteBuffer;
import java.security.InvalidParameterException;

/* JADX INFO: loaded from: classes.dex */
public class JniInterface {
    private static String LIB_NAME = "audiomixer";

    private static native void JNIAppendClipToVideoTrack(long j, long j2);

    private static native long JNICreateClip(String str);

    private static native long JNICreateSequence();

    private static native int JNIGetAudioBufferSize(long j);

    private static native int JNIGetAudioChannels(long j);

    private static native int JNIGetAudioSampleRate(long j);

    private static native int JNIGetAudioSampleType(long j);

    private static native int JNIGetBackgroundMusicAudioFilter(long j);

    private static native float JNIGetBackgroundMusicAudioGainLevel(long j);

    private static native VideoTime JNIGetBackgroundMusicInTime(long j);

    private static native String JNIGetBackgroundMusicSource(long j);

    private static native long JNIGetBackgroundMusicTrack(long j);

    private static native int JNIGetClipAudioFilter(long j);

    private static native float JNIGetClipAudioGainLevel(long j);

    private static native float JNIGetClipAudioSpeedLevel(long j);

    private static native VideoTime JNIGetClipDuration(long j);

    private static native VideoTime JNIGetClipInTime(long j);

    private static native String JNIGetClipSource(long j);

    private static native VideoTime JNIGetClipTimelineTime(long j);

    private static native boolean JNIGetSequenceBackgroundMusicMute(long j);

    private static native long JNIGetVideoClip(long j, int i);

    private static native long JNIGetVideoTrack(long j);

    private static native int JNIGetVideoTrackClipCount(long j);

    private static native boolean JNIHasClipAudio(long j);

    private static native void JNIInitializeAudioMixer();

    private static native int JNIReadSamples(long j, long j2, ByteBuffer byteBuffer);

    private static native int JNIReadyForRendering(long j);

    private static native void JNIRelease(long j);

    private static native void JNIResetBackgroundMusicTrack(long j);

    private static native void JNIResetSequence(long j);

    private static native void JNIResetVideoTrack(long j);

    private static native void JNISeekSequence(long j, VideoTime videoTime);

    private static native void JNISetAudioBufferSize(long j, int i);

    private static native void JNISetAudioChannels(long j, int i);

    private static native void JNISetAudioSampleRate(long j, int i);

    private static native void JNISetAudioSampleType(long j, int i);

    private static native void JNISetBackgroundMusicAudioFilter(long j, int i);

    private static native void JNISetBackgroundMusicAudioGainLevel(long j, float f2);

    private static native void JNISetBackgroundMusicInTime(long j, VideoTime videoTime);

    private static native void JNISetBackgroundMusicSource(long j, String str);

    private static native void JNISetClipAudioFilter(long j, int i);

    private static native void JNISetClipAudioGainLevel(long j, float f2);

    private static native void JNISetClipAudioSpeedLevel(long j, float f2);

    private static native void JNISetClipDuration(long j, VideoTime videoTime);

    private static native void JNISetClipInTime(long j, VideoTime videoTime);

    private static native void JNISetClipTimelineTime(long j, VideoTime videoTime);

    private static native void JNISetSequenceBackgroundMusicMute(long j, boolean z);

    private static native void JNITerminateAudioMixer();

    public static long createSequence() {
        return JNICreateSequence();
    }

    public static void resetSequence(long j) {
        JNIResetSequence(j);
    }

    public static long getVideoTrack(long j) {
        return JNIGetVideoTrack(j);
    }

    public static long getBackgroundMusicTrack(long j) {
        return JNIGetBackgroundMusicTrack(j);
    }

    public static int getVideoClipCount(long j) {
        return JNIGetVideoTrackClipCount(j);
    }

    public static long getVideoClip(long j, int i) {
        return JNIGetVideoClip(j, i);
    }

    public static void resetVideoTrack(long j) {
        JNIResetVideoTrack(j);
    }

    public static void setBackgroundMusicSource(long j, String str) {
        JNISetBackgroundMusicSource(j, str);
    }

    public static String getBackgroundMusicSource(long j) {
        return JNIGetBackgroundMusicSource(j);
    }

    public static void resetBackgroundMusicTrack(long j) {
        JNIResetBackgroundMusicTrack(j);
    }

    public static void setClipInTime(long j, VideoTime videoTime) {
        JNISetClipInTime(j, videoTime);
    }

    public static void setClipTimelineTime(long j, VideoTime videoTime) {
        JNISetClipTimelineTime(j, videoTime);
    }

    public static void setClipDuration(long j, VideoTime videoTime) {
        JNISetClipDuration(j, videoTime);
    }

    public static long createVideoClip(String str) {
        return JNICreateClip(str);
    }

    public static void appendClipToVideoTrack(long j, long j2) {
        JNIAppendClipToVideoTrack(j, j2);
    }

    public static VideoTime getClipInTime(long j) {
        return JNIGetClipInTime(j);
    }

    public static VideoTime getClipTimelineTime(long j) {
        return JNIGetClipTimelineTime(j);
    }

    public static VideoTime getClipDuration(long j) {
        return JNIGetClipDuration(j);
    }

    public static boolean hasClipAudio(long j) {
        return JNIHasClipAudio(j);
    }

    public static String getClipSource(long j) {
        return JNIGetClipSource(j);
    }

    public static void setClipAudioFilter(long j, int i) {
        JNISetClipAudioFilter(j, i);
    }

    public static int getClipAudioFilter(long j) {
        return JNIGetClipAudioFilter(j);
    }

    public static void setClipAudioGainLevel(long j, float f2) {
        JNISetClipAudioGainLevel(j, f2);
    }

    public static float getClipAudioGainLevel(long j) {
        return JNIGetClipAudioGainLevel(j);
    }

    public static void setClipAudioSpeedLevel(long j, float f2) {
        JNISetClipAudioSpeedLevel(j, f2);
    }

    public static float getClipAudioSpeedLevel(long j) {
        return JNIGetClipAudioSpeedLevel(j);
    }

    public static void setBackgroundMusicAudioFilter(long j, int i) {
        JNISetBackgroundMusicAudioFilter(j, i);
    }

    public static int getBackgroundMusicAudioFilter(long j) {
        return JNIGetBackgroundMusicAudioFilter(j);
    }

    public static void setBackgroundMusicAudioGainLevel(long j, float f2) {
        JNISetBackgroundMusicAudioGainLevel(j, f2);
    }

    public static float getBackgroundMusicAudioGainLevel(long j) {
        return JNIGetBackgroundMusicAudioGainLevel(j);
    }

    public static void setSequenceAudioSampleRate(long j, int i) {
        JNISetAudioSampleRate(j, i);
    }

    public static void setSequenceAudioChannel(long j, int i) {
        JNISetAudioChannels(j, i);
    }

    public static void setSequenceAudioSampleType(long j, AudioInfo.SampleType sampleType) {
        JNISetAudioSampleType(j, ConvertAudioSampleTypeJavaToNative(sampleType));
    }

    public static int getSequenceAudioSampleRate(long j) {
        return JNIGetAudioSampleRate(j);
    }

    public static int getSequenceAudioChannels(long j) {
        return JNIGetAudioChannels(j);
    }

    public static AudioInfo.SampleType getSequenceAudioSampleType(long j) {
        return ConvertAudioSampleTypeNativeToJava(JNIGetAudioSampleType(j));
    }

    public static int getSequenceAudioBufferSize(long j) {
        return JNIGetAudioBufferSize(j);
    }

    public static void setSequenceAudioBufferSize(long j, int i) {
        JNISetAudioBufferSize(j, i);
    }

    public static boolean getSequenceBackgroundMusicMute(long j) {
        return JNIGetSequenceBackgroundMusicMute(j);
    }

    public static void setSequenceBackgroundMusicMute(long j, boolean z) {
        JNISetSequenceBackgroundMusicMute(j, z);
    }

    public static void setBackgroundMusicInTime(long j, VideoTime videoTime) {
        JNISetBackgroundMusicInTime(j, videoTime);
    }

    public static VideoTime getBackgroundMusicInTime(long j) {
        return JNIGetBackgroundMusicInTime(j);
    }

    public static int readyForRendering(long j) {
        return JNIReadyForRendering(j);
    }

    public static void seekSequence(long j, VideoTime videoTime) {
        JNISeekSequence(j, videoTime);
    }

    public static int readSamples(long j, long j2, ByteBuffer byteBuffer) {
        return JNIReadSamples(j, j2, byteBuffer);
    }

    public static void release(long j) {
        JNIRelease(j);
    }

    public static int ConvertAudioSampleTypeJavaToNative(AudioInfo.SampleType sampleType) {
        switch (sampleType) {
            case Signed16Bit:
                return 0;
            default:
                throw new InvalidParameterException("Unsupported sample type: " + sampleType);
        }
    }

    public static AudioInfo.SampleType ConvertAudioSampleTypeNativeToJava(int i) {
        switch (i) {
            case 0:
                return AudioInfo.SampleType.Signed16Bit;
            default:
                throw new InvalidParameterException("Unsupported sample type: " + i);
        }
    }

    public static void initialize() {
        JNIInitializeAudioMixer();
    }

    public static void terminate() {
        JNITerminateAudioMixer();
    }

    static {
        System.loadLibrary(LIB_NAME);
    }
}
