.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$23EnclosedClass;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$23EnclosedClass;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 3719
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$23EnclosedClass;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 3722
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3723
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$23EnclosedClass;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$23EnclosedClass;->isDone:Z

    .line 3724
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->val$obj:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$23EnclosedClass;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$23EnclosedClass;->exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 3725
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 3726
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3727
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3719
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$68;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
