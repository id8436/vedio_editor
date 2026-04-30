.class public Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "BehanceSDKPreCachingLinearLayoutManager.java"


# instance fields
.field private preCacheDist:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;->preCacheDist:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_layout_manager_pre_cache_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;->preCacheDist:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;->preCacheDist:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_layout_manager_pre_cache_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;->preCacheDist:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;->preCacheDist:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_layout_manager_pre_cache_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;->preCacheDist:I

    .line 30
    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;->preCacheDist:I

    return v0
.end method

.method public setPreCacheDist(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;->preCacheDist:I

    .line 39
    return-void
.end method
