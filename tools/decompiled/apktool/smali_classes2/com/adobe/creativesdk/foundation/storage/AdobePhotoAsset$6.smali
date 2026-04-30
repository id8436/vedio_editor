.class final Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;
.super Ljava/lang/Object;
.source "AdobePhotoAsset.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

.field final synthetic val$photoCreationCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;->val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;->val$photoCreationCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 2

    .prologue
    .line 536
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->handleCommonUploadCompletionBookKeeping()V

    .line 537
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;->val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;->val$etsPhotoEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;->val$photoCreationCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 539
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 533
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    return-void
.end method
