.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;
.super Ljava/lang/Object;
.source "AdobeLibraryComposite.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isPrimaryRep:Z

.field final synthetic val$sizeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$isPrimaryRep:Z

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$sizeStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2165
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getKeyForResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 2167
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->isUnrecoverableError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2168
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    .line 2172
    const/16 v3, 0x190

    if-eq v1, v3, :cond_0

    const/16 v3, 0x193

    if-ne v1, v3, :cond_7

    .line 2173
    :cond_0
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$isPrimaryRep:Z

    if-eqz v1, :cond_3

    .line 2176
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRepresentationsForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2178
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 2179
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "rendition"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2184
    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2209
    :cond_2
    :goto_1
    return-void

    .line 2189
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getNetworkException()Ljava/lang/Exception;

    move-result-object v0

    .line 2194
    :goto_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementRenditions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_5

    .line 2196
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2198
    :try_start_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$sizeStr:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->writeLibraryPlist()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2205
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_2

    .line 2206
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorDownloadingRepresentationAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;)V

    .line 2207
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->val$handler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    goto :goto_1

    .line 2196
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_3

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto :goto_0

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2162
    check-cast p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    return-void
.end method
