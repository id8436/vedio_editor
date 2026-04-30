.class final Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompatV16;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompat;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$1;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$MediaCodecListCompatV16;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .prologue
    .line 338
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .prologue
    .line 350
    const-string/jumbo v0, "video/avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public secureDecodersExplicit()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method
