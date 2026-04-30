.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$7;
.super Ljava/lang/Object;
.source "AdobePhotoCatalog.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$7;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$7;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$7;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$7;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 259
    :cond_0
    return-void
.end method
