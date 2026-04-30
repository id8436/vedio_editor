.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;
.super Ljava/lang/Object;
.source "AdobeAssetPSDFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$params:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$params:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 726
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 728
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 734
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$502(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 736
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$params:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->path:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    .line 742
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v7

    .line 744
    :cond_1
    :goto_0
    :try_start_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 745
    array-length v3, v1

    sub-int/2addr v3, v0

    .line 748
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 749
    if-lez v3, :cond_1

    .line 750
    add-int/2addr v0, v3

    goto :goto_0

    .line 754
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 763
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 766
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    .line 767
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeAssetPSDFile.getRenditionFromServerForLayer"

    const-string/jumbo v3, "Attempt to delete temporary layer rendition file %s ended in error"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$params:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->path:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_5
    if-eqz v1, :cond_6

    .line 773
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->resourceItem()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v2

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->internalID:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$cacheKey:Ljava/lang/String;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-string/jumbo v5, "com.adobe.cc.storage"

    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8$1;

    invoke-direct {v6, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;)V

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addData([BLjava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 784
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->md5Hash:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 785
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 786
    const-string/jumbo v0, "md5"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->md5Hash:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string/jumbo v0, "modified"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->modificationDate:Ljava/util/Date;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string/jumbo v0, "etag"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->etag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->resourceItem()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v2

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->internalID:Ljava/lang/String;

    const-string/jumbo v3, "modified-data"

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 791
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-string/jumbo v5, "com.adobe.cc.storage"

    .line 790
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addDictionary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 792
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetPSDFile.getRenditionFromServerForLayer"

    const-string/jumbo v2, "Image service rendition request for %s ended in error:"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->href:Ljava/net/URI;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_6
    return-void

    .line 754
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 755
    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeAssetPSDFile.getRenditionFromServerForLayer"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 759
    :catch_1
    move-exception v0

    .line 760
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeAssetPSDFile.getRenditionFromServerForLayer"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 754
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 6

    .prologue
    .line 800
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 802
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 808
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$502(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 810
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetPSDFile.getRenditionFromServerForLayer"

    const-string/jumbo v2, "Image service rendition request for %s has been cancelled."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->href:Ljava/net/URI;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    .line 820
    :cond_1
    :goto_0
    return-void

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 826
    :cond_0
    return-void
.end method
