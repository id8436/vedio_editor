.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypeFace;
.super Ljava/lang/Object;
.source "AdobeCSDKTypeFace.java"


# static fields
.field private static _csdkadobeCleanFont:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypeFace;->_csdkadobeCleanFont:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypeFace;->_csdkadobeCleanFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/AdobeClean-SemiLight.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypeFace;->_csdkadobeCleanFont:Landroid/graphics/Typeface;

    .line 46
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypeFace;->_csdkadobeCleanFont:Landroid/graphics/Typeface;

    return-object v0
.end method
