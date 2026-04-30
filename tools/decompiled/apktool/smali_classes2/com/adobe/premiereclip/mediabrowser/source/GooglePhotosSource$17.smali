.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$17;
.super Ljava/lang/Object;
.source "GooglePhotosSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$17;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$17;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->decreaseMaximumProgress()V

    .line 449
    return-void
.end method
