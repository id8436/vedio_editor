.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$7;
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
    .line 202
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$7;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$7;->val$finalBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Calling onBucketLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$7;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$7;->val$finalBucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;->onBucketLoadError(Lcom/adobe/premiereclip/mediabrowser/Bucket;I)V

    .line 207
    return-void
.end method
