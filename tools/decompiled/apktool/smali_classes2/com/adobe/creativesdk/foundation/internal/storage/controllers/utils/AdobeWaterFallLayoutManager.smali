.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;
.source "AdobeWaterFallLayoutManager.java"


# instance fields
.field private _clientSectionsDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;

.field private _singleSpanSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;II)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_singleSpanSize:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_singleSpanSize:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_singleSpanSize:I

    .line 22
    return-void
.end method

.method private getSingleSpanSize()I
    .locals 3

    .prologue
    .line 29
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_singleSpanSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->getPaddingLeft()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->getPaddingRight()I

    move-result v1

    .line 32
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    .line 33
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_clientSectionsDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;

    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;->getGCMOfSpans()I

    move-result v1

    .line 34
    div-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_singleSpanSize:I

    .line 36
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_singleSpanSize:I

    return v0
.end method

.method private getSpanForSectionItem(IZ)I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_clientSectionsDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;->getGCMOfSpans()I

    move-result v0

    .line 42
    if-eqz p2, :cond_0

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_clientSectionsDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;

    invoke-interface {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;->getNumColumnsInSection(I)I

    move-result v1

    .line 45
    div-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getLayoutParamsForItem(IZ)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->getSpanForSectionItem(IZ)I

    move-result v1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    .line 61
    return-object v0
.end method

.method public getLayoutParamsForItem(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;IZ)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->getSpanForSectionItem(IZ)I

    move-result v1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    .line 55
    return-object v0
.end method

.method public setClientSectionsDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->_clientSectionsDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;

    .line 66
    return-void
.end method
