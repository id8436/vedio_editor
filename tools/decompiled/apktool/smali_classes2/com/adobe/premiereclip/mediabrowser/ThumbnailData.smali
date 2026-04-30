.class public Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;
.super Ljava/lang/Object;
.source "ThumbnailData.java"


# instance fields
.field private mBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

.field private mId:Ljava/lang/String;

.field private mModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

.field private mViewType:I


# direct methods
.method private constructor <init>(ILcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->mViewType:I

    .line 37
    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->mBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 38
    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->mModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(ILcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(ILcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p2, v0, v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(ILcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "no_media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->mId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->mBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->mModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->mViewType:I

    return v0
.end method
