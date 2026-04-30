.class Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;
.super Ljava/lang/Object;
.source "GroupedMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;Landroid/content/Context;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getSortedMediaGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/Utils;->getThumbnailDataFromBuckets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$2;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
