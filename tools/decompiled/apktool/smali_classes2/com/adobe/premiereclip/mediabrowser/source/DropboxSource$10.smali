.class Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;
.super Ljava/lang/Object;
.source "DropboxSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

.field final synthetic val$finalBmp:Landroid/graphics/Bitmap;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->val$finalBmp:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->val$finalBmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 287
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    check-cast v0, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;->val$finalBmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;->onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 288
    return-void
.end method
