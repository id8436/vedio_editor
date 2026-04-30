.class final Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$1;
.super Ljava/lang/Object;
.source "AdobePhotoAsset.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;


# instance fields
.field final synthetic val$photoCreationCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$1;->val$photoCreationCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressNotification(D)V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$1;->val$photoCreationCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 423
    return-void
.end method
