.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

.field final synthetic val$parentProgress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

.field final synthetic val$snapshotPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->val$snapshotPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->val$parentProgress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method perform()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;)V

    .line 241
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 242
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    .line 246
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->val$snapshotPath:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;

    invoke-direct {v6, p0, v2, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;Ljava/util/concurrent/locks/Condition;)V

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->val$parentProgress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-static {v0, v4, v5, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->createCompositeAtPathInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    .line 267
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 268
    :goto_0
    iget-boolean v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->createCompositeFinished:Z

    if-nez v0, :cond_1

    .line 271
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 276
    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 278
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    throw v0

    .line 282
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->hostComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->val$parentProgress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    return-object v0
.end method
