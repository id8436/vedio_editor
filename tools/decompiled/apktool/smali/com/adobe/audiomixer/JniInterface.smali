.class public Lcom/adobe/audiomixer/JniInterface;
.super Ljava/lang/Object;
.source "JniInterface.java"


# static fields
.field private static LIB_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "audiomixer"

    sput-object v0, Lcom/adobe/audiomixer/JniInterface;->LIB_NAME:Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/adobe/audiomixer/JniInterface;->LIB_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertAudioSampleTypeJavaToNative(Lcom/adobe/decoderfactory/AudioInfo$SampleType;)I
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lcom/adobe/audiomixer/JniInterface$1;->$SwitchMap$com$adobe$decoderfactory$AudioInfo$SampleType:[I

    invoke-virtual {p0}, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported sample type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static ConvertAudioSampleTypeNativeToJava(I)Lcom/adobe/decoderfactory/AudioInfo$SampleType;
    .locals 3

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported sample type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_0
    sget-object v0, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    return-object v0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static native JNIAppendClipToVideoTrack(JJ)V
.end method

.method private static native JNICreateClip(Ljava/lang/String;)J
.end method

.method private static native JNICreateSequence()J
.end method

.method private static native JNIGetAudioBufferSize(J)I
.end method

.method private static native JNIGetAudioChannels(J)I
.end method

.method private static native JNIGetAudioSampleRate(J)I
.end method

.method private static native JNIGetAudioSampleType(J)I
.end method

.method private static native JNIGetBackgroundMusicAudioFilter(J)I
.end method

.method private static native JNIGetBackgroundMusicAudioGainLevel(J)F
.end method

.method private static native JNIGetBackgroundMusicInTime(J)Lcom/adobe/audiomixer/VideoTime;
.end method

.method private static native JNIGetBackgroundMusicSource(J)Ljava/lang/String;
.end method

.method private static native JNIGetBackgroundMusicTrack(J)J
.end method

.method private static native JNIGetClipAudioFilter(J)I
.end method

.method private static native JNIGetClipAudioGainLevel(J)F
.end method

.method private static native JNIGetClipAudioSpeedLevel(J)F
.end method

.method private static native JNIGetClipDuration(J)Lcom/adobe/audiomixer/VideoTime;
.end method

.method private static native JNIGetClipInTime(J)Lcom/adobe/audiomixer/VideoTime;
.end method

.method private static native JNIGetClipSource(J)Ljava/lang/String;
.end method

.method private static native JNIGetClipTimelineTime(J)Lcom/adobe/audiomixer/VideoTime;
.end method

.method private static native JNIGetSequenceBackgroundMusicMute(J)Z
.end method

.method private static native JNIGetVideoClip(JI)J
.end method

.method private static native JNIGetVideoTrack(J)J
.end method

.method private static native JNIGetVideoTrackClipCount(J)I
.end method

.method private static native JNIHasClipAudio(J)Z
.end method

.method private static native JNIInitializeAudioMixer()V
.end method

.method private static native JNIReadSamples(JJLjava/nio/ByteBuffer;)I
.end method

.method private static native JNIReadyForRendering(J)I
.end method

.method private static native JNIRelease(J)V
.end method

.method private static native JNIResetBackgroundMusicTrack(J)V
.end method

.method private static native JNIResetSequence(J)V
.end method

.method private static native JNIResetVideoTrack(J)V
.end method

.method private static native JNISeekSequence(JLcom/adobe/audiomixer/VideoTime;)V
.end method

.method private static native JNISetAudioBufferSize(JI)V
.end method

.method private static native JNISetAudioChannels(JI)V
.end method

.method private static native JNISetAudioSampleRate(JI)V
.end method

.method private static native JNISetAudioSampleType(JI)V
.end method

.method private static native JNISetBackgroundMusicAudioFilter(JI)V
.end method

.method private static native JNISetBackgroundMusicAudioGainLevel(JF)V
.end method

.method private static native JNISetBackgroundMusicInTime(JLcom/adobe/audiomixer/VideoTime;)V
.end method

.method private static native JNISetBackgroundMusicSource(JLjava/lang/String;)V
.end method

.method private static native JNISetClipAudioFilter(JI)V
.end method

.method private static native JNISetClipAudioGainLevel(JF)V
.end method

.method private static native JNISetClipAudioSpeedLevel(JF)V
.end method

.method private static native JNISetClipDuration(JLcom/adobe/audiomixer/VideoTime;)V
.end method

.method private static native JNISetClipInTime(JLcom/adobe/audiomixer/VideoTime;)V
.end method

.method private static native JNISetClipTimelineTime(JLcom/adobe/audiomixer/VideoTime;)V
.end method

.method private static native JNISetSequenceBackgroundMusicMute(JZ)V
.end method

.method private static native JNITerminateAudioMixer()V
.end method

.method public static appendClipToVideoTrack(JJ)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/audiomixer/JniInterface;->JNIAppendClipToVideoTrack(JJ)V

    .line 56
    return-void
.end method

.method public static createSequence()J
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Lcom/adobe/audiomixer/JniInterface;->JNICreateSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method public static createVideoClip(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/adobe/audiomixer/JniInterface;->JNICreateClip(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBackgroundMusicAudioFilter(J)I
    .locals 2

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetBackgroundMusicAudioFilter(J)I

    move-result v0

    return v0
.end method

.method public static getBackgroundMusicAudioGainLevel(J)F
    .locals 2

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetBackgroundMusicAudioGainLevel(J)F

    move-result v0

    return v0
.end method

.method public static getBackgroundMusicInTime(J)Lcom/adobe/audiomixer/VideoTime;
    .locals 2

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetBackgroundMusicInTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundMusicSource(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetBackgroundMusicSource(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundMusicTrack(J)J
    .locals 2

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetBackgroundMusicTrack(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getClipAudioFilter(J)I
    .locals 2

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetClipAudioFilter(J)I

    move-result v0

    return v0
.end method

.method public static getClipAudioGainLevel(J)F
    .locals 2

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetClipAudioGainLevel(J)F

    move-result v0

    return v0
.end method

.method public static getClipAudioSpeedLevel(J)F
    .locals 2

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetClipAudioSpeedLevel(J)F

    move-result v0

    return v0
.end method

.method public static getClipDuration(J)Lcom/adobe/audiomixer/VideoTime;
    .locals 2

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetClipDuration(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public static getClipInTime(J)Lcom/adobe/audiomixer/VideoTime;
    .locals 2

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetClipInTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public static getClipSource(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetClipSource(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClipTimelineTime(J)Lcom/adobe/audiomixer/VideoTime;
    .locals 2

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetClipTimelineTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public static getSequenceAudioBufferSize(J)I
    .locals 2

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetAudioBufferSize(J)I

    move-result v0

    return v0
.end method

.method public static getSequenceAudioChannels(J)I
    .locals 2

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetAudioChannels(J)I

    move-result v0

    return v0
.end method

.method public static getSequenceAudioSampleRate(J)I
    .locals 2

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetAudioSampleRate(J)I

    move-result v0

    return v0
.end method

.method public static getSequenceAudioSampleType(J)Lcom/adobe/decoderfactory/AudioInfo$SampleType;
    .locals 2

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetAudioSampleType(J)I

    move-result v0

    invoke-static {v0}, Lcom/adobe/audiomixer/JniInterface;->ConvertAudioSampleTypeNativeToJava(I)Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    move-result-object v0

    return-object v0
.end method

.method public static getSequenceBackgroundMusicMute(J)Z
    .locals 2

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetSequenceBackgroundMusicMute(J)Z

    move-result v0

    return v0
.end method

.method public static getVideoClip(JI)J
    .locals 2

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNIGetVideoClip(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVideoClipCount(J)I
    .locals 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetVideoTrackClipCount(J)I

    move-result v0

    return v0
.end method

.method public static getVideoTrack(J)J
    .locals 2

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIGetVideoTrack(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasClipAudio(J)Z
    .locals 2

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIHasClipAudio(J)Z

    move-result v0

    return v0
.end method

.method public static initialize()V
    .locals 0

    .prologue
    .line 173
    invoke-static {}, Lcom/adobe/audiomixer/JniInterface;->JNIInitializeAudioMixer()V

    .line 174
    return-void
.end method

.method public static readSamples(JJLjava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 145
    invoke-static {p0, p1, p2, p3, p4}, Lcom/adobe/audiomixer/JniInterface;->JNIReadSamples(JJLjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static readyForRendering(J)I
    .locals 2

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIReadyForRendering(J)I

    move-result v0

    return v0
.end method

.method public static release(J)V
    .locals 0

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIRelease(J)V

    .line 149
    return-void
.end method

.method public static resetBackgroundMusicTrack(J)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIResetBackgroundMusicTrack(J)V

    .line 41
    return-void
.end method

.method public static resetSequence(J)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIResetSequence(J)V

    .line 17
    return-void
.end method

.method public static resetVideoTrack(J)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/adobe/audiomixer/JniInterface;->JNIResetVideoTrack(J)V

    .line 32
    return-void
.end method

.method public static seekSequence(JLcom/adobe/audiomixer/VideoTime;)V
    .locals 0

    .prologue
    .line 142
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISeekSequence(JLcom/adobe/audiomixer/VideoTime;)V

    .line 143
    return-void
.end method

.method public static setBackgroundMusicAudioFilter(JI)V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetBackgroundMusicAudioFilter(JI)V

    .line 92
    return-void
.end method

.method public static setBackgroundMusicAudioGainLevel(JF)V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetBackgroundMusicAudioGainLevel(JF)V

    .line 98
    return-void
.end method

.method public static setBackgroundMusicInTime(JLcom/adobe/audiomixer/VideoTime;)V
    .locals 0

    .prologue
    .line 133
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetBackgroundMusicInTime(JLcom/adobe/audiomixer/VideoTime;)V

    .line 134
    return-void
.end method

.method public static setBackgroundMusicSource(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetBackgroundMusicSource(JLjava/lang/String;)V

    .line 35
    return-void
.end method

.method public static setClipAudioFilter(JI)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetClipAudioFilter(JI)V

    .line 74
    return-void
.end method

.method public static setClipAudioGainLevel(JF)V
    .locals 0

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetClipAudioGainLevel(JF)V

    .line 80
    return-void
.end method

.method public static setClipAudioSpeedLevel(JF)V
    .locals 0

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetClipAudioSpeedLevel(JF)V

    .line 86
    return-void
.end method

.method public static setClipDuration(JLcom/adobe/audiomixer/VideoTime;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetClipDuration(JLcom/adobe/audiomixer/VideoTime;)V

    .line 50
    return-void
.end method

.method public static setClipInTime(JLcom/adobe/audiomixer/VideoTime;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetClipInTime(JLcom/adobe/audiomixer/VideoTime;)V

    .line 44
    return-void
.end method

.method public static setClipTimelineTime(JLcom/adobe/audiomixer/VideoTime;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetClipTimelineTime(JLcom/adobe/audiomixer/VideoTime;)V

    .line 47
    return-void
.end method

.method public static setSequenceAudioBufferSize(JI)V
    .locals 0

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetAudioBufferSize(JI)V

    .line 125
    return-void
.end method

.method public static setSequenceAudioChannel(JI)V
    .locals 0

    .prologue
    .line 106
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetAudioChannels(JI)V

    .line 107
    return-void
.end method

.method public static setSequenceAudioSampleRate(JI)V
    .locals 0

    .prologue
    .line 103
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetAudioSampleRate(JI)V

    .line 104
    return-void
.end method

.method public static setSequenceAudioSampleType(JLcom/adobe/decoderfactory/AudioInfo$SampleType;)V
    .locals 2

    .prologue
    .line 109
    invoke-static {p2}, Lcom/adobe/audiomixer/JniInterface;->ConvertAudioSampleTypeJavaToNative(Lcom/adobe/decoderfactory/AudioInfo$SampleType;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/adobe/audiomixer/JniInterface;->JNISetAudioSampleType(JI)V

    .line 110
    return-void
.end method

.method public static setSequenceBackgroundMusicMute(JZ)V
    .locals 0

    .prologue
    .line 130
    invoke-static {p0, p1, p2}, Lcom/adobe/audiomixer/JniInterface;->JNISetSequenceBackgroundMusicMute(JZ)V

    .line 131
    return-void
.end method

.method public static terminate()V
    .locals 0

    .prologue
    .line 178
    invoke-static {}, Lcom/adobe/audiomixer/JniInterface;->JNITerminateAudioMixer()V

    .line 179
    return-void
.end method
