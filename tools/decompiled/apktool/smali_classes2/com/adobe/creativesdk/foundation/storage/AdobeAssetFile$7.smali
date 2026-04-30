.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageResourceRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$callbackHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$callbackHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 576
    if-eqz p1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->asrItem:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    .line 578
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->etag:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->md5Hash:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->fileSize:J

    .line 581
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$callbackHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;->onComplete()V

    .line 589
    :goto_0
    return-void

    .line 584
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AssetFile.delete"

    const-string/jumbo v2, "Failed to delete file"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$callbackHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-interface {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetFileEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 600
    if-eqz p1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->val$callbackHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 603
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 572
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$7;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 594
    return-void
.end method
