.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;
.super Ljava/lang/Object;
.source "AdobePhotoCollectionsDataSource.java"

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
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 189
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->access$702(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Z)Z

    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->val$name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->access$802(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method
