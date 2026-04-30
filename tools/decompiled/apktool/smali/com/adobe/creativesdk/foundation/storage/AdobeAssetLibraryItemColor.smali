.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
.source "AdobeAssetLibraryItemColor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private colorAlpha:Ljava/lang/Number;

.field private colorComponents:Ljava/lang/Object;

.field private colorMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

.field private colorProfileName:Ljava/lang/String;

.field private colorType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

.field private renditionAlpha:Ljava/lang/Number;

.field private renditionComponents:Ljava/lang/Object;

.field private renditionMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

.field private renditionProfileName:Ljava/lang/String;

.field private renditionType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p13}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 140
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorTypeForStringType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

    .line 141
    invoke-static {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorModeForStringMode(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    .line 142
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorComponents:Ljava/lang/Object;

    .line 143
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorAlpha:Ljava/lang/Number;

    .line 144
    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorProfileName:Ljava/lang/String;

    .line 146
    invoke-static {p8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorTypeForStringType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

    .line 147
    invoke-static {p9}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorModeForStringMode(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    .line 148
    iput-object p10, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionComponents:Ljava/lang/Object;

    .line 149
    iput-object p11, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionAlpha:Ljava/lang/Number;

    .line 150
    iput-object p12, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionProfileName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method static colorModeForStringMode(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;
    .locals 2

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 280
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string/jumbo v1, "rgb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;->AdobeAssetLibraryColorModeRGB:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    goto :goto_0

    .line 263
    :cond_1
    const-string/jumbo v1, "cmyk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;->AdobeAssetLibraryColorModeCMYK:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    goto :goto_0

    .line 267
    :cond_2
    const-string/jumbo v1, "lab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;->AdobeAssetLibraryColorModeLab:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    goto :goto_0

    .line 271
    :cond_3
    const-string/jumbo v1, "hsb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 273
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;->AdobeAssetLibraryColorModeHSB:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    goto :goto_0

    .line 275
    :cond_4
    const-string/jumbo v1, "gray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;->AdobeAssetLibraryColorModeGray:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    goto :goto_0

    .line 280
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;->AdobeAssetLibraryColorModeUnknown:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    goto :goto_0
.end method

.method static colorTypeForStringType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;
    .locals 2

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string/jumbo v1, "spot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;->AdobeAssetLibraryColorTypeSpot:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

    goto :goto_0

    .line 249
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;->AdobeAssetLibraryColorTypeProcess:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

    goto :goto_0
.end method

.method private grayHex()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorComponents:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 357
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 359
    const-string/jumbo v1, "#%02X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hex()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 312
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor$1;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetLibraryColorMode:[I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    return-object v0

    .line 315
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->rgbHex()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :pswitch_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->grayHex()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :pswitch_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->hsbHex()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hsbHex()Ljava/lang/String;
    .locals 6

    .prologue
    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorComponents:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 345
    const-string/jumbo v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 346
    const-string/jumbo v2, "s"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 347
    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 350
    const-string/jumbo v3, "#%02X%02X%02X"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private renditionHex()Ljava/lang/String;
    .locals 6

    .prologue
    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionComponents:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 365
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 366
    const-string/jumbo v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 367
    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    const-string/jumbo v3, "#%02X%02X%02X"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rgbHex()Ljava/lang/String;
    .locals 6

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorComponents:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 334
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 335
    const-string/jumbo v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 336
    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 339
    const-string/jumbo v3, "#%02X%02X%02X"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public color()I
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, -0x1

    .line 181
    :goto_0
    return v0

    .line 166
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor$1;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetLibraryColorMode:[I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 181
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->rgbRenditionColor()I

    move-result v0

    goto :goto_0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->rgbColor()I

    move-result v0

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->rgbRenditionColor()I

    move-result v0

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->grayColor()I

    move-result v0

    goto :goto_0

    .line 175
    :pswitch_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->hsbColor()I

    move-result v0

    goto :goto_0

    .line 177
    :pswitch_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->rgbRenditionColor()I

    move-result v0

    goto :goto_0

    .line 179
    :pswitch_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->rgbRenditionColor()I

    move-result v0

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public colorNameOrHexValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->name:Ljava/lang/String;

    .line 304
    :cond_0
    :goto_0
    return-object v0

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->hex()Ljava/lang/String;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionHex()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColorAlpha()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorAlpha:Ljava/lang/Number;

    return-object v0
.end method

.method public getColorComponents()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorComponents:Ljava/lang/Object;

    return-object v0
.end method

.method public getColorMode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    return-object v0
.end method

.method public getColorProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getColorType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

    return-object v0
.end method

.method public getRenditionAlpha()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionAlpha:Ljava/lang/Number;

    return-object v0
.end method

.method public getRenditionComponents()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionComponents:Ljava/lang/Object;

    return-object v0
.end method

.method public getRenditionMode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionMode:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorMode;

    return-object v0
.end method

.method public getRenditionProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRenditionType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryColorType;

    return-object v0
.end method

.method grayColor()I
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorComponents:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sub-double v0, v2, v0

    div-double/2addr v0, v2

    .line 215
    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    .line 216
    double-to-int v0, v0

    .line 217
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 218
    return v0
.end method

.method hsbColor()I
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorComponents:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 199
    const-string/jumbo v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 200
    const-string/jumbo v2, "s"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    .line 201
    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 203
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    .line 204
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 206
    return v0
.end method

.method rgbColor()I
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->colorComponents:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 189
    const-string/jumbo v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 190
    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 192
    const/16 v3, 0xff

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method rgbRenditionColor()I
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionComponents:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->renditionComponents:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 227
    const-string/jumbo v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 228
    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 230
    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
