.class public final Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# instance fields
.field public final adaptive:Z

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;->name:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;->adaptive:Z

    .line 44
    return-void
.end method
