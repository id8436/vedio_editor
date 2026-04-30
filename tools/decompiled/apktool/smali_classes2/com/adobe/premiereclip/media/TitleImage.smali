.class public Lcom/adobe/premiereclip/media/TitleImage;
.super Ljava/lang/Object;
.source "TitleImage.java"


# static fields
.field public static final DEFAULT_BACKGROUND_COLOR:Ljava/lang/String; = "#000000"

.field public static final DEFAULT_TEXT_COLOR:Ljava/lang/String; = "#ffffff"

.field public static final DEFAULT_TITLE_TEXT:Ljava/lang/String;

.field public static final HEIGHT:I = 0x438

.field private static SCALE:F = 0.0f

.field private static final STORAGE_DIRECTORY:Ljava/lang/String;

.field public static final WIDTH:I = 0x780


# instance fields
.field private adobeId:Ljava/lang/String;

.field private assetId:Ljava/lang/String;

.field private backgroundColor:Ljava/lang/String;

.field private filepath:Ljava/lang/String;

.field private lineHeightTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private projectId:Ljava/lang/String;

.field private textColor:Ljava/lang/String;

.field private titleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/media/TitleImage;->DEFAULT_TITLE_TEXT:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v0, Lcom/adobe/premiereclip/media/TitleImage;->STORAGE_DIRECTORY:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/adobe/premiereclip/media/TitleImage;->SCALE:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p3, :cond_0

    sget-object p3, Lcom/adobe/premiereclip/media/TitleImage;->DEFAULT_TITLE_TEXT:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, Lcom/adobe/premiereclip/media/TitleImage;->titleText:Ljava/lang/String;

    .line 68
    if-nez p4, :cond_1

    const-string/jumbo p4, "#ffffff"

    :cond_1
    iput-object p4, p0, Lcom/adobe/premiereclip/media/TitleImage;->textColor:Ljava/lang/String;

    .line 69
    if-nez p5, :cond_2

    const-string/jumbo p5, "#000000"

    :cond_2
    iput-object p5, p0, Lcom/adobe/premiereclip/media/TitleImage;->backgroundColor:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->adobeId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/adobe/premiereclip/media/TitleImage;->projectId:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/adobe/premiereclip/media/TitleImage;->assetId:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/adobe/premiereclip/media/TitleImage;->constructLineHeightTable()V

    .line 76
    invoke-virtual {p0}, Lcom/adobe/premiereclip/media/TitleImage;->update()V

    .line 77
    return-void
.end method

.method private calcFontSize(Ljava/util/ArrayList;II)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 227
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 228
    invoke-direct {p0, v7, p3}, Lcom/adobe/premiereclip/media/TitleImage;->calcFontSizeFromLineCount(II)I

    move-result v0

    .line 229
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 230
    int-to-float v1, v0

    sget v2, Lcom/adobe/premiereclip/media/TitleImage;->SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move v3, v5

    move v6, v7

    move v8, v0

    .line 232
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/media/TitleImage;->wrapLine(Ljava/util/ArrayList;IILandroid/graphics/Paint;Z)I

    move-result v1

    .line 234
    add-int v0, v6, v1

    add-int/lit8 v0, v0, -0x1

    .line 235
    if-le v1, v9, :cond_2

    invoke-direct {p0, v0, p3}, Lcom/adobe/premiereclip/media/TitleImage;->calcFontSizeFromLineCount(II)I

    move-result v1

    if-le v8, v1, :cond_2

    .line 236
    add-int/lit8 v8, v8, -0x1

    .line 237
    int-to-float v0, v8

    sget v1, Lcom/adobe/premiereclip/media/TitleImage;->SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 238
    const/4 v3, -0x1

    move v0, v7

    move v1, v8

    .line 232
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 242
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v9

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/media/TitleImage;->wrapLine(Ljava/util/ArrayList;IILandroid/graphics/Paint;Z)I

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 245
    :cond_1
    return v8

    :cond_2
    move v1, v8

    goto :goto_1
.end method

