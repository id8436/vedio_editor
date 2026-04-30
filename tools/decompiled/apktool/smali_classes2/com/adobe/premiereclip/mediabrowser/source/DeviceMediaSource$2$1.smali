.class Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2$1;
.super Ljava/lang/Object;
.source "DeviceMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;->cancel:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;->onBucketLoadSuccess(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    .line 70
    :cond_0
    return-void
.end method
