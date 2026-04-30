.class public Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;
.super Ljava/lang/Object;
.source "AdobePSDCompositeBranch.java"


# instance fields
.field private final _dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 50
    return-void
.end method


# virtual methods
.method public countLayerComps()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayerComps()Ljava/util/ArrayList;

    move-result-object v0

    .line 432
    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public countLayerMasks(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;Z)Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 209
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 211
    :goto_0
    if-eqz v1, :cond_3

    .line 212
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_3

    .line 215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 216
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->makeLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    move-result-object v3

    .line 217
    if-eqz v3, :cond_4

    .line 218
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 220
    const-string/jumbo v4, "pixelMask"

    invoke-virtual {p0, v0, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 227
    :cond_0
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v0

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-ne v0, v4, :cond_4

    if-eqz p3, :cond_4

    .line 229
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v3, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->countLayerMasks(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 232
    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayersRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 235
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public countLayerPixels(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;Z)Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 167
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 170
    :goto_0
    if-eqz v1, :cond_3

    .line 171
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_3

    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 175
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->makeLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    move-result-object v3

    .line 176
    if-eqz v3, :cond_4

    .line 177
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 179
    const-string/jumbo v4, "pixelLayer"

    invoke-virtual {p0, v0, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 186
    :cond_0
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v0

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-ne v0, v4, :cond_4

    if-eqz p3, :cond_4

    .line 188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v3, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->countLayerPixels(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 191
    goto :goto_1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayersRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 194
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public countNodes(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;Z)Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 131
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 133
    :goto_0
    if-eqz v1, :cond_3

    .line 134
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 138
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->makeLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 142
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v3

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-ne v3, v4, :cond_4

    if-eqz p3, :cond_4

    .line 146
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->countNodes(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 149
    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayersRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 152
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public getAppliedLayerComp()Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;
    .locals 3

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    const-string/jumbo v2, "psd#appliedLayerCompId"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayerComp(Ljava/lang/Integer;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    const-string/jumbo v1, "psd#bounds"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getRectFromPSDBounds(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 111
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDcxBranch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    return-object v0
.end method

.method public getLayer(Ljava/lang/Integer;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 274
    if-nez p1, :cond_0

    move-object v0, v2

    .line 300
    :goto_0
    return-object v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllChildren()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 289
    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "psd#layerId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    move-object v0, v1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobePSDCompositeBranch.getLayer"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 300
    goto :goto_0
.end method

.method public getLayerComp(Ljava/lang/Integer;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayerComps()Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;

    .line 451
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->getComponentId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayerComps()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayerCompsRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_2

    .line 408
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v2

    .line 410
    if-eqz v2, :cond_2

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 413
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->makeLayerCompFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 420
    :cond_2
    return-object v0
.end method

.method getLayerCompsRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    const-string/jumbo v1, "layerComps"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public getLayers(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 250
    :goto_0
    if-eqz v1, :cond_3

    .line 251
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_3

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 256
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->makeLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayersRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 263
    :cond_3
    return-object v0
.end method

.method public getLayersIntersectingPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Path;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method getLayersRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    const-string/jumbo v1, "layers"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public getMaskPathOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v1, "pixelMask"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPixelsPathOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v1, "pixelLayer"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_0

    .line 483
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->_dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaskPathOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Z
    .locals 2

    .prologue
    .line 497
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v1, "pixelMask"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPixelsPath(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Z
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v1, "pixelLayer"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layerHasVisibleChildren(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;Z)Z
    .locals 5

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->getLayers(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Ljava/util/ArrayList;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    .line 328
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v3

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-ne v3, v4, :cond_2

    .line 330
    invoke-virtual {p0, v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->layerIsVisible(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    if-eqz p4, :cond_1

    .line 334
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->layerHasVisibleChildren(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;Z)Z

    move-result v1

    move v0, v1

    .line 348
    :goto_1
    if-eqz v0, :cond_3

    .line 355
    :cond_0
    :goto_2
    return v0

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->value()I

    move-result v3

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->value()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 339
    invoke-virtual {p0, v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->layerIsVisible(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->value()I

    move-result v3

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->value()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 345
    invoke-virtual {p0, v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;->layerIsVisible(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 352
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public layerIsVisible(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)Z
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    .line 373
    :cond_0
    if-eqz p2, :cond_1

    .line 375
    invoke-virtual {p2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->hasLayer(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Z

    move-result v0

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->isVisible()Z

    move-result v0

    goto :goto_0
.end method

.method makeLayerCompFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    return-object v0
.end method

.method makeLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    return-object v0
.end method
