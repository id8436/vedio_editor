.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$2;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;D)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$2;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;

    iput-wide p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$2;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$2;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$2;->val$progress:D

    invoke-interface {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 464
    return-void
.end method
