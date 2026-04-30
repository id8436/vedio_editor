.class Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;


# direct methods
.method constructor <init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$400(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 280
    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$000(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v1, "{server_root_url}/v2/project/editor?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$100(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_3

    .line 284
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "project"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$402(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 294
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$500(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    if-ne v0, v1, :cond_4

    .line 295
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$600(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/String;)V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->WAITING_FOR_UPLOADS:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-static {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$502(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$800(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$500(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_CANCELLED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    if-ne v0, v1, :cond_5

    .line 311
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$700(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-virtual {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->deleteDraft()V

    .line 316
    :cond_2
    :goto_2
    return-void

    .line 286
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-static {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$502(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-static {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$502(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    goto :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$500(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_CANCELLED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$700(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-virtual {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->deleteDraft()V

    goto :goto_2

    .line 306
    :catch_1
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$900(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1000(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 289
    :catch_2
    move-exception v0

    goto :goto_3
.end method
