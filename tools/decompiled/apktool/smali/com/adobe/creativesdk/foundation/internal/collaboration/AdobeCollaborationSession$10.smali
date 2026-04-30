.class Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$10;
.super Ljava/lang/Object;
.source "AdobeCollaborationSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

.field final synthetic val$retrieveLinkCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$10;->this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$10;->val$retrieveLinkCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 3

    .prologue
    .line 800
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 802
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 803
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$10;->val$retrieveLinkCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;

    const-string/jumbo v0, "publicURL"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$10;->val$retrieveLinkCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;

    const/16 v1, 0x190

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onError(I)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$10;->val$retrieveLinkCallBack:Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onError(I)V

    .line 796
    return-void
.end method
