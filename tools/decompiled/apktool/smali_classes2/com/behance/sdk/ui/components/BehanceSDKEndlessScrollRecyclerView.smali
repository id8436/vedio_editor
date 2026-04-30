.class public Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BehanceSDKEndlessScrollRecyclerView.java"


# instance fields
.field private callbackListener:Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;

.field private listener:Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->loadNextPage()V

    return-void
.end method

.method private loadNextPage()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->callbackListener:Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->callbackListener:Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;

    invoke-interface {v0}, Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;->loadNextPage()V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public initializeScrollListener(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView$2;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView$2;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->listener:Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->listener:Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 52
    return-void
.end method

.method public initializeScrollListener(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView$1;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->listener:Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;

    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->listener:Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 43
    return-void
.end method

.method public resetScrollCount()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->listener:Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->listener:Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;

    invoke-virtual {v0}, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->resetScrollCount()V

    .line 67
    :cond_0
    return-void
.end method

.method public setCallbackListener(Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->callbackListener:Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;

    .line 61
    return-void
.end method
