.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
.source "AdobeAssetLibraryItemColorTheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mood:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

.field private rule:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

.field private swatches:Lorg/json/JSONArray;

.field private tags:Lorg/json/JSONArray;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 96
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->tags:Lorg/json/JSONArray;

    .line 97
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->swatches:Lorg/json/JSONArray;

    .line 98
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->themeRuleForStringRule(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->rule:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    .line 99
    invoke-static {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->themeMoodForStringMood(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->mood:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    .line 100
    return-void
.end method

.method private static themeMoodForStringMood(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;
    .locals 2

    .prologue
    .line 188
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    if-nez v0, :cond_1

    .line 192
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;->AdobeAssetLibraryColorThemeMoodNotSet:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    .line 215
    :goto_1
    return-object v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_1
    const-string/jumbo v1, "colorful"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;->AdobeAssetLibraryColorThemeMoodColorful:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    goto :goto_1

    .line 198
    :cond_2
    const-string/jumbo v1, "bright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;->AdobeAssetLibraryColorThemeMoodBright:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    goto :goto_1

    .line 202
    :cond_3
    const-string/jumbo v1, "muted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;->AdobeAssetLibraryColorThemeMoodMuted:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    goto :goto_1

    .line 206
    :cond_4
    const-string/jumbo v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;->AdobeAssetLibraryColorThemeMoodDark:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    goto :goto_1

    .line 210
    :cond_5
    const-string/jumbo v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;->AdobeAssetLibraryColorThemeMoodCustom:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    goto :goto_1

    .line 215
    :cond_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;->AdobeAssetLibraryColorThemeMoodUnknown:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    goto :goto_1
.end method

.method private static themeRuleForStringRule(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;
    .locals 2

    .prologue
    .line 156
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    if-nez v0, :cond_1

    .line 160
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;->AdobeAssetLibraryColorThemeRuleNotSet:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    .line 183
    :goto_1
    return-object v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_1
    const-string/jumbo v1, "analogous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;->AdobeAssetLibraryColorThemeRuleAnalogous:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    goto :goto_1

    .line 166
    :cond_2
    const-string/jumbo v1, "complimentary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;->AdobeAssetLibraryColorThemeRuleComplimentary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    goto :goto_1

    .line 170
    :cond_3
    const-string/jumbo v1, "monochromatic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;->AdobeAssetLibraryColorThemeRuleMonochromatic:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    goto :goto_1

    .line 174
    :cond_4
    const-string/jumbo v1, "triad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;->AdobeAssetLibraryColorThemeRuleTriad:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    goto :goto_1

    .line 178
    :cond_5
    const-string/jumbo v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;->AdobeAssetLibraryColorThemeRuleCustom:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    goto :goto_1

    .line 183
    :cond_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;->AdobeAssetLibraryColorThemeRuleUnknown:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    goto :goto_1
.end method


# virtual methods
.method public getMood()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->mood:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    return-object v0
.end method

.method public getRGBColors()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->swatches:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 151
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->swatches:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v5

    .line 115
    :goto_1
    if-ge v4, v6, :cond_5

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->swatches:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 118
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    .line 119
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v3, v0

    .line 123
    :goto_2
    if-eqz v3, :cond_2

    .line 124
    const-string/jumbo v0, "value"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    if-nez v0, :cond_1

    .line 126
    const-string/jumbo v0, "values"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    :cond_1
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    .line 129
    check-cast v0, Lorg/json/JSONObject;

    .line 130
    const-string/jumbo v3, "r"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 131
    const-string/jumbo v7, "g"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 132
    const-string/jumbo v8, "b"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 133
    invoke-static {v3, v7, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_2
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 120
    :cond_3
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    .line 121
    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    goto :goto_2

    .line 135
    :cond_4
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    .line 136
    check-cast v0, Lorg/json/JSONArray;

    .line 137
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-int v3, v8

    .line 138
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 139
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 140
    invoke-static {v3, v7, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v0, v2

    .line 151
    goto/16 :goto_0

    :cond_6
    move-object v3, v1

    goto :goto_2
.end method

.method public getRule()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->rule:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    return-object v0
.end method

.method public getSwatches()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->swatches:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getTags()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->tags:Lorg/json/JSONArray;

    return-object v0
.end method

.method protected setMood(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->mood:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeMood;

    .line 77
    return-void
.end method

.method protected setRule(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->rule:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorThemeRule;

    .line 65
    return-void
.end method

.method protected setSwatches(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->swatches:Lorg/json/JSONArray;

    .line 89
    return-void
.end method

.method protected setTags(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;->tags:Lorg/json/JSONArray;

    .line 53
    return-void
.end method
