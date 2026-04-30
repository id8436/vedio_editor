.class Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$4;
.super Ljava/lang/Object;
.source "AdobeCommentsSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;->onSuccess()V

    .line 354
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;->onError()V

    .line 359
    return-void
.end method
