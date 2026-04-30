.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$3;
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
    .line 234
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$3;->this$2:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$3;->this$2:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->dismissSpinner()V

    .line 238
    return-void
.end method
