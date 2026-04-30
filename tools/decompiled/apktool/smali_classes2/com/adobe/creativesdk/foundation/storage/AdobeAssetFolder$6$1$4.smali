.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$4;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

.field final synthetic val$obj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$4;->this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$4;->val$obj:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$4;->this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$4;->val$obj:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 900
    return-void
.end method
