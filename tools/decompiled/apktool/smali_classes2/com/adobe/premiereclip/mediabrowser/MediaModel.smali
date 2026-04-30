.class public Lcom/adobe/premiereclip/mediabrowser/MediaModel;
.super Ljava/lang/Object;
.source "MediaModel.java"


# static fields
.field public static final MEDIA_TYPE_ALL:I = 0x0

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_PNG:I = 0x2

.field public static final MEDIA_TYPE_VIDEO:I = 0x3


# instance fields
.field private mDate:J

.field private mDuration:J

.field private mId:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mMediaType:I

.field private mParentBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

.field private mPath:Ljava/lang/String;

.field private mSelected:Z

.field private mSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJ)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mPath:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mPath:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mMediaType:I

    .line 53
    iput-wide p4, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mDuration:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mSelected:Z

    .line 55
    iput-wide p6, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mSize:J

    .line 56
    iput-object p8, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mParentBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 57
    iput-wide p9, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mLatitude:D

    .line 58
    iput-wide p11, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mLongitude:D

    .line 59
    iput-wide p13, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mDate:J

    .line 60
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mDate:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mDuration:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mLongitude:D

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mMediaType:I

    return v0
.end method

.method public getParentBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mParentBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mSize:J

    return-wide v0
.end method

.method public isMediaSelected()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mSelected:Z

    return v0
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mLatitude:D

    .line 116
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mLongitude:D

    .line 124
    return-void
.end method

.method public setMediaSelected(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mSelected:Z

    .line 76
    return-void
.end method

.method public setParentBucket(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mParentBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 104
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->mPath:Ljava/lang/String;

    .line 88
    return-void
.end method
