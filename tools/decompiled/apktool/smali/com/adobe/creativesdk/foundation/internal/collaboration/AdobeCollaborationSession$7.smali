.class Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;
.super Ljava/lang/Object;
.source "AdobeCollaborationSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

.field final synthetic val$rejectInviteCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;->val$rejectInviteCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 635
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 637
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;->val$rejectInviteCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;->onComplete()V

    .line 644
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;->val$rejectInviteCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    invoke-static {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->access$200(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_0

    .line 624
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->access$200(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;->val$rejectInviteCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    .line 630
    return-void

    .line 626
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method
