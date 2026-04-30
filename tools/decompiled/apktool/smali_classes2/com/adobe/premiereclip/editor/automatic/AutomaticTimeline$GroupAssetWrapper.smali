.class public Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;
.super Ljava/lang/Object;
.source "AutomaticTimeline.java"


# instance fields
.field private groupId:Ljava/lang/String;

.field private mGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->mGroup:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addClipAsset(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->mGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public getClipAssets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->mGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClipsId()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->mGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    .line 76
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getId()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    return-object v1
.end method

.method public getGroupDurationUs()J
    .locals 5

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    .line 82
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->mGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    .line 83
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getClipDurationUs()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-wide v2
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->groupId:Ljava/lang/String;

    .line 63
    return-void
.end method
