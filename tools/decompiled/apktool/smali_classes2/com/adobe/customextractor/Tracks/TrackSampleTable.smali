.class public final Lcom/adobe/customextractor/Tracks/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# static fields
.field public static final NO_SAMPLE:I = -0x1


# instance fields
.field public final flags:[I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final timestampsUs:[J


# direct methods
.method public constructor <init>([J[I[J[I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 28
    array-length v0, p1

    array-length v3, p3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 29
    array-length v0, p4

    array-length v3, p3

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 31
    iput-object p1, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->offsets:[J

    .line 32
    iput-object p2, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->sizes:[I

    .line 33
    iput-object p3, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    .line 34
    iput-object p4, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->flags:[I

    .line 35
    array-length v0, p1

    iput v0, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->sampleCount:I

    .line 36
    return-void

    :cond_0
    move v0, v2

    .line 27
    goto :goto_0

    :cond_1
    move v0, v2

    .line 28
    goto :goto_1

    :cond_2
    move v1, v2

    .line 29
    goto :goto_2
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/adobe/customextractor/Util/Utilities;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 47
    :goto_0
    if-ltz v0, :cond_1

    .line 48
    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->flags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 52
    :goto_1
    return v0

    .line 47
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndexOfLaterOrEqualClosestSample(J)I
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/adobe/customextractor/Util/Utilities;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 75
    const/4 v0, -0x1

    .line 77
    :cond_0
    return v0
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/adobe/customextractor/Util/Utilities;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->flags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 69
    :goto_1
    return v0

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
