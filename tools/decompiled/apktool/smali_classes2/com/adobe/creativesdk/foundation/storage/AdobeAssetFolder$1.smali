.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

.field final synthetic val$nextPageDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->val$nextPageDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 5

    .prologue
    .line 183
    if-eqz p1, :cond_4

    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->firstPageLoaded:Z

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    .line 193
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-eqz v1, :cond_1

    .line 194
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-direct {v1, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 196
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 199
    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PHOTOSHOP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-direct {v1, v0, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 202
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-direct {v1, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 206
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->val$nextPageDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getNumChildren()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;->onCompletion(Ljava/util/ArrayList;I)V

    .line 218
    :cond_4
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->val$nextPageDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;->onError(Ljava/lang/Object;)V

    .line 225
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 178
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
