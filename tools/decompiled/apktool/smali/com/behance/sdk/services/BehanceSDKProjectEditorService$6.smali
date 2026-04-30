.class Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;
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
    .line 656
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 660
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 661
    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$000(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string/jumbo v1, "project_id"

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$400(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string/jumbo v1, "{server_root_url}/v2/projects/{project_id}/html?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$100(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 668
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 669
    const-string/jumbo v0, "project"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 670
    invoke-static {v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->parseEditorProject(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    move-result-object v0

    .line 672
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;->onProjectLoaded(Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 675
    :catch_1
    move-exception v0

    goto :goto_1
.end method
