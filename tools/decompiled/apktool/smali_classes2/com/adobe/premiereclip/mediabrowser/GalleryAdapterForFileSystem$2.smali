.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;
.super Ljava/lang/Object;
.source "GalleryAdapterForFileSystem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

.field final synthetic val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

.field final synthetic val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$100(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;

    invoke-direct {v4, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->getChildren(Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    .line 271
    return-void
.end method
