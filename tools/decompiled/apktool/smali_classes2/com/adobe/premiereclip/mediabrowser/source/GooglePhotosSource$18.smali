.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18;
.super Ljava/util/TimerTask;
.source "GooglePhotosSource.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

.field final synthetic val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18;->val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18;->val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->calculateProgressOffset()I

    move-result v0

    .line 481
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18;I)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method
