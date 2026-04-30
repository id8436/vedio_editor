.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$3;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 717
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$3;->onCompletion(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    const-string/jumbo v1, "hls_playlist"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hlsHref:Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    const-string/jumbo v1, "duration"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->_videDuration:I

    .line 722
    return-void
.end method
