.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$8EnclosedClass;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$8EnclosedClass;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$8EnclosedClass;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1337
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$8EnclosedClass;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$8EnclosedClass;->isDone:Z

    .line 1338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$8EnclosedClass;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$8EnclosedClass;->collectionsCount:Ljava/lang/Integer;

    .line 1339
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1340
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1341
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1333
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22;->onCompletion(Ljava/lang/Integer;)V

    return-void
.end method
