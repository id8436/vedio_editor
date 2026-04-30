.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$2;
.super Ljava/lang/Object;
.source "GooglePhotosSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$2;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$2;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;->onGalleryDataError(I)V

    .line 122
    return-void
.end method
