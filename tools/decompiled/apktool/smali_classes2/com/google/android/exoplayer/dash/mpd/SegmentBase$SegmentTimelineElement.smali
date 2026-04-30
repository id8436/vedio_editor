.class public Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# instance fields
.field duration:J

.field startTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 379
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->duration:J

    .line 380
    return-void
.end method
