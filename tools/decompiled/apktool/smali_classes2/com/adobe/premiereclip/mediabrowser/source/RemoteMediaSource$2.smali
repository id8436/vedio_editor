.class Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;
.super Ljava/lang/Object;
.source "RemoteMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

.field final synthetic val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;->val$uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->fetchAlbumInternal(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Landroid/os/Handler;)V

    .line 60
    return-void
.end method
