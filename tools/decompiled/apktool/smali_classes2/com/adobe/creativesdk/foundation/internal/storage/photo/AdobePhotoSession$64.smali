.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;
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
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22EnclosedClass;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22EnclosedClass;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 3544
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22EnclosedClass;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 2

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3548
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22EnclosedClass;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22EnclosedClass;->isDone:Z

    .line 3549
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22EnclosedClass;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$22EnclosedClass;->asset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 3550
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 3551
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3552
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3544
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$64;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    return-void
.end method
