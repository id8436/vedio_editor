.class Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;
.super Ljava/lang/Object;
.source "GoogleDriveSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

.field final synthetic val$finalBmp:Landroid/graphics/Bitmap;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->val$finalBmp:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->val$finalBmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 356
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    check-cast v0, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;->val$finalBmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;->onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 358
    return-void
.end method
