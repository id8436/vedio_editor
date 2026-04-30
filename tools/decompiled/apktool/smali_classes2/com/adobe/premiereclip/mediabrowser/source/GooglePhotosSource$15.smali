.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;
.super Ljava/util/TimerTask;
.source "GooglePhotosSource.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

.field final synthetic val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;->val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;->val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->calculateProgressOffset()I

    move-result v0

    .line 370
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;I)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    :cond_0
    return-void
.end method
