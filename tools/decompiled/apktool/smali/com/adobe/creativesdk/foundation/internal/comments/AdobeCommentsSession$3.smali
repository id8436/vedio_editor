.class Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$3;
.super Ljava/lang/Object;
.source "AdobeCommentsSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->access$200(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;->onSuccess(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;->onError()V

    .line 314
    return-void
.end method
