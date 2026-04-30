.class public Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;
.super Ljava/lang/Object;
.source "AdobePSDLayerComp.java"


# instance fields
.field private final node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 41
    return-void
.end method


# virtual methods
.method public getComponentId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    const-string/jumbo v1, "psd#layerCompId"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getLayerIds()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    .line 75
    :try_start_0
    const-string/jumbo v2, "psd#layerIds"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerComp.getLayerIds"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getMutableCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerComp;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerComp;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerComp;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    return-object v0
.end method

.method public hasLayer(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Z
    .locals 1

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getLayerId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->hasLayerId(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLayerId(Ljava/lang/Integer;)Z
    .locals 2

    .prologue
    .line 91
    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->getLayerIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
