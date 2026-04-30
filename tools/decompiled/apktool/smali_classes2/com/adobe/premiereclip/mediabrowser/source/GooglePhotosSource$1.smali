.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;
.super Ljava/lang/Object;
.source "GooglePhotosSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

.field final synthetic val$thumbData:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;->val$thumbData:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->cancel:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;->val$thumbData:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;->onGalleryDataAvailable(Ljava/util/ArrayList;)V

    .line 115
    :cond_0
    return-void
.end method
