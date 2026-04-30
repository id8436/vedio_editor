.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;
.super Ljava/lang/Object;
.source "AdobePSDPreviewLayerComp.java"


# instance fields
.field private layerCompId:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;->name:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;->layerCompId:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDPreviewLayerComp.Constructor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLayerCompId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;->layerCompId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerComp;->name:Ljava/lang/String;

    return-object v0
.end method
