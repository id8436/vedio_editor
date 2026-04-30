.class Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

.field final synthetic val$embed:Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;


# direct methods
.method constructor <init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    iput-object p2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->val$embed:Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 211
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$000(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v1, "https://www.behance.net/v2/project/embeds/transforms?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 215
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setBrowserCompatible(Z)V

    .line 216
    const-string/jumbo v2, "embed"

    iget-object v3, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->val$embed:Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;

    invoke-virtual {v3}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 217
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v4}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$100(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 219
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;

    invoke-direct {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;-><init>()V

    .line 221
    const-string/jumbo v2, "original_embed"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setHtml(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v2, "original_height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setOriginalHeight(I)V

    .line 223
    const-string/jumbo v2, "original_width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setOriginalWidth(I)V

    .line 224
    const-string/jumbo v2, "width_unit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setWidthUnit(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$200(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->val$embed:Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->access$300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;->val$embed:Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;->onEmbedTransformFailed(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    goto :goto_1
.end method