.method private calcFontSizeFromLineCount(II)I
    .locals 3

    .prologue
    .line 153
    div-int v2, p2, p1

    .line 154
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->lineHeightTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->lineHeightTable:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 156
    add-int/lit8 v0, v1, 0x1

    .line 159
    :goto_1
    return v0

    .line 154
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private constructLineHeightTable()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->lineHeightTable:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 139
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 140
    const-string/jumbo v3, "Ajy"

    .line 141
    :goto_0
    const/16 v4, 0x18

    if-gt v0, v4, :cond_0

    .line 142
    int-to-float v4, v0

    sget v5, Lcom/adobe/premiereclip/media/TitleImage;->SCALE:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 145
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 146
    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 147
    iget-object v5, p0, Lcom/adobe/premiereclip/media/TitleImage;->lineHeightTable:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string/jumbo v5, "Title Image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private drawBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 249
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 250
    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 254
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->titleText:Ljava/lang/String;

    const-string/jumbo v4, "\n"

    const/16 v5, 0x3e7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit16 v0, v0, -0x1a0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x50

    invoke-direct {p0, v1, v0, v4}, Lcom/adobe/premiereclip/media/TitleImage;->calcFontSize(Ljava/util/ArrayList;II)I

    move-result v4

    .line 260
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->lineHeightTable:Ljava/util/ArrayList;

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 262
    new-instance v6, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 263
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 264
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    int-to-float v0, v4

    sget v4, Lcom/adobe/premiereclip/media/TitleImage;->SCALE:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 271
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/2addr v7, v5

    sub-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    .line 273
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    mul-int/lit8 v8, v5, 0x5

    div-int/lit8 v8, v8, 0x6

    add-int/2addr v8, v1

    .line 275
    int-to-float v9, v4

    int-to-float v8, v8

    invoke-virtual {v3, v0, v9, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    add-int v0, v1, v5

    move v1, v0

    .line 277
    goto :goto_0

    .line 279
    :cond_0
    return-object v2
.end method

.method private wrapLine(Ljava/util/ArrayList;IILandroid/graphics/Paint;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/graphics/Paint;",
            "Z)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 163
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 166
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 168
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move v3, v4

    move v5, v2

    .line 175
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 176
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v0, v5, v1, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 177
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v1, p2, :cond_4

    .line 178
    if-eq v3, v4, :cond_2

    .line 179
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v1, v4

    .line 175
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    move v3, v1

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_4
    if-le v3, v5, :cond_b

    .line 183
    invoke-virtual {p4, v0, v5, v3, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 184
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v1, p2, :cond_3

    .line 185
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 194
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v5

    goto :goto_3

    .line 197
    :cond_5
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_9

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v0, v5, v1, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 199
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v1, p2, :cond_8

    .line 200
    if-eq v3, v4, :cond_6

    .line 201
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v3, v4

    .line 203
    goto :goto_5

    .line 205
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_6
    if-le v1, v5, :cond_5

    .line 206
    invoke-virtual {p4, v0, v5, v1, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 207
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p2, :cond_7

    .line 208
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    .line 210
    goto :goto_5

    .line 205
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 215
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 220
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    invoke-virtual {p1, p3, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 223
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_b
    move v3, v5

    goto/16 :goto_2
.end method


# virtual methods
.method public copy()Lcom/adobe/premiereclip/media/TitleImage;
    .locals 6

    .prologue
    .line 80
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v0, Lcom/adobe/premiereclip/media/TitleImage;

    iget-object v2, p0, Lcom/adobe/premiereclip/media/TitleImage;->projectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/media/TitleImage;->titleText:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/media/TitleImage;->textColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/premiereclip/media/TitleImage;->backgroundColor:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/media/TitleImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Lcom/adobe/premiereclip/media/ClipAsset;

    invoke-direct {v0}, Lcom/adobe/premiereclip/media/ClipAsset;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->assetId:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "title"

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->assetType:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->originalPath:Ljava/lang/String;

    .line 126
    new-instance v1, Ljava/util/Date;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->originalAssetDate:Ljava/lang/String;

    .line 127
    const/16 v1, 0x780

    iput v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->width:I

    .line 128
    const/16 v1, 0x438

    iput v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->height:I

    .line 129
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 130
    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->titleText:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->titleText:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->textColor:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->textColor:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->backgroundColor:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->backgroundColor:Ljava/lang/String;

    .line 133
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public makeFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/premiereclip/media/TitleImage;->STORAGE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "appSavedItems"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Projects"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "v01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->adobeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "TI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/adobe/premiereclip/media/TitleImage;->backgroundColor:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/premiereclip/media/TitleImage;->textColor:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adobe/premiereclip/media/TitleImage;->titleText:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 284
    invoke-direct {p0}, Lcom/adobe/premiereclip/media/TitleImage;->drawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 286
    const-string/jumbo v3, "TitleImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "draw bitmap time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v0, v4, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/FileOps;->delete(Ljava/lang/String;)Z

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/media/TitleImage;->makeFilePath()Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/adobe/premiereclip/media/TitleImage;->filepath:Ljava/lang/String;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-static {v2, v0, v1, v3}, Lcom/adobe/premiereclip/util/FileOps;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 296
    const-string/jumbo v3, "TitleImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saving to disk time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v0, v4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 300
    return-void
.end method
