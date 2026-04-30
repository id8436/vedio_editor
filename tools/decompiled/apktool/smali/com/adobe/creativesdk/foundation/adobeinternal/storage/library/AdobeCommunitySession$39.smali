.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$39;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$pubRecordData:Lorg/json/JSONObject;

.field final synthetic val$publicationRecordDataCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublicationRecordDataCompletionHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublicationRecordDataCompletionHandler;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 2580
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$39;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$39;->val$publicationRecordDataCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublicationRecordDataCompletionHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$39;->val$pubRecordData:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$39;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$39;->val$publicationRecordDataCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublicationRecordDataCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$39;->val$pubRecordData:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$39;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublicationRecordDataCompletionHandler;->onComplete(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2584
    return-void
.end method
