.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$4;
.super Ljava/lang/Object;
.source "AdobePhotoCollection.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$4;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$4;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$4;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 225
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$4;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    return-void
.end method
