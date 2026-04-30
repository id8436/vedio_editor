.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders;
.super Ljava/lang/Object;
.source "AdobeDesignLibraryItemsCellHolders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(JLandroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders;->calculateModifiedDate(JLandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static calculateModifiedDate(JLandroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 427
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAssetInfoUtil;->getModifiedDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
