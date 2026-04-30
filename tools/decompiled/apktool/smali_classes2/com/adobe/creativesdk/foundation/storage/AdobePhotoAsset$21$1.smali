.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$1;
.super Ljava/lang/Object;
.source "AdobePhotoAsset.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressNotification(D)V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->val$masterDataDownloadCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 899
    return-void
.end method
