.class Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$1;
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
    .line 64
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;->onFolderLoadFailure(I)V

    .line 68
    return-void
.end method
