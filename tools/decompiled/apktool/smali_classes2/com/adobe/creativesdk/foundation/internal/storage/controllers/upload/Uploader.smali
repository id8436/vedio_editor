.class public interface abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EndPointType::",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination",
        "<TEndPointType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancelUpload()V
.end method

.method public abstract startUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
            "TEndPointType;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<*",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
