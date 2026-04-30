.class public Lcom/adobe/premiereclip/mediabrowser/grouping/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field private mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->id:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->children:Ljava/util/ArrayList;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->id:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->children:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 26
    return-void
.end method


# virtual methods
.method public addChild(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public addChildren(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    return-void
.end method

.method public areAllChildrenLeaves()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 50
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setChildren(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->children:Ljava/util/ArrayList;

    .line 34
    return-void
.end method
