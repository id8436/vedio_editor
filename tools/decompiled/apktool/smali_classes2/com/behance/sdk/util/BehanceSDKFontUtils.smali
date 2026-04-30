.class public Lcom/behance/sdk/util/BehanceSDKFontUtils;
.super Ljava/lang/Object;
.source "BehanceSDKFontUtils.java"


# static fields
.field private static final RAW:Ljava/lang/String; = ".raw"

.field private static final TMP:Ljava/lang/String; = "/tmp_"

.field private static fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;",
            "Ljava/util/Map",
            "<",
            "Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontFromRes(Landroid/content/Context;IZ)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/tmp_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".raw"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    if-eqz v1, :cond_0

    .line 123
    :try_start_1
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->logger:Lcom/behance/sdk/logger/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found cached font:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " at location "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_1
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 160
    :goto_2
    return-object v0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils;->logger:Lcom/behance/sdk/logger/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not cached at location "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Exception while closing the inputstream "

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v1, v2, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    .line 140
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 141
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    :goto_4
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 145
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 148
    :catch_2
    move-exception v1

    .line 149
    sget-object v2, Lcom/behance/sdk/util/BehanceSDKFontUtils;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Error reading in font!"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 135
    :catch_3
    move-exception v1

    .line 136
    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils;->logger:Lcom/behance/sdk/logger/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not find font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " in resources!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_3

    .line 147
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 153
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 155
    if-eqz p2, :cond_2

    .line 157
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 159
    :cond_2
    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Successfully loaded font."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private static initializeFonts(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/adobeclean_regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->REGULAR:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/adobeclean_bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 70
    sget-object v2, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->BOLD:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/adobeclean_light.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 72
    sget-object v2, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->LIGHT:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    sget-object v2, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method private static processsViewGroup(Landroid/view/ViewGroup;ILcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 79
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 80
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 81
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2, p3}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/widget/TextView;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    .line 78
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 83
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p2, p3}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/view/ViewGroup;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    goto :goto_1

    .line 86
    :cond_2
    return-void
.end method

.method public static setAdobeCleanFont(Landroid/content/Context;Landroid/text/TextPaint;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->BOLD:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->BOLD:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-static {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/content/Context;Landroid/text/TextPaint;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    .line 184
    :goto_0
    return-void

    .line 178
    :cond_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->REGULAR:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->REGULAR:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-static {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/content/Context;Landroid/text/TextPaint;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    goto :goto_0

    .line 180
    :cond_1
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->LIGHT:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->LIGHT:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-static {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/content/Context;Landroid/text/TextPaint;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    goto :goto_0

    .line 183
    :cond_2
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->LIGHT:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-static {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/content/Context;Landroid/text/TextPaint;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    goto :goto_0
.end method

.method public static setAdobeCleanFont(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->BOLD:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->BOLD:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-static {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/content/Context;Landroid/view/View;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->REGULAR:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->REGULAR:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-static {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/content/Context;Landroid/view/View;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    goto :goto_0

    .line 169
    :cond_1
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->LIGHT:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->LIGHT:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-static {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/content/Context;Landroid/view/View;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;->ADOBE_CLEAN:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;

    sget-object v1, Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;->LIGHT:Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;

    invoke-static {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/content/Context;Landroid/view/View;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    goto :goto_0
.end method

.method private static setCustomFont(Landroid/content/Context;Landroid/text/TextPaint;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->initializeFonts(Landroid/content/Context;)V

    .line 55
    :cond_1
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 56
    if-eqz v0, :cond_2

    .line 57
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 58
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    :cond_2
    return-void
.end method

.method private static setCustomFont(Landroid/content/Context;Landroid/view/View;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->initializeFonts(Landroid/content/Context;)V

    .line 44
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 45
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/view/ViewGroup;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    .line 49
    :cond_2
    :goto_0
    return-void

    .line 46
    :cond_3
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 47
    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2, p3}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setCustomFont(Landroid/widget/TextView;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    goto :goto_0
.end method

.method private static setCustomFont(Landroid/view/ViewGroup;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 104
    invoke-static {p0, v0, p1, p2}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->processsViewGroup(Landroid/view/ViewGroup;ILcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V

    .line 105
    return-void
.end method

.method private static setCustomFont(Landroid/widget/TextView;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKCustomFonts;Lcom/behance/sdk/util/BehanceSDKFontUtils$BehanceSDKFontStyles;)V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKFontUtils;->fonts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    :cond_0
    return-void
.end method
