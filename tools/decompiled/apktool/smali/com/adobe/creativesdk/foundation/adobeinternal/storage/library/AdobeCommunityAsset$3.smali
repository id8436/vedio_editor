.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;
.super Ljava/lang/Object;
.source "AdobeCommunityAsset.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;

.field final synthetic val$onError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$onSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->val$onSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->val$onError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->val$onSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->val$onSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->val$onError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->val$onError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;->onCompletion(Ljava/lang/Boolean;)V

    return-void
.end method
