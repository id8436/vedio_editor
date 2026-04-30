.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$1;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"

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
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$1;->this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 831
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$1;->onCompletion(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 835
    return-void
.end method
