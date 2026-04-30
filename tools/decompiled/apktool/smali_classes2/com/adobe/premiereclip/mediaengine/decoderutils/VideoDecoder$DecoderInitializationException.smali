.class public Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;
.super Ljava/lang/Exception;
.source "VideoDecoder.java"


# static fields
.field private static final CUSTOM_ERROR_CODE_BASE:I = -0xc350

.field private static final DECODER_QUERY_ERROR:I = -0xc34e

.field private static final NO_SUITABLE_DECODER_ERROR:I = -0xc34f


# instance fields
.field public final decoderName:Ljava/lang/String;

.field public final diagnosticInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/customextractor/Util/Media/MediaFormat;Ljava/lang/Throwable;I)V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Decoder init failed: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;->decoderName:Ljava/lang/String;

    .line 69
    invoke-static {p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;->buildCustomDiagnosticInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/adobe/customextractor/Util/Media/MediaFormat;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Decoder init failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;->decoderName:Ljava/lang/String;

    .line 76
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;->getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildCustomDiagnosticInfo(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    if-gez p0, :cond_0

    const-string/jumbo v0, "neg_"

    .line 89
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.google.android.exoplayer.MediaCodecTrackRenderer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 81
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 82
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
