.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$10;
.super Ljava/lang/Object;
.source "GooglePhotosSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

.field final synthetic val$finalBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Lcom/adobe/premiereclip/mediabrowser/Bucket;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$10;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$10;->val$finalBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$10;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$10;->val$finalBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    const/16 v2, 0x21

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;->onBucketLoadError(Lcom/adobe/premiereclip/mediabrowser/Bucket;I)V

    .line 270
    return-void
.end method
