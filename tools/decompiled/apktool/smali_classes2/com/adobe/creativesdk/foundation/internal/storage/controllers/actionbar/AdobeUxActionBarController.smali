.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;
.super Ljava/lang/Object;
.source "AdobeUxActionBarController.java"


# static fields
.field private static _sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;


# instance fields
.field private analyticsInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->analyticsInfo:Ljava/util/Map;

    return-void
.end method

.method private addAnalyticsInfoForBrowser(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->mContext:Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->mContext:Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_csdk_mylibraries:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string/jumbo v2, "library"

    .line 69
    const-string/jumbo v0, "mobile.ccmobile.viewLibraries"

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->analyticsInfo:Ljava/util/Map;

    const-string/jumbo v4, "type"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->analyticsInfo:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->mContext:Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_csdk_myassets_main:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    const-string/jumbo v2, "assets"

    .line 72
    const-string/jumbo v0, "mobile.ccmobile.viewMyAssets"

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    return-object v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->mContext:Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;

    .line 48
    return-void
.end method

.method public static resetIfSameInstance(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    if-eq v0, p0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->resetInstance()V

    goto :goto_0
.end method

.method private static resetInstance()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->reset()V

    .line 54
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    .line 55
    return-void
.end method

.method public static setInstance(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    if-eq v0, p0, :cond_0

    .line 32
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->resetInstance()V

    .line 34
    :cond_0
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    .line 35
    return-void
.end method

.method public static setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->mContext:Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->mContext:Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTypeface(Landroid/view/View;Landroid/graphics/Typeface;)V

    .line 86
    return-void
.end method

.method public setUpActionBar(Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->mContext:Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;

    .line 59
    return-void
.end method
