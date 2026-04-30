.class Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;
.super Ljava/lang/Object;
.source "FileSystemMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->val$uiHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->getChildrenInternal(Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    .line 54
    return-void
.end method
