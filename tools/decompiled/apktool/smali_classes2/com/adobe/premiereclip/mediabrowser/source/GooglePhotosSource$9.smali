.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;
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
    .line 250
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;->val$finalBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->cancel:Z

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;->val$finalBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;->onBucketLoadSuccess(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    .line 256
    :cond_0
    return-void
.end method
