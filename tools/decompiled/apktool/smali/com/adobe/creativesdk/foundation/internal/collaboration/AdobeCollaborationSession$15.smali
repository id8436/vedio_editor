.class Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$15;
.super Ljava/lang/Object;
.source "AdobeCollaborationSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;)V
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$15;->this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$15;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$15;->this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->access$900(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$15;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;->onSuccess(Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$15;->val$callback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;->onError()V

    .line 1164
    return-void
.end method
