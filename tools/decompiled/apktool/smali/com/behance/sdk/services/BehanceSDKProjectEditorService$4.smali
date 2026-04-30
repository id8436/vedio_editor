.class Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;
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
    .line 321
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    sget-object v2, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISHING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-static {v0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$502(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    .line 327
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    const-string/jumbo v2, "clientId"

    iget-object v3, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v3}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$000(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v2, "project_id"

    iget-object v3, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v3}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$400(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v2, "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

    invoke-static {v2, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$500(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    move-result-object v2

    sget-object v3, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_CANCELLED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    if-ne v2, v3, :cond_1

    .line 333
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$700(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-virtual {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->deleteDraft()V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1100(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Z)V

    .line 341
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v3}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1200(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/network/BehanceMultipartEntity;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v5}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$100(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPatchRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 343
    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 345
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    .line 346
    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    sget-object v3, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-static {v2, v3}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$502(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 349
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 353
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$600(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    sget-object v2, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-static {v0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$502(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    .line 390
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$600(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :catch_1
    move-exception v0

    .line 351
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 359
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    sget-object v3, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISHED_SUCCESSFULLY:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-static {v2, v3}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$502(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    .line 361
    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1400(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->isPublish()Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    :try_start_4
    new-instance v2, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;

    invoke-direct {v2}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;-><init>()V

    .line 365
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "project"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 366
    const-string/jumbo v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->setProjectId(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v3, "covers"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "404"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->setProjectImageUrl(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->setProjectTitle(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->setProjectUrl(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1500(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;)V

    .line 373
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1600(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 384
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-virtual {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->stopSelf()V

    goto/16 :goto_0

    .line 386
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 374
    :catch_3
    move-exception v0

    .line 375
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 376
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_3

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$1300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3
.end method
