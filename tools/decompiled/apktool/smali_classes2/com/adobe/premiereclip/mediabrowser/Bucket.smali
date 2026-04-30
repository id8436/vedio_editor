.class public Lcom/adobe/premiereclip/mediabrowser/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# instance fields
.field private cancel:Z

.field private mId:Ljava/lang/String;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private mState:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

.field private mThumbnailItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mId:Ljava/lang/String;

    .line 39
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mName:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mItems:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mThumbnailItems:Ljava/util/ArrayList;

    .line 42
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mState:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mStartTime:J

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->cancel:Z

    .line 45
    return-void

    .line 39
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mThumbnailItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-direct {v1, p1}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 115
    instance-of v0, p1, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 116
    :cond_0
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 117
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mStartTime:J

    return-wide v0
.end method

.method public getState()Lcom/adobe/premiereclip/mediabrowser/Bucket$State;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mState:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    return-object v0
.end method

.method public getThumbnailItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mThumbnailItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->cancel:Z

    return v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 93
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCancel(Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->cancel:Z

    .line 106
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mStartTime:J

    .line 65
    return-void
.end method

.method public setState(Lcom/adobe/premiereclip/mediabrowser/Bucket$State;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/Bucket;->mState:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    .line 89
    return-void
.end method
