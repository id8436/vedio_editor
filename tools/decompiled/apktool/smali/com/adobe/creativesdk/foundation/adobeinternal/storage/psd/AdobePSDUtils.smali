.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;
.super Ljava/lang/Object;
.source "AdobePSDUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundsFromRect(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    const-string/jumbo v1, "left"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;->x:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v1, "top"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;->y:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "right"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;->x:F

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->size:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    iget v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->width:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v1, "bottom"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;->y:F

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->size:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    iget v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->height:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPsdColorDictFromRGBColor(Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    const-string/jumbo v1, "red"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->getRed()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v1, "green"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->getGreen()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v1, "blue"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->getBlue()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-object v0
.end method

.method public static getRectFromPSDBounds(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/json/JSONObject;

    if-ne v0, v1, :cond_1

    .line 33
    check-cast p0, Lorg/json/JSONObject;

    .line 34
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>(FFFF)V

    .line 49
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string/jumbo v0, "left"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v1, v0

    .line 39
    const-string/jumbo v0, "top"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 40
    const-string/jumbo v0, "right"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float v3, v0, v1

    .line 41
    const-string/jumbo v0, "bottom"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float v4, v0, v2

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>(FFFF)V

    goto :goto_0

    .line 45
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 46
    check-cast p0, Ljava/util/Map;

    .line 47
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getRectFromPSDBounds(Ljava/util/Map;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRectFromPSDBounds(Ljava/util/Map;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 71
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>()V

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string/jumbo v0, "left"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 75
    const-string/jumbo v0, "top"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 76
    const-string/jumbo v0, "right"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v3, v0, v1

    .line 77
    const-string/jumbo v0, "bottom"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v4, v0, v2

    .line 79
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>(FFFF)V

    goto :goto_0
.end method

.method public static getRgbColorFromPSDColorDict(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0xff

    .line 84
    :try_start_0
    const-string/jumbo v0, "red"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 85
    const-string/jumbo v0, "green"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    const-string/jumbo v1, "blue"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 88
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v3

    .line 100
    :goto_0
    return-object v0

    .line 92
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v5, :cond_3

    :cond_2
    move-object v0, v3

    .line 93
    goto :goto_0

    .line 96
    :cond_3
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;

    invoke-direct {v2, v4, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 100
    goto :goto_0
.end method

.method public static rgbColorFromPSDColorDict(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;
    .locals 4

    .prologue
    .line 117
    :try_start_0
    check-cast p0, Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v0, "red"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    const-string/jumbo v1, "green"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 120
    const-string/jumbo v2, "blue"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 121
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;

    invoke-direct {v3, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 125
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method
