.class final Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;
.super Ljava/lang/Object;
.source "CommonMp4AtomParsers.java"


# instance fields
.field public final bitrate:I

.field public final channelCount:I

.field public final sampleRate:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput p1, p0, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;->channelCount:I

    .line 665
    iput p2, p0, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;->sampleRate:I

    .line 666
    iput p3, p0, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;->bitrate:I

    .line 667
    return-void
.end method
