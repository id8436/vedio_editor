.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2$1;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$3:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2$1;->this$3:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2$1;->val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2$1;->this$3:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;->this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2$1;->val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 845
    return-void
.end method
