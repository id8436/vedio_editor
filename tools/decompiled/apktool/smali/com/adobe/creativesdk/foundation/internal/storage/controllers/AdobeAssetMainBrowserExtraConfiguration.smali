.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;
.super Ljava/lang/Object;
.source "AdobeAssetMainBrowserExtraConfiguration.java"


# static fields
.field public static final SHOULD_SHOW_ONLY_ASSETS_KEY:Ljava/lang/String; = "SHOULD_SHOW_ONLY_ASSETS"

.field public static final SHOW_LIBRARY_ITEM_KEY:Ljava/lang/String; = "SHOW_LIBRARY_ITEM"

.field public static final START_WITH_COLLECTION_KEY:Ljava/lang/String; = "START_WITH_COLLECTION_KEY"


# instance fields
.field private shouldShowOnlyAssets:Z

.field private showLibraryItem:Z

.field private startWithCollection:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->shouldShowOnlyAssets:Z

    .line 17
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->showLibraryItem:Z

    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->startWithCollection:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->shouldShowOnlyAssets:Z

    .line 23
    iput-boolean p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->showLibraryItem:Z

    .line 24
    return-void
.end method


# virtual methods
.method public shouldShowOnlyAssets()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->shouldShowOnlyAssets:Z

    return v0
.end method

.method public showLibraryItem()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->showLibraryItem:Z

    return v0
.end method

.method public startWithCollection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->startWithCollection:Ljava/lang/String;

    return-object v0
.end method
