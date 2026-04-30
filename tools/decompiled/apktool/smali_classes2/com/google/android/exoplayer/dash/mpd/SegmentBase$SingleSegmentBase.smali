.class public Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
.super Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
.source "SegmentBase.java"


# instance fields
.field final indexLength:J

.field final indexStart:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 103
    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v6, p1

    move-wide v7, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLandroid/net/Uri;JJ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLandroid/net/Uri;JJ)V
    .locals 0

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJ)V

    .line 94
    iput-object p6, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->uri:Landroid/net/Uri;

    .line 95
    iput-wide p7, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    .line 96
    iput-wide p9, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 97
    return-void
.end method


# virtual methods
.method public getIndex()Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->uri:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Landroid/net/Uri;Ljava/lang/String;JJ)V

    move-object v3, v1

    goto :goto_0
.end method
