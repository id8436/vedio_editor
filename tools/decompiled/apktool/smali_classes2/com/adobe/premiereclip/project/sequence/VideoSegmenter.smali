.class public Lcom/adobe/premiereclip/project/sequence/VideoSegmenter;
.super Ljava/lang/Object;
.source "VideoSegmenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSegmentStartTimesWithDuration(DI)[F
    .locals 8

    .prologue
    .line 54
    new-array v1, p2, [F

    .line 56
    const-wide/16 v2, 0x0

    .line 57
    int-to-double v4, p2

    div-double v4, p0, v4

    .line 59
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 61
    double-to-float v6, v2

    aput v6, v1, v0

    .line 62
    add-double/2addr v2, v4

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method

.method public static getVideoSegmentsForAssetReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;FF)[F
    .locals 10

    .prologue
    const-wide/16 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 26
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double v4, v0, v4

    .line 29
    sub-float v0, v6, p1

    const/high16 v1, 0x41500000    # 13.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    .line 30
    sub-float/2addr v6, p2

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-double v6, v6

    .line 31
    add-double/2addr v0, v6

    .line 33
    div-double v6, v4, v8

    cmpg-double v6, v6, v0

    if-gez v6, :cond_1

    .line 42
    :goto_0
    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    .line 43
    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    move-wide v0, v2

    .line 48
    :cond_0
    long-to-int v0, v0

    invoke-static {v4, v5, v0}, Lcom/adobe/premiereclip/project/sequence/VideoSegmenter;->getSegmentStartTimesWithDuration(DI)[F

    move-result-object v0

    .line 49
    return-object v0

    .line 39
    :cond_1
    div-double v0, v4, v8

    goto :goto_0
.end method
