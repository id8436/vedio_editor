.class Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1$1;
.super Ljava/lang/Object;
.source "DeviceMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;

.field final synthetic val$thumbData:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1$1;->val$thumbData:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;->cancel:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1$1;->val$thumbData:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;->onGalleryDataAvailable(Ljava/util/ArrayList;)V

    .line 52
    :cond_0
    return-void
.end method
