.class public Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
.super Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;
.source "AdobePSDMutableLayerNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;)V

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    .line 59
    return-void
.end method


# virtual methods
.method public getPixelLayerOrigin()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getPixelLayerBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    return-object v0
.end method

.method public getPixelMaskOrigin()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getPixelMaskBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->getOrigin()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    move-result-object v0

    return-object v0
.end method

.method public setBlendMode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;)V
    .locals 4

    .prologue
    .line 92
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getBlendModes()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModePassThrough:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getBlendModes()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->value()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#blendOptions"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 100
    if-nez v0, :cond_5

    .line 102
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeNormal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    if-eq p1, v1, :cond_3

    .line 105
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 107
    :try_start_0
    const-string/jumbo v0, "mode"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 137
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 138
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#blendOptions"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    :cond_4
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setBlendMode"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 112
    goto :goto_0

    .line 117
    :cond_5
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeNormal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    if-eq p1, v1, :cond_6

    .line 120
    :try_start_1
    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v1

    .line 124
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setBlendMode"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_6
    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 132
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#blendOptions"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->remove(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlendOpacity(Ljava/lang/Float;)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 150
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#blendOptions"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 155
    if-nez v0, :cond_4

    .line 157
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 160
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    :try_start_0
    const-string/jumbo v0, "opacity"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 193
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 194
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#blendOptions"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    :cond_3
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setBlendOpacity"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 167
    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    .line 175
    :try_start_1
    const-string/jumbo v1, "opacity"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 177
    :catch_1
    move-exception v1

    .line 179
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setBlendOpacity"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_5
    const-string/jumbo v1, "opacity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 188
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#blendOptions"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->remove(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFillColor(Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;)V
    .locals 4

    .prologue
    .line 382
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeSolidColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#properties"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 387
    if-nez v0, :cond_1

    .line 388
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 390
    :try_start_0
    const-string/jumbo v1, "class"

    const-string/jumbo v2, "solidColorLayer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string/jumbo v1, "color"

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getPsdColorDictFromRGBColor(Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#properties"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    return-void

    .line 393
    :catch_0
    move-exception v1

    .line 395
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setFillColor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_1
    :try_start_1
    const-string/jumbo v1, "color"

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getPsdColorDictFromRGBColor(Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 402
    :catch_1
    move-exception v1

    .line 404
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setFillColor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setName(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setPixelLayerOrigin(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;)V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#pixelLayer"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 360
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getPixelLayerBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v1

    .line 363
    iput-object p1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    .line 365
    :try_start_0
    const-string/jumbo v2, "psd#bounds"

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getBoundsFromRect(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#pixelLayer"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    return-void

    .line 367
    :catch_0
    move-exception v1

    .line 369
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setPixelLayerOrigin"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPixelMaskDensity(F)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#pixelMask"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 294
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_0
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    float-to-double v2, p1

    cmpg-double v1, v2, v6

    if-lez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 298
    :cond_2
    float-to-double v2, p1

    cmpl-double v1, v2, v6

    if-nez v1, :cond_3

    .line 299
    const-string/jumbo v1, "density"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    return-void

    .line 302
    :cond_3
    :try_start_0
    const-string/jumbo v1, "density"

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 306
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setPixelMaskDensity"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPixelMaskEnabled(Z)V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#pixelMask"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 242
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 244
    :cond_0
    if-eqz p1, :cond_1

    .line 245
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    return-void

    .line 248
    :cond_1
    :try_start_0
    const-string/jumbo v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 252
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setPixelMaskEnabled"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPixelMaskFeather(F)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 321
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#pixelMask"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 322
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 324
    :cond_0
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    float-to-double v2, p1

    cmpl-double v1, v2, v6

    if-ltz v1, :cond_1

    float-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 326
    :cond_2
    float-to-double v2, p1

    cmpl-double v1, v2, v6

    if-nez v1, :cond_3

    .line 327
    const-string/jumbo v1, "feather"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    return-void

    .line 330
    :cond_3
    :try_start_0
    const-string/jumbo v1, "feather"

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 334
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setPixelMaskFeather"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPixelMaskLinked(Z)V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#pixelMask"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 268
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 270
    :cond_0
    if-eqz p1, :cond_1

    .line 271
    const-string/jumbo v1, "linked"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    return-void

    .line 274
    :cond_1
    :try_start_0
    const-string/jumbo v1, "linked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    .line 278
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setPixelMaskLinked"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPixelMaskOrigin(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;)V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#pixelMask"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 218
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getPixelMaskBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v1

    .line 221
    iput-object p1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    .line 223
    :try_start_0
    const-string/jumbo v2, "psd#bounds"

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getBoundsFromRect(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 227
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDMutableLayerNode.setPixelMaskOrigin"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const-string/jumbo v1, "psd#visible"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->remove(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->mutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "psd#visible"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
