.class final Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"


# instance fields
.field private final elementEndOffsetBytes:J

.field private final elementId:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput p1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;->elementId:I

    .line 545
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;->elementEndOffsetBytes:J

    .line 546
    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$1;)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;)J
    .locals 2

    .prologue
    .line 538
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;->elementEndOffsetBytes:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;)I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;->elementId:I

    return v0
.end method
