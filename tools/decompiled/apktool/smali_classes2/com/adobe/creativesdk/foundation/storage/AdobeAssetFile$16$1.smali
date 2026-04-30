.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 1266
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->md5Hash:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1269
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1270
    const-string/jumbo v0, "md5"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->md5Hash:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    const-string/jumbo v0, "modified"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->modificationDate:Ljava/util/Date;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    const-string/jumbo v0, "etag"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->etag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "modified-data"

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 1275
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-string/jumbo v5, "com.adobe.cc.storage"

    .line 1274
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addDictionary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetFile:getData"

    const-string/jumbo v2, "Adding to caches is failed for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->href:Ljava/net/URI;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1263
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$16$1;->onCompletion(Ljava/lang/Boolean;)V

    return-void
.end method
