.class Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;
.super Ljava/lang/Object;
.source "DropboxSource.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

.field final synthetic val$fileOutputStream:Ljava/io/FileOutputStream;

.field final synthetic val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;Ljava/io/FileOutputStream;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;->val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;->val$fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(JJ)V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;->val$progressKeeper:Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->calculateProgressOffset(I)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;I)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;->val$fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
