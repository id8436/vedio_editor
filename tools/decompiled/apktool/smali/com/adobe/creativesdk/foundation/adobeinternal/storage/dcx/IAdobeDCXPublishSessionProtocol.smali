.class public interface abstract Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishSessionProtocol;
.super Ljava/lang/Object;
.source "IAdobeDCXPublishSessionProtocol.java"


# virtual methods
.method public abstract getPublishHrefOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
.end method

.method public abstract getPublishedAssetIdFromAssetHref(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract publishCompositeUploadedTo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
.end method

.method public abstract setUploadService(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/IAdobeCSDKCloudUploadService;)V
.end method

.method public abstract updateCompositePublishedAt(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
.end method

.method public abstract updatePublicationRecordData(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublicationRecordDataCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
.end method
