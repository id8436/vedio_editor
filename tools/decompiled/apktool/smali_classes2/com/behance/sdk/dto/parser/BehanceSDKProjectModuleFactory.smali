.class public Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;
.super Ljava/lang/Object;
.source "BehanceSDKProjectModuleFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAudioModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;-><init>()V

    .line 100
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->setId(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "embed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->setEmbedHTML(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "src"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->setSrcURL(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "alignment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->setAlignment(Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method private static getEditAudioModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;

    invoke-direct {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;-><init>()V

    .line 109
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;->setId(I)V

    .line 110
    const-string/jumbo v1, "embed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;->setHtml(Ljava/lang/String;)V

    .line 112
    return-object v0
.end method

.method private static getEditCollectionModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 213
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;-><init>()V

    .line 214
    const-string/jumbo v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->setId(I)V

    .line 215
    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->setModuleTypeString(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v2, "collection_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->setCollectionType(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v2, "sort_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->setSortType(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v2, "components"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->setComponents(Lorg/json/JSONArray;)V

    .line 219
    const-string/jumbo v2, "full_bleed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->setFullBleed(Z)V

    .line 220
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->setCaption(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v0, "caption_alignment"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->setCaptionAlignment(Ljava/lang/String;)V

    .line 222
    return-object v1

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEditEmbedModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 153
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;-><init>()V

    .line 154
    const-string/jumbo v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setId(I)V

    .line 155
    const-string/jumbo v2, "embed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setHtml(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v2, "full_bleed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setFullBleed(Z)V

    .line 157
    const-string/jumbo v0, "alignment"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setEmbedAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    .line 158
    const-string/jumbo v0, "width_unit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setWidthUnit(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "original_width"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setOriginalWidth(I)V

    .line 160
    const-string/jumbo v0, "original_height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setOriginalHeight(I)V

    .line 161
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setCaption(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "caption_alignment"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->setCaptionAlignment(Ljava/lang/String;)V

    .line 163
    return-object v1

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEditImageModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 193
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;-><init>()V

    .line 194
    const-string/jumbo v2, "dimensions"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_0

    const-string/jumbo v3, "disp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 196
    const-string/jumbo v3, "disp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 197
    const-string/jumbo v3, "height"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setHeight(I)V

    .line 198
    const-string/jumbo v3, "width"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setWidth(I)V

    .line 203
    :goto_0
    const-string/jumbo v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setId(I)V

    .line 204
    const-string/jumbo v2, "sizes"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "disp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setDisp(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v2, "sizes"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "original"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setSrc(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, "full_bleed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setFullBleed(Z)V

    .line 207
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setCaption(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v0, "caption_alignment"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setCaptionAlignment(Ljava/lang/String;)V

    .line 209
    return-object v1

    .line 200
    :cond_0
    const-string/jumbo v2, "height"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setHeight(I)V

    .line 201
    const-string/jumbo v2, "width"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setWidth(I)V

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getEditProjectModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_0

    .line 65
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getEditImageModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 66
    :cond_0
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->EMBED:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_1

    .line 67
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getEditEmbedModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_2

    .line 69
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getEditVideoModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->TEXT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_3

    .line 71
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getEditTextModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_3
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->AUDIO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_4

    .line 73
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getEditAudioModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_4
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->MEDIA_COLLECTION:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_5

    .line 75
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getEditCollectionModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEditTextModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-direct {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;-><init>()V

    .line 92
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->setId(I)V

    .line 93
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->setHtml(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "alignment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->setTextAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    .line 95
    return-object v0
.end method

.method private static getEditVideoModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-direct {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;-><init>()V

    .line 131
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setId(I)V

    .line 132
    const-string/jumbo v1, "embed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setHtml(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setHeight(I)V

    .line 134
    const-string/jumbo v1, "width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setWidth(I)V

    .line 135
    const-string/jumbo v1, "src"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setPath(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "caption"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setCaption(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, "caption_alignment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setCaptionAlignment(Ljava/lang/String;)V

    .line 138
    return-object v0
.end method

.method private static getEmbedModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;-><init>()V

    .line 143
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->setId(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "embed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->setEmbedHTML(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "alignment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->setAlignment(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "caption"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->setCaptionFormattedText(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "caption_plain"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->setCaptionPlainText(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "caption_alignment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->setCaptionAlignment(Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method private static getImageModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 167
    new-instance v1, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;-><init>()V

    .line 168
    const-string/jumbo v2, "dimensions"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_1

    const-string/jumbo v3, "disp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 170
    const-string/jumbo v3, "disp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 171
    const-string/jumbo v3, "height"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setHeight(I)V

    .line 172
    const-string/jumbo v3, "width"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setWidth(I)V

    .line 177
    :goto_0
    const-string/jumbo v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setId(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v2, "src"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setSrcUrl(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v2, "full_bleed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setFullBleed(Z)V

    .line 180
    const-string/jumbo v0, "sizes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 182
    check-cast v0, Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v2, "max_1240"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setHDSrcUrl(Ljava/lang/String;)V

    .line 185
    :cond_0
    const-string/jumbo v0, "alignment"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setAlignment(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setCaptionFormattedText(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "caption_plain"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setCaptionPlainText(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "caption_alignment"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setCaptionAlignment(Ljava/lang/String;)V

    .line 189
    return-object v1

    .line 174
    :cond_1
    const-string/jumbo v2, "height"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setHeight(I)V

    .line 175
    const-string/jumbo v2, "width"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setWidth(I)V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getProjectModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_0

    .line 47
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getImageModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 48
    :cond_0
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->EMBED:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_1

    .line 49
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getEmbedModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_2

    .line 51
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getVideoModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_2
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->TEXT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_3

    .line 53
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getTextModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_3
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->AUDIO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    if-ne v0, v1, :cond_4

    .line 55
    invoke-static {p0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getAudioModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTextModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;-><init>()V

    .line 83
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->setId(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->setFormattedText(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "text_plain"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->setPlainText(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "alignment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->setAlignment(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method private static getVideoModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;-><init>()V

    .line 117
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setId(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "embed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setEmbedHTML(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setHeight(I)V

    .line 120
    const-string/jumbo v1, "width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setWidth(I)V

    .line 121
    const-string/jumbo v1, "image_src"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setImageSrc(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v1, "player_skin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setPlayerSkin(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "player"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setPlayerUrl(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "src"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setVideoSrc(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "alignment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setAlignment(Ljava/lang/String;)V

    .line 126
    return-object v0
.end method
