.class public Lcom/google/android/exoplayer/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final codecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .locals 4

    .prologue
    const/high16 v3, 0x200000

    const v2, 0x65400

    const/16 v0, 0x6300

    const v1, 0x18c00

    .line 236
    sparse-switch p0, :sswitch_data_0

    .line 252
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 239
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 240
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 241
    goto :goto_0

    .line 242
    :sswitch_4
    const v0, 0x31800

    goto :goto_0

    :sswitch_5
    move v0, v2

    .line 243
    goto :goto_0

    :sswitch_6
    move v0, v2

    .line 244
    goto :goto_0

    .line 245
    :sswitch_7
    const v0, 0xe1000

    goto :goto_0

    .line 246
    :sswitch_8
    const/high16 v0, 0x140000

    goto :goto_0

    :sswitch_9
    move v0, v3

    .line 247
    goto :goto_0

    :sswitch_a
    move v0, v3

    .line 248
    goto :goto_0

    .line 249
    :sswitch_b
    const/high16 v0, 0x220000

    goto :goto_0

    .line 250
    :sswitch_c
    const v0, 0x564000

    goto :goto_0

    .line 251
    :sswitch_d
    const/high16 v0, 0x900000

    goto :goto_0

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_6
        0x200 -> :sswitch_7
        0x400 -> :sswitch_8
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_c
        0x8000 -> :sswitch_d
    .end sparse-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string/jumbo v0, "audio/raw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Lcom/google/android/exoplayer/DecoderInfo;

    const-string/jumbo v1, "OMX.google.raw.decoder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 74
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer/DecoderInfo;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v1}, Lcom/google/android/exoplayer/MediaCodecUtil;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Z)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static getMediaCodecInfo(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfoInternal(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer/MediaCodecUtil$1;)V

    throw v1
.end method

.method private static declared-synchronized getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x15

    .line 100
    const-class v2, Lcom/google/android/exoplayer/MediaCodecUtil;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    .line 101
    sget-object v0, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 104
    :cond_1
    :try_start_1
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-lt v0, v4, :cond_3

    new-instance v0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;-><init>(Z)V

    .line 106
    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;

    move-result-object v0

    .line 108
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    sget v3, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-lt v3, v4, :cond_0

    .line 110
    new-instance v0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer/MediaCodecUtil$1;)V

    .line 111
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    const-string/jumbo v3, "MediaCodecUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ". Assuming: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 104
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer/MediaCodecUtil$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static getMediaCodecInfoInternal(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 134
    invoke-interface {p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v5

    .line 135
    invoke-interface {p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v6

    move v3, v1

    .line 137
    :goto_0
    if-ge v3, v5, :cond_8

    .line 138
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 139
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    .line 140
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "OMX."

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v6, :cond_0

    const-string/jumbo v0, ".secure"

    .line 141
    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 142
    :cond_0
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    move v0, v1

    .line 143
    :goto_1
    array-length v2, v9

    if-ge v0, v2, :cond_7

    .line 144
    aget-object v2, v9, v0

    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 146
    invoke-virtual {v7, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    .line 147
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-interface {p1, v2, v10}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v11

    .line 148
    if-nez v6, :cond_4

    .line 150
    sget-object v12, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    .line 151
    :goto_2
    invoke-static {v8, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    .line 150
    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    if-eqz v11, :cond_1

    .line 153
    sget-object v11, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v2, :cond_3

    move-object v2, p0

    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".secure"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 154
    invoke-static {v12, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 153
    invoke-virtual {v11, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    :goto_4
    sget-object v2, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 163
    sget-object v0, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 169
    :goto_5
    return-object v0

    :cond_2
    move-object v2, p0

    .line 150
    goto :goto_2

    .line 153
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    const/4 v12, 0x1

    invoke-direct {v2, v4, v12}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    .line 159
    :cond_4
    sget-object v12, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-ne v2, v11, :cond_5

    move-object v2, p0

    .line 160
    :goto_6
    invoke-static {v8, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 159
    invoke-virtual {v12, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    invoke-direct {v2, v4, v11}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    goto :goto_6

    .line 143
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 169
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .prologue
    .line 173
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 174
    invoke-static {p0}, Lcom/google/android/exoplayer/MediaCodecUtil;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 182
    const-string/jumbo v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isH264ProfileSupported(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 192
    const-string/jumbo v0, "video/avc"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v0

    .line 193
    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 197
    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    move v1, v2

    .line 198
    :goto_1
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 199
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v3, v3, v1

    .line 200
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v4, p0, :cond_2

    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v3, p1, :cond_2

    .line 201
    const/4 v2, 0x1

    goto :goto_0

    .line 198
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 212
    const-string/jumbo v0, "video/avc"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v0

    .line 213
    if-nez v0, :cond_0

    .line 225
    :goto_0
    return v1

    .line 218
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    move v2, v1

    .line 219
    :goto_1
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 220
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v3, v3, v1

    .line 221
    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 222
    invoke-static {v3}, Lcom/google/android/exoplayer/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v3

    .line 221
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 225
    goto :goto_0
.end method

.method public static declared-synchronized warmCodec(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 88
    const-class v1, Lcom/google/android/exoplayer/MediaCodecUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    monitor-exit v1

    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    :try_start_1
    const-string/jumbo v2, "MediaCodecUtil"

    const-string/jumbo v3, "Codec warming failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
