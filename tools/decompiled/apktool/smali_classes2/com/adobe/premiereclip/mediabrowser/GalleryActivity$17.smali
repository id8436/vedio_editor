.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

.field final synthetic val$remoteSourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;->val$remoteSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1502(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 1016
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 1017
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 1018
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;->val$remoteSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelDownloadOfRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    .line 1019
    return-void
.end method
