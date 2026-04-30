.class Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;
.super Ljava/lang/Object;
.source "AdobeCommentsSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

.field final synthetic val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

.field final synthetic val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;->val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;->val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 212
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;->val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;->onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 206
    return-void
.end method
