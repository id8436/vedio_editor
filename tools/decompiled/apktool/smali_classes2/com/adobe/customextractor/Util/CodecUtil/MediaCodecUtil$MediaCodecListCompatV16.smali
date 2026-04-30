.class final Lcom/adobe/customextractor/Util/CodecUtil/MediaCodecUtil$MediaCodecListCompatV16;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Lcom/adobe/customextractor/Util/CodecUtil/MediaCodecUtil$MediaCodecListCompat;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/customextractor/Util/CodecUtil/MediaCodecUtil$1;)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/adobe/customextractor/Util/CodecUtil/MediaCodecUtil$MediaCodecListCompatV16;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .prologue
    .line 322
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .prologue
    .line 334
    const-string/jumbo v0, "video/avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public secureDecodersExplicit()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method
