.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandData;
.source "AdobeAssetViewListViewScrollDirectionChange.java"


# instance fields
.field private newScrollDirection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

.field private offsetChange:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandData;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;->offsetChange:I

    return-void
.end method


# virtual methods
.method public getNewScrollDirection()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;->newScrollDirection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    return-object v0
.end method

.method public getOffsetChange()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;->offsetChange:I

    return v0
.end method

.method public setNewScrollDirection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;->newScrollDirection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    .line 30
    return-void
.end method

.method public setOffsetChange(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;->offsetChange:I

    .line 38
    return-void
.end method
