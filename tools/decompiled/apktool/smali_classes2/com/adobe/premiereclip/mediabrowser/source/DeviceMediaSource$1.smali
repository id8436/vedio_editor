.class Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;
.super Ljava/lang/Object;
.source "DeviceMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;Landroid/content/Context;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/Utils;->initPhoneMedia(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;Landroid/database/Cursor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 41
    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/Utils;->getThumbnailDataFromBuckets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void

    .line 43
    :cond_0
    const-string/jumbo v1, "TAG"

    const-string/jumbo v2, "Unable to initiate cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
