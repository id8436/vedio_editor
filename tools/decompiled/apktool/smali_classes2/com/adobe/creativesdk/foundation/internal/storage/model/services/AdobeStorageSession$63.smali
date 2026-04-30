.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$11EnclosingClassForOutput;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$11EnclosingClassForOutput;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 5084
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$11EnclosingClassForOutput;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 5088
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5090
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$11EnclosingClassForOutput;

    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$11EnclosingClassForOutput;->componentDeleteError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 5091
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$outPut:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$11EnclosingClassForOutput;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$11EnclosingClassForOutput;->done:Z

    .line 5092
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5094
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5096
    return-void

    .line 5094
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$63;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5095
    throw v0
.end method
