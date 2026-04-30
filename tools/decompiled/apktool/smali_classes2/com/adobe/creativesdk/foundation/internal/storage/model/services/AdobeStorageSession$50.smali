.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 4028
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 4032
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4034
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;

    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;->manifestHeaderError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 4035
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;->resource:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    .line 4036
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$7EnclosingClassForOutput;->done:Z

    .line 4037
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4039
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4041
    return-void

    .line 4039
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$50;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4040
    throw v0
.end method
