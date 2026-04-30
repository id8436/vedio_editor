.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;
.super Ljava/lang/Object;
.source "Adobe360Message.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$output:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$output:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 259
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$output:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 260
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$output:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->createCompositeFinished:Z

    .line 261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 262
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 263
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$output:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->hostComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$output:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->createCompositeFinished:Z

    .line 252
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 254
    return-void
.end method
