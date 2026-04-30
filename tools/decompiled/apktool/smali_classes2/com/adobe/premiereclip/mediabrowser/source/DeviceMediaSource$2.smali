.class Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;
.super Ljava/lang/Object;
.source "DeviceMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

.field final synthetic val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Lcom/adobe/premiereclip/mediabrowser/Bucket;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;->val$uiHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;->val$uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
