.class Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;
.super Ljava/lang/Object;
.source "RemoteMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->fetchDataInternal(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V

    .line 48
    return-void
.end method
