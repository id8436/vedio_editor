.class public Lcom/adobe/utility/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# static fields
.field private static mInstance:Lcom/adobe/utility/FontUtils;


# instance fields
.field private adobeCleanLight:Lcom/h/a/a;

.field private adobeCleanNormalTypeface:Landroid/graphics/Typeface;

.field private adobeCleanRegular:Lcom/h/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/utility/FontUtils;->mInstance:Lcom/adobe/utility/FontUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/adobe/utility/FontUtils;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/adobe/utility/FontUtils;->mInstance:Lcom/adobe/utility/FontUtils;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/adobe/utility/FontUtils;

    invoke-direct {v0}, Lcom/adobe/utility/FontUtils;-><init>()V

    sput-object v0, Lcom/adobe/utility/FontUtils;->mInstance:Lcom/adobe/utility/FontUtils;

    .line 23
    :cond_0
    sget-object v0, Lcom/adobe/utility/FontUtils;->mInstance:Lcom/adobe/utility/FontUtils;

    return-object v0
.end method


# virtual methods
.method public getAdobeCleanLightTypefaceCollection()Lcom/h/a/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/utility/FontUtils;->adobeCleanLight:Lcom/h/a/a;

    return-object v0
.end method

.method public getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/utility/FontUtils;->adobeCleanRegular:Lcom/h/a/a;

    return-object v0
.end method

.method public getAdobeCleanTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/utility/FontUtils;->adobeCleanNormalTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public initializeTypefaceCollections(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/AdobeClean-Light.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/utility/FontUtils;->adobeCleanNormalTypeface:Landroid/graphics/Typeface;

    .line 29
    new-instance v0, Lcom/h/a/c;

    invoke-direct {v0}, Lcom/h/a/c;-><init>()V

    iget-object v1, p0, Lcom/adobe/utility/FontUtils;->adobeCleanNormalTypeface:Landroid/graphics/Typeface;

    .line 30
    invoke-virtual {v0, v4, v1}, Lcom/h/a/c;->a(ILandroid/graphics/Typeface;)Lcom/h/a/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "fonts/AdobeClean-Bold.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/h/a/c;->a(ILandroid/graphics/Typeface;)Lcom/h/a/c;

    move-result-object v0

    const/4 v1, 0x2

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "fonts/AdobeClean-Italic.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/h/a/c;->a(ILandroid/graphics/Typeface;)Lcom/h/a/c;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/h/a/c;->a()Lcom/h/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/utility/FontUtils;->adobeCleanLight:Lcom/h/a/a;

    .line 38
    new-instance v0, Lcom/h/a/c;

    invoke-direct {v0}, Lcom/h/a/c;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/AdobeClean-Regular.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v4, v1}, Lcom/h/a/c;->a(ILandroid/graphics/Typeface;)Lcom/h/a/c;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/h/a/c;->a()Lcom/h/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/utility/FontUtils;->adobeCleanRegular:Lcom/h/a/a;

    .line 42
    return-void
.end method
