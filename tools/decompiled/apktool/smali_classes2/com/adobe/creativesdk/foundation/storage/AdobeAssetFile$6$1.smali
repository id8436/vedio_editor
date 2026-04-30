.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$1;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 442
    return-void
.end method
