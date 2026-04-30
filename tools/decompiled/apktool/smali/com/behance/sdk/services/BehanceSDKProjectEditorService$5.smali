.class Lcom/behance/sdk/services/BehanceSDKProjectEditorService$5;
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
    .line 605
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$5;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 609
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 610
    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$5;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$000(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string/jumbo v1, "project_id"

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$5;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$400(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string/jumbo v1, "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$5;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$100(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpDeleteRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 620
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$5;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-virtual {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->stopSelf()V

    .line 621
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
