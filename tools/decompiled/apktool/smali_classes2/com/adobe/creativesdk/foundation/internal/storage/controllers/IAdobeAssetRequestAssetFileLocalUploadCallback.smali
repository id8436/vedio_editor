.class public interface abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetRequestAssetFileLocalUploadCallback;
.super Ljava/lang/Object;
.source "IAdobeAssetRequestAssetFileLocalUploadCallback.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeCancelCallback;
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeProgressCallback;
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeCancelCallback;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeProgressCallback;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;"
    }
.end annotation


# virtual methods
.method public abstract onRendition(Landroid/graphics/Bitmap;)V
.end method
