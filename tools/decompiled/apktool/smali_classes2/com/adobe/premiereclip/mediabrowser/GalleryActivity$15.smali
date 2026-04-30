.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1502(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 883
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2802(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 884
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 885
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->setAllBucketDownloadRestart()V

    .line 886
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 887
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelDownloadOfRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    .line 888
    return-void
.end method
