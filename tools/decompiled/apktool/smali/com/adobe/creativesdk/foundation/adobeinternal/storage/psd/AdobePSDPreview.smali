.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;
.super Ljava/lang/Object;
.source "AdobePSDPreview.java"


# instance fields
.field appliedLayerComponentId:I

.field bounds:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

.field private layerComps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;",
            ">;"
        }
    .end annotation
.end field

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

.field name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->name:Ljava/lang/String;

    .line 39
    if-eqz p1, :cond_2

    .line 43
    :try_start_0
    const-string/jumbo v1, "imgdata"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "bounds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getRectFromPSDBounds(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->bounds:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    .line 44
    const-string/jumbo v1, "imgdata"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "appliedLayerCompId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->appliedLayerComponentId:I

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const-string/jumbo v1, "layerComps"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    .line 48
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 50
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 51
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;

    invoke-direct {v5, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->layerComps:Ljava/util/ArrayList;

    .line 55
    const-string/jumbo v1, "children"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v0

    .line 57
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 58
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->recursivelyAddLayerNodeFromDict(Lorg/json/JSONObject;ILjava/util/ArrayList;)I

    move-result v1

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_1
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->layerNodes:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_2
    :goto_2
    return-void

    .line 61
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static psdPreviewFromFile(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 87
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :goto_1
    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;

    invoke-direct {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    .line 95
    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    .line 91
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private recursivelyAddLayerNodeFromDict(Lorg/json/JSONObject;ILjava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 128
    add-int/lit8 v2, p2, 0x1

    .line 129
    const/4 v1, 0x0

    .line 131
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "layerSection"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string/jumbo v0, "children"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v1, 0x0

    move v5, v1

    move v1, v2

    move v2, v5

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 135
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->recursivelyAddLayerNodeFromDict(Lorg/json/JSONObject;ILjava/util/ArrayList;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 134
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move v1, v2

    move-object v2, v5

    .line 140
    :goto_1
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobePSDPreview.recursivelyAddLayerNodeFromDict"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_2
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;

    invoke-direct {v2, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNode;-><init>(Lorg/json/JSONObject;ILjava/util/ArrayList;)V

    .line 143
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return v1

    .line 138
    :catch_1
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public getAppliedLayerComponentId()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->appliedLayerComponentId:I

    return v0
.end method

.method public getBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->bounds:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    return-object v0
.end method

.method public getLayerComps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->layerComps:Ljava/util/ArrayList;

    return-object v0
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
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->layerNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;->name:Ljava/lang/String;

    return-object v0
.end method
