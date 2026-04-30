.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageResourceRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

.field final synthetic val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 298
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->uploadRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 301
    if-eqz p1, :cond_3

    .line 302
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->asrItem:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->etag:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->name:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->internalID:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->GUID:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->href:Ljava/net/URI;

    .line 307
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getMd5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->md5Hash:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->links:Lorg/json/JSONObject;

    .line 309
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getLength()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->fileSize:J

    .line 314
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->currentVersion:I

    .line 319
    :goto_1
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->modified:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->modified:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->modificationDate:Ljava/util/Date;

    .line 325
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getOptionalMetadata()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->optionalMetadata:Lorg/json/JSONObject;

    .line 326
    const-string/jumbo v0, "Product Saves"

    const-string/jumbo v1, "Creative Cloud"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$type:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-wide v6, v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->fileSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 337
    :goto_3
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->fileSize:J

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput v5, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->currentVersion:I

    goto :goto_1

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->creationDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->modificationDate:Ljava/util/Date;

    goto :goto_2

    .line 334
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetFile:Update"

    const-string/jumbo v2, "Failed to Create/Update File: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorCancelled:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetFile:Update"

    const-string/jumbo v2, "Update request for %s has been cancelled."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->href:Ljava/net/URI;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    const-string/jumbo v1, "cancelled"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-eqz p1, :cond_0

    .line 353
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetFile:Update"

    const-string/jumbo v2, "Update request for %s ended in error: %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->href:Ljava/net/URI;

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 293
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$4;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 343
    return-void
.end method
