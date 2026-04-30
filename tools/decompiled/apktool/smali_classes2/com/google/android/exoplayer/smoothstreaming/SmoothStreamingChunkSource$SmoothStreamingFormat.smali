.class final Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$SmoothStreamingFormat;
.super Lcom/google/android/exoplayer/chunk/Format;
.source "SmoothStreamingChunkSource.java"


# instance fields
.field public final trackIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0

    .prologue
    .line 408
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 409
    iput p8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$SmoothStreamingFormat;->trackIndex:I

    .line 410
    return-void
.end method
