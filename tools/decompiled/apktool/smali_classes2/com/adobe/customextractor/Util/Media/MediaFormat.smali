.class public Lcom/adobe/customextractor/Util/Media/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"


# static fields
.field private static final KEY_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String; = "com.google.android.videos.pixelWidthHeightRatio"

.field public static final NO_VALUE:I = -0x1


# instance fields
.field public final channelCount:I

.field public final durationUs:J

.field private frameworkMediaFormat:Landroid/media/MediaFormat;

.field private hashCode:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private maxHeight:I

.field public final maxInputSize:I

.field private maxWidth:I

.field public final mimeType:Ljava/lang/String;

.field public final pixelWidthHeightRatio:F

.field public rotation:I

.field public final sampleRate:I

.field public final width:I


# direct methods
.method private constructor <init>(Landroid/media/MediaFormat;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    .line 102
    const-string/jumbo v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    .line 103
    const-string/jumbo v1, "max-input-size"

    invoke-static {p1, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxInputSize:I

    .line 104
    const-string/jumbo v1, "width"

    invoke-static {p1, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    .line 105
    const-string/jumbo v1, "height"

    invoke-static {p1, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    .line 106
    iput v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->rotation:I

    .line 107
    const-string/jumbo v1, "channel-count"

    invoke-static {p1, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->channelCount:I

    .line 108
    const-string/jumbo v1, "sample-rate"

    invoke-static {p1, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->sampleRate:I

    .line 109
    const-string/jumbo v1, "com.google.android.videos.pixelWidthHeightRatio"

    invoke-static {p1, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getOptionalFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->pixelWidthHeightRatio:F

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    .line 111
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v2, v2, [B

    .line 114
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 115
    iget-object v3, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const-string/jumbo v0, "durationUs"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "durationUs"

    .line 119
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->durationUs:J

    .line 120
    iput v4, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    .line 121
    iput v4, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    .line 122
    return-void

    .line 119
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;IJIIIFIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJIIIFII",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxInputSize:I

    .line 129
    iput-wide p3, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->durationUs:J

    .line 130
    iput p5, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    .line 131
    iput p6, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    .line 132
    iput p7, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->rotation:I

    .line 133
    iput p8, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->pixelWidthHeightRatio:F

    .line 134
    iput p9, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->channelCount:I

    .line 135
    iput p10, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->sampleRate:I

    .line 136
    if-nez p11, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p11

    :cond_0
    iput-object p11, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    .line 138
    iput v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    .line 139
    iput v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    .line 140
    return-void
.end method

.method public static createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/adobe/customextractor/Util/Media/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 72
    const-wide/16 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/adobe/customextractor/Util/Media/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Lcom/adobe/customextractor/Util/Media/MediaFormat;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v1 .. v12}, Lcom/adobe/customextractor/Util/Media/MediaFormat;-><init>(Ljava/lang/String;IJIIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static createEia608Format()Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "application/eia-608"

    invoke-static {v0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createFormatForMimeType(Ljava/lang/String;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createFormatForMimeType(Ljava/lang/String;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 13

    .prologue
    const/4 v3, -0x1

    .line 95
    new-instance v1, Lcom/adobe/customextractor/Util/Media/MediaFormat;

    const-wide/16 v4, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v12, 0x0

    move-object v2, p0

    move v6, v3

    move v7, v3

    move v8, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v1 .. v12}, Lcom/adobe/customextractor/Util/Media/MediaFormat;-><init>(Ljava/lang/String;IJIIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static createFromFrameworkMediaFormatV16(Landroid/media/MediaFormat;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/adobe/customextractor/Util/Media/MediaFormat;

    invoke-direct {v0, p0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public static createId3Format()Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "application/id3"

    invoke-static {v0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createFormatForMimeType(Ljava/lang/String;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createTtmlFormat()Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "application/ttml+xml"

    invoke-static {v0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createFormatForMimeType(Ljava/lang/String;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/adobe/customextractor/Util/Media/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 54
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;IJIIIFLjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJIIIF",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/adobe/customextractor/Util/Media/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Lcom/adobe/customextractor/Util/Media/MediaFormat;

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/adobe/customextractor/Util/Media/MediaFormat;-><init>(Ljava/lang/String;IJIIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static createVideoFormat(Ljava/lang/String;IJIIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJIII",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/adobe/customextractor/Util/Media/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 60
    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIIFLjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private equalsInternal(Lcom/adobe/customextractor/Util/Media/MediaFormat;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxInputSize:I

    iget v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxInputSize:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    iget v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    iget v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->pixelWidthHeightRatio:F

    iget v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->pixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    iget v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    iget v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->channelCount:I

    iget v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->channelCount:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->sampleRate:I

    iget v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->sampleRate:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    .line 206
    invoke-static {v0, v1}, Lcom/adobe/customextractor/Util/Utilities;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 215
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v2, v3

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 215
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static final getOptionalFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;)F
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method private static final getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static final maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 269
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 272
    :cond_0
    return-void
.end method

.method private static final maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 261
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 262
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 264
    :cond_0
    return-void
.end method

.method private final maybeSetMaxDimensionsV16(Landroid/media/MediaFormat;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 254
    const-string/jumbo v0, "max-width"

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    invoke-static {p1, v0, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 255
    const-string/jumbo v0, "max-height"

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    invoke-static {p1, v0, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 256
    return-void
.end method


# virtual methods
.method public equals(Lcom/adobe/customextractor/Util/Media/MediaFormat;Z)Z
    .locals 1

    .prologue
    .line 192
    if-ne p0, p1, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    .line 195
    :cond_0
    if-nez p1, :cond_1

    .line 196
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->equalsInternal(Lcom/adobe/customextractor/Util/Media/MediaFormat;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    if-ne p0, p1, :cond_1

    .line 183
    const/4 v0, 0x1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 188
    check-cast p1, Lcom/adobe/customextractor/Util/Media/MediaFormat;

    invoke-direct {p0, p1, v0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->equalsInternal(Lcom/adobe/customextractor/Util/Media/MediaFormat;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final getFrameworkMediaFormatV16()Landroid/media/MediaFormat;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    .line 231
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 232
    const-string/jumbo v0, "mime"

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v0, "max-input-size"

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxInputSize:I

    invoke-static {v2, v0, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 234
    const-string/jumbo v0, "width"

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    invoke-static {v2, v0, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 235
    const-string/jumbo v0, "height"

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    invoke-static {v2, v0, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 236
    const-string/jumbo v0, "channel-count"

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->channelCount:I

    invoke-static {v2, v0, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 237
    const-string/jumbo v0, "sample-rate"

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->sampleRate:I

    invoke-static {v2, v0, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 238
    const-string/jumbo v0, "com.google.android.videos.pixelWidthHeightRatio"

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->pixelWidthHeightRatio:F

    invoke-static {v2, v0, v1}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 239
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csd-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 239
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 242
    :cond_0
    iget-wide v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->durationUs:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 243
    const-string/jumbo v0, "durationUs"

    iget-wide v4, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->durationUs:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 245
    :cond_1
    invoke-direct {p0, v2}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetMaxDimensionsV16(Landroid/media/MediaFormat;)V

    .line 246
    iput-object v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getMaxVideoHeight()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    return v0
.end method

.method public getMaxVideoWidth()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->hashCode:I

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxInputSize:I

    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->durationUs:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    add-int/2addr v0, v2

    .line 169
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->channelCount:I

    add-int/2addr v0, v2

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->sampleRate:I

    add-int/2addr v0, v2

    .line 172
    :goto_1
    iget-object v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 173
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v2

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 175
    :cond_1
    iput v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->hashCode:I

    .line 177
    :cond_2
    iget v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->hashCode:I

    return v0
.end method

.method public setMaxVideoDimensions(II)V
    .locals 1

    .prologue
    .line 143
    iput p1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    .line 144
    iput p2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    .line 145
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maybeSetMaxDimensionsV16(Landroid/media/MediaFormat;)V

    .line 148
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxInputSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->durationUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
