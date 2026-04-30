.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$2;
.super Ljava/lang/Object;
.source "GalleryAdapterForFileSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$2;->this$2:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$2;->this$2:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$2;->this$2:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setTitle(Ljava/lang/String;)V

    .line 219
    return-void
.end method
