.class public final Lcom/adobe/customextractor/Util/CodecUtil/MediaCodecUtil$DecoderInfo;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# instance fields
.field public final adaptive:Z

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/adobe/customextractor/Util/CodecUtil/MediaCodecUtil$DecoderInfo;->name:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lcom/adobe/customextractor/Util/CodecUtil/MediaCodecUtil$DecoderInfo;->adaptive:Z

    .line 26
    return-void
.end method
