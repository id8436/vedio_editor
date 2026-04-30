.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;
.super Ljava/lang/Object;
.source "AdobeAssetViewUtils.java"


# instance fields
.field public lastFirstItemTop:I

.field public lastFirstVisibleItem:I

.field public lastScrollTop:I

.field scrollDirection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstVisibleItem:I

    .line 108
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstItemTop:I

    .line 109
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_UNKNOWN:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->scrollDirection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    .line 111
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastScrollTop:I

    return-void
.end method
