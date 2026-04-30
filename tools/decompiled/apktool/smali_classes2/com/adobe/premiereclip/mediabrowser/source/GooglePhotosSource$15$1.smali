.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15$1;
.super Ljava/lang/Object;
.source "GooglePhotosSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;I)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;

    iput p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->updateProgress(I)V

    .line 374
    return-void
.end method
