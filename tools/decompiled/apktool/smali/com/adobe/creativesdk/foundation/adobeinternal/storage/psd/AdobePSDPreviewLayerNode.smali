.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;
.super Ljava/lang/Object;
.source "AdobePSDPreviewLayerNode.java"


# instance fields
.field private _children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;",
            ">;"
        }
    .end annotation
.end field

.field private absoluteLayerIndex:I

.field private bounds:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

.field private color:Lorg/json/JSONObject;

.field private contentLayerClass:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

.field private layerId:I

.field private layerNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private pixelMask:Z

.field private pixelMaskEnabled:Z

.field private type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

.field private visible:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_5

    .line 48
    :try_start_0
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->_children:Ljava/util/ArrayList;

    .line 49
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->layerNodes:Ljava/util/ArrayList;

    .line 50
    const-string/jumbo v0, "layerName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->name:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "layerId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->layerId:I

    .line 52
    iput p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->absoluteLayerIndex:I

    .line 53
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypePixelsLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeContentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    if-ne v0, v1, :cond_0

    .line 71
    const-string/jumbo v0, "properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "class"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "solidColorLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 73
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassSolidColorFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->contentLayerClass:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    .line 82
    :cond_0
    :goto_1
    const-string/jumbo v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string/jumbo v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->visible:Z

    .line 84
    :cond_1
    const-string/jumbo v0, "hasPixelMask"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string/jumbo v0, "hasPixelMask"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->pixelMask:Z

    .line 86
    :cond_2
    const-string/jumbo v0, "pixelMaskEnabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    const-string/jumbo v0, "pixelMaskEnabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->pixelMaskEnabled:Z

    .line 88
    :cond_3
    const-string/jumbo v0, "bounds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    const-string/jumbo v0, "bounds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getRectFromPSDBounds(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->bounds:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    .line 90
    :cond_4
    const-string/jumbo v0, "properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    const-string/jumbo v0, "properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->color:Lorg/json/JSONObject;

    .line 99
    :cond_5
    :goto_2
    return-void

    .line 56
    :cond_6
    const-string/jumbo v1, "textLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 57
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeTextLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_2

    .line 58
    :cond_7
    const-string/jumbo v1, "layerSection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 59
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeLayerGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    goto/16 :goto_0

    .line 60
    :cond_8
    const-string/jumbo v1, "contentLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 61
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeContentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    goto/16 :goto_0

    .line 62
    :cond_9
    const-string/jumbo v1, "backgroundLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 63
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeBackgroundLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    goto/16 :goto_0

    .line 64
    :cond_a
    const-string/jumbo v1, "adjustmentLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeAdjustmentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    goto/16 :goto_0

    .line 67
    :cond_b
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    goto/16 :goto_0

    .line 74
    :cond_c
    const-string/jumbo v1, "gradientLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 75
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassGradientFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->contentLayerClass:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    goto/16 :goto_1

    .line 76
    :cond_d
    const-string/jumbo v1, "patternLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 77
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassPatternFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->contentLayerClass:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    goto/16 :goto_1

    .line 79
    :cond_e
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->contentLayerClass:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public getAbsoluteLayerIndex()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->absoluteLayerIndex:I

    return v0
.end method

.method public getBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->bounds:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->_children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getColor()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->color:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getContentLayerClass()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->contentLayerClass:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    return-object v0
.end method

.method public getLayerId()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->layerId:I

    return v0
.end method

.method public getLayerNodes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->layerNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    return-object v0
.end method

.method public hasPixelMask()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->pixelMask:Z

    return v0
.end method

.method public isPixelMaskEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->pixelMaskEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->visible:Z

    return v0
.end method

.method public solidColorFill()Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeContentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->contentLayerClass:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassSolidColorFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    if-eq v0, v1, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;->color:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->rgbColorFromPSDColorDict(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;

    move-result-object v0

    goto :goto_0
.end method
