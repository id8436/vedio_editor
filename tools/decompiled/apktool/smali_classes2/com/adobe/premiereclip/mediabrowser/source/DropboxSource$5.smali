.class Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$5;
.super Ljava/lang/Object;
.source "DropboxSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$5;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->cancel:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$5;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;->onFolderLoadFailure(I)V

    .line 155
    :cond_0
    return-void
.end method
