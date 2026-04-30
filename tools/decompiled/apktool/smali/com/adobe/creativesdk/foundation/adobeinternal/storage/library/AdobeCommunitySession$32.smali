.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$32;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$href:Ljava/lang/String;

.field final synthetic val$publishHrefCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 2507
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$32;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$32;->val$publishHrefCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$32;->val$href:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$32;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$32;->val$publishHrefCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$32;->val$href:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$32;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;->onComplete(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2511
    return-void
.end method
