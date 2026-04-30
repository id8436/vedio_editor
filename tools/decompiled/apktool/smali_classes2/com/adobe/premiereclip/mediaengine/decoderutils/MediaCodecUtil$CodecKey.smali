.class final Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final secure:Z

.field public final software:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 363
    iput-boolean p2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->secure:Z

    .line 364
    iput-boolean p3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->software:Z

    .line 365
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 379
    if-ne p0, p1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 383
    goto :goto_0

    .line 385
    :cond_3
    check-cast p1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;

    .line 386
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->secure:Z

    iget-boolean v3, p1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->secure:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 369
    .line 371
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 372
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 373
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->software:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 374
    return v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 372
    goto :goto_1

    :cond_2
    move v1, v2

    .line 373
    goto :goto_2
.end method
