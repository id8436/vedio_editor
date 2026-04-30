.class public Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final codecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;",
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
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->codecs:Ljava/util/HashMap;

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

    .line 240
    sparse-switch p0, :sswitch_data_0

    .line 256
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 243
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 244
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 245
    goto :goto_0

    .line 246
    :sswitch_4
    const v0, 0x31800

    goto :goto_0

    :sswitch_5
    move v0, v2

    .line 247
    goto :goto_0

    :sswitch_6
    move v0, v2

    .line 248
    goto :goto_0

    .line 249
    :sswitch_7
    const v0, 0xe1000

    goto :goto_0

    .line 250
    :sswitch_8
    const/high16 v0, 0x140000

    goto :goto_0

    :sswitch_9
    move v0, v3

    .line 251
    goto :goto_0

    :sswitch_a
    move v0, v3

    .line 252
    goto :goto_0

    .line 253
    :sswitch_b
    const/high16 v0, 0x220000

    goto :goto_0

    .line 254
    :sswitch_c
    const v0, 0x564000

    goto :goto_0

    .line 255
    :sswitch_d
    const/high16 v0, 0x900000

    goto :goto_0

    .line 240
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

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;ZZ)Landroid/util/Pair;

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;-><init>(Ljava/lang/String;Z)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static getMediaCodecInfo(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;Z)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;",
            "Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;",
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
            Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->getMediaCodecInfoInternal(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;Z)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$1;)V

    throw v1
.end method

.method private static declared-synchronized getMediaCodecInfo(Ljava/lang/String;ZZ)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x15

    .line 106
    const-class v2, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 107
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 110
    :cond_1
    :try_start_1
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-lt v0, v4, :cond_3

    new-instance v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompatV21;-><init>(Z)V

    .line 112
    :goto_1
    invoke-static {v1, v0, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->getMediaCodecInfo(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;Z)Landroid/util/Pair;

    move-result-object v0

    .line 114
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    sget v3, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-lt v3, v4, :cond_0

    .line 116
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$1;)V

    .line 117
    invoke-static {v1, v0, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->getMediaCodecInfo(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;Z)Landroid/util/Pair;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_2

    .line 119
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

    .line 110
    :cond_3
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static getMediaCodecInfoInternal(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;Z)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;",
            "Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 142
    invoke-interface/range {p1 .. p1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v5

    .line 143
    invoke-interface/range {p1 .. p1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v6

    .line 145
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_9

    .line 146
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 147
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    .line 148
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "OMX."

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v6, :cond_0

    const-string/jumbo v1, ".secure"

    .line 149
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v1, ".sw."

    .line 150
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 151
    :cond_1
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    .line 152
    array-length v10, v9

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v10, :cond_8

    aget-object v1, v9, v2

    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 154
    invoke-virtual {v7, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v11

    .line 155
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v11}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;->isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    .line 156
    if-nez v6, :cond_5

    .line 158
    sget-object v13, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;

    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-direct {v1, v4, v14, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 159
    :goto_2
    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 158
    invoke-virtual {v13, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    if-eqz v12, :cond_2

    .line 161
    sget-object v12, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v1, :cond_4

    move-object v1, p0

    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".secure"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 162
    invoke-static {v13, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 161
    invoke-virtual {v12, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_2
    :goto_4
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 171
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 177
    :goto_5
    return-object v1

    :cond_3
    move-object v1, p0

    .line 158
    goto :goto_2

    .line 161
    :cond_4
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;

    const/4 v13, 0x1

    move/from16 v0, p2

    invoke-direct {v1, v4, v13, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 167
    :cond_5
    sget-object v13, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->secure:Z

    if-ne v1, v12, :cond_6

    move-object v1, p0

    .line 168
    :goto_6
    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 167
    invoke-virtual {v13, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;

    move/from16 v0, p2

    invoke-direct {v1, v4, v12, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_6

    .line 152
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 145
    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 177
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .prologue
    .line 181
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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
    .line 186
    const-string/jumbo v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isH264ProfileSupported(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 196
    const-string/jumbo v0, "video/avc"

    invoke-static {v0, v2, v2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;ZZ)Landroid/util/Pair;

    move-result-object v0

    .line 197
    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v2

    .line 201
    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    move v1, v2

    .line 202
    :goto_1
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 203
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v3, v3, v1

    .line 204
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v4, p0, :cond_2

    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v3, p1, :cond_2

    .line 205
    const/4 v2, 0x1

    goto :goto_0

    .line 202
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 216
    const-string/jumbo v0, "video/avc"

    invoke-static {v0, v1, v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;ZZ)Landroid/util/Pair;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 229
    :goto_0
    return v1

    .line 222
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    move v2, v1

    .line 223
    :goto_1
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 224
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v3, v3, v1

    .line 225
    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 226
    invoke-static {v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v3

    .line 225
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 229
    goto :goto_0
.end method

.method public static declared-synchronized warmCodec(Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    .line 94
    const-class v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;ZZ)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit v1

    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    const-string/jumbo v2, "MediaCodecUtil"

    const-string/jumbo v3, "Codec warming failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
