.class Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;
.super Ljava/lang/Object;
.source "DropboxSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

.field final synthetic val$thumbData:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;->val$thumbData:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->cancel:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;->val$thumbData:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;->onFolderLoadSuccess(Ljava/util/ArrayList;)V

    .line 164
    :cond_0
    return-void
.end method
