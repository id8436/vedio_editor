.class public Lcom/adobe/premiereclip/editor/ImpactDataStorage;
.super Ljava/lang/Object;
.source "ImpactDataStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public readImpactDataFromJsonFile(Lcom/adobe/premiereclip/project/sequence/AudioClip;Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v1, "impact"

    invoke-static {v0, v1, p2}, Lcom/adobe/premiereclip/util/JsonReader;->readDataFromJSONFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;)V

    .line 47
    :cond_0
    return-void
.end method

.method public writeImpactDataToJsonFile([FLcom/adobe/premiereclip/project/sequence/AudioClip;Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v1, "impact"

    invoke-static {p1, v0, v1, p3}, Lcom/adobe/premiereclip/util/JsonWriter;->writeDataToJsonFile([FLjava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;)V

    .line 54
    :cond_0
    return-void
.end method
