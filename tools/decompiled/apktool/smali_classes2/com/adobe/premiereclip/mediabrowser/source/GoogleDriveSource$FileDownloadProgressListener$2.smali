.class Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener$2;
.super Ljava/lang/Object;
.source "GoogleDriveSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;

    iget v1, v1, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->finalProgress:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->updateProgress(I)V

    .line 316
    return-void
.end method
