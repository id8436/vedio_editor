.class Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$3;
.super Ljava/lang/Object;
.source "GoogleDriveSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$3;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->cancel:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$3;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;->onFolderLoadFailure(I)V

    .line 160
    :cond_0
    return-void
.end method
