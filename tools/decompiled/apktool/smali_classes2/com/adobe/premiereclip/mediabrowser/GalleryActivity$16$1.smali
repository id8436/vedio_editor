.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 933
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 934
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a043c

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setTextView(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$902(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 937
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 938
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didFailDownloadOfRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    .line 939
    return-void
.end method
