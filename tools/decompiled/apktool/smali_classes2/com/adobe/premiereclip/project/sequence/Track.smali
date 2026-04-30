.class public abstract Lcom/adobe/premiereclip/project/sequence/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field protected clips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;"
        }
    .end annotation
.end field

.field protected groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;>;"
        }
    .end annotation
.end field

.field private isGroupBuilt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->isGroupBuilt:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->isGroupBuilt:Z

    .line 35
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private getGroupStart(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-boolean v1, p0, Lcom/adobe/premiereclip/project/sequence/Track;->isGroupBuilt:Z

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Track;->buildGroups()V

    :cond_0
    move v1, v0

    move v2, v0

    .line 73
    :goto_0
    if-ge v1, p1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_1
    return v2
.end method


# virtual methods
.method public addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public addClipAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 121
    return-void
.end method

.method public buildGroups()V
    .locals 5

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->isGroupBuilt:Z

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v2, -0x1

    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 49
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v2, 0x1

    .line 52
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->isGroupBuilt:Z

    goto :goto_0
.end method

.method public abstract clipTimeFromTrackTime(IJ)J
.end method

.method public getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    return-object v0
.end method

.method public getClips()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getClipsAtTrackTimeUs(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Playable;",
            ">;"
        }
    .end annotation
.end method

.method public getFirstClipIndexInGroup(I)I
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/project/sequence/Track;->getGroupStart(I)I

    move-result v0

    return v0
.end method

.method public getGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->isGroupBuilt:Z

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Track;->buildGroups()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastAvailClipIndex()I
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 112
    :goto_1
    return v0

    .line 107
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLastClipIndexInGroup(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 83
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/project/sequence/Track;->getGroupStart(I)I

    move-result v1

    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getNumClips()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getTrackDurationUS()J
.end method

.method public invalidateGroups()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->isGroupBuilt:Z

    .line 67
    return-void
.end method

.method public reInitClipsFromGroups()V
    .locals 4

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    iput-object v1, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public removeAllClips()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    return-void
.end method

.method public removeClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 1

    .prologue
    .line 124
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClips(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Track;->clips:Ljava/util/ArrayList;

    .line 100
    return-void
.end method

.method public abstract trackStartTimeOfClip(I)J
.end method

.method public abstract trackTimeFromClipTime(IJ)J
.end method
