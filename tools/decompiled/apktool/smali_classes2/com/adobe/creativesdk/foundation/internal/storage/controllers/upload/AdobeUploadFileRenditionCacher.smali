.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileRenditionCacher;
.super Ljava/lang/Object;
.source "AdobeUploadFileRenditionCacher.java"


# static fields
.field static _cache:Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;-><init>(I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileRenditionCacher;->_cache:Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 19
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 20
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileRenditionCacher;->_cache:Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->addItem(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    :cond_0
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileRenditionCacher;->_cache:Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->clear()V

    .line 33
    return-void
.end method

.method public static getItem(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileRenditionCacher;->_cache:Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->getItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static removeFromCache(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileRenditionCacher;->_cache:Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->removeItem(Ljava/lang/Object;)V

    .line 25
    return-void
.end method
