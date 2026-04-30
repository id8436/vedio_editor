.class public Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;
.super Ljava/lang/Exception;
.source "MediaCodecUtil.java"


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
