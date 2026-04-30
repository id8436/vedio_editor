.class final Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;
.super Ljava/lang/Object;
.source "AdobePhotoCollection.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_GUID:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "lr_album"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 199
    return-void

    .line 195
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create collection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
