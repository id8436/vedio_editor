.class public final Lcom/google/android/exoplayer/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final UNKNOWN_AC3_BITRATE:I


# instance fields
.field private ac3Bitrate:I

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

.field private bufferSize:I

.field private channelConfig:I

.field private encoding:I

.field private frameSize:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private isAc3:Z

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private minBufferSize:I

.field private nextPlayheadOffsetIndex:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private submittedBytes:J

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private temporaryBufferSize:I

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 170
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 172
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string/jumbo v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 173
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 181
    return-void

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private bytesToFrames(J)J
    .locals 5

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-eqz v0, :cond_1

    .line 650
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 653
    :goto_0
    return-wide v0

    .line 650
    :cond_0
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 653
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    goto :goto_0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 632
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 633
    return-void

    .line 637
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 645
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 638
    :catch_0
    move-exception v1

    .line 642
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 643
    throw v0
.end method

.method private durationUsToFrames(J)J
    .locals 5

    .prologue
    .line 662
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5

    .prologue
    .line 658
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private hasCurrentPositionUs()Z
    .locals 4

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 12

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v2

    .line 558
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 563
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    .line 566
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 567
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 568
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 570
    :cond_2
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 571
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 572
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v0, v1, :cond_3

    .line 573
    iget-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 577
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 579
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v0, :cond_4

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 582
    iget-object v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v6

    .line 583
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_6

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 601
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    int-to-long v2, v2

    .line 606
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 608
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 610
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 611
    const-string/jumbo v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_5
    :goto_3
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 586
    :cond_6
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 588
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 589
    const-string/jumbo v8, "AudioTrack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 592
    :cond_7
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 595
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 596
    const-string/jumbo v8, "AudioTrack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 614
    :catch_0
    move-exception v0

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 666
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 667
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 668
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 669
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 670
    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 671
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 672
    return-void
.end method

.method private static setVolumeV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 502
    return-void
.end method

.method private static setVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0

    .prologue
    .line 506
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 507
    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCurrentPositionUs(Z)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    const-wide/high16 v0, -0x8000000000000000L

    .line 235
    :cond_0
    :goto_0
    return-wide v0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 211
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 213
    iget-boolean v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v0

    .line 218
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 219
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    .line 220
    goto :goto_0

    .line 221
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v2, :cond_4

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    .line 230
    :goto_1
    if-nez p1, :cond_0

    .line 231
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 228
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;IIJ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 386
    if-nez p3, :cond_1

    .line 387
    const/4 v0, 0x2

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    const/4 v0, 0x0

    .line 391
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v1, :cond_3

    .line 392
    iget-boolean v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    if-nez v1, :cond_2

    .line 395
    mul-int/lit8 v1, p3, 0x8

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    mul-int/2addr v1, v2

    .line 396
    const v2, 0x177000

    .line 397
    const v3, 0xbb800

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    .line 402
    :cond_2
    int-to-long v2, p3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v2

    sub-long v2, p4, v2

    .line 403
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_8

    .line 404
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 405
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 426
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v1, :cond_6

    .line 427
    iput p3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 428
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 429
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_6

    .line 431
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    array-length v1, v1

    if-ge v1, p3, :cond_5

    .line 432
    :cond_4
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    .line 434
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 435
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 439
    :cond_6
    const/4 v1, 0x0

    .line 440
    sget v2, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_a

    .line 442
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    iget-object v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 443
    invoke-virtual {v4}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 444
    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    sub-int v2, v3, v2

    .line 445
    if-lez v2, :cond_7

    .line 446
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 447
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 448
    if-ltz v1, :cond_7

    .line 449
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 456
    :cond_7
    :goto_2
    if-gez v1, :cond_b

    .line 457
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;-><init>(I)V

    throw v0

    .line 408
    :cond_8
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    .line 409
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 410
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_9

    sub-long v6, v4, v2

    .line 411
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x30d40

    cmp-long v1, v6, v8

    if-lez v1, :cond_9

    .line 412
    const-string/jumbo v1, "AudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Discontinuity detected [expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 416
    :cond_9
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    .line 419
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 420
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 421
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 453
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_2

    .line 460
    :cond_b
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 461
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    .line 462
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v1, :cond_0

    .line 463
    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_0
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 365
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 367
    :cond_0
    return-void
.end method

.method public hasEnoughDataToBeginPlayback()Z
    .locals 4

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    .line 477
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    .line 477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize(I)I

    move-result v0

    return v0
.end method

.method public initialize(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 271
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 272
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 273
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 277
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolume(F)V

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    return v0

    .line 267
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 515
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 359
    :cond_0
    return-void
.end method

.method public reconfigure(Landroid/media/MediaFormat;)V
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->reconfigure(Landroid/media/MediaFormat;II)V

    .line 287
    return-void
.end method

.method public reconfigure(Landroid/media/MediaFormat;II)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 301
    const-string/jumbo v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 303
    packed-switch v3, :pswitch_data_0

    .line 317
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :pswitch_1
    const/4 v0, 0x4

    .line 320
    :goto_0
    const-string/jumbo v1, "sample-rate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 323
    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 324
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    if-ne v5, v0, :cond_2

    iget-boolean v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    .line 351
    :goto_2
    return-void

    .line 308
    :pswitch_2
    const/16 v0, 0xc

    .line 309
    goto :goto_0

    .line 311
    :pswitch_3
    const/16 v0, 0xfc

    .line 312
    goto :goto_0

    .line 314
    :pswitch_4
    const/16 v0, 0x3fc

    .line 315
    goto :goto_0

    :cond_1
    move v1, v2

    .line 323
    goto :goto_1

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 332
    iput p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    .line 333
    iput v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    .line 334
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    .line 335
    iput-boolean v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    .line 336
    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    .line 337
    mul-int/lit8 v1, v3, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    .line 338
    invoke-static {v4, v0, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    .line 340
    if-eqz p3, :cond_3

    .line 341
    iput p3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_2

    .line 343
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    mul-int/lit8 v2, v0, 0x4

    .line 344
    const-wide/32 v0, 0x3d090

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    mul-int/2addr v0, v1

    .line 345
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    int-to-long v4, v1

    const-wide/32 v6, 0xb71b0

    .line 346
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v6

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v8, v1

    mul-long/2addr v6, v8

    .line 345
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 347
    if-ge v2, v0, :cond_4

    :goto_3
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_2

    :cond_4
    if-le v2, v1, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 523
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 526
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 527
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 529
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 534
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 535
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 536
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 537
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 546
    invoke-virtual {v1}, Lcom/google/android/exoplayer/audio/AudioTrack$1;->start()V

    .line 548
    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .prologue
    .line 489
    iput p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 490
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolumeV21(Landroid/media/AudioTrack;F)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method
