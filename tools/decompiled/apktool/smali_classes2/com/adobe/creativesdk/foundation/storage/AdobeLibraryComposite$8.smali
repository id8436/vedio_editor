.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;
.super Ljava/lang/Object;
.source "AdobeLibraryComposite.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$elementId:Ljava/lang/String;

.field final synthetic val$elementRenditions:Lorg/json/JSONObject;

.field final synthetic val$finalDestURL:Ljava/lang/String;

.field final synthetic val$representationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$elementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$representationId:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$finalDestURL:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$elementRenditions:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$callbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1887
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->onCompletion(Ljava/lang/Void;)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$elementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$representationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$finalDestURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$finalDestURL:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1893
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$elementRenditions:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$representationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1894
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->writeLibraryPlist()Z

    .line 1895
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$callbackHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;->val$finalDestURL:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    :cond_0
    :goto_0
    return-void

    .line 1897
    :catch_0
    move-exception v0

    .line 1898
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
