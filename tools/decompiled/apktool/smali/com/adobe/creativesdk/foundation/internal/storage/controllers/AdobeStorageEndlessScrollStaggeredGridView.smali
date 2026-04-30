.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;
.super Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;
.source "AdobeStorageEndlessScrollStaggeredGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final DEFAULT_VISIBLE_THRESHOLD:I = 0x5


# instance fields
.field private listener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;

.field private loading:Z

.field private visibleThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->visibleThreshold:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->loading:Z

    .line 38
    invoke-virtual {p0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->visibleThreshold:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->loading:Z

    .line 43
    invoke-virtual {p0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->visibleThreshold:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->loading:Z

    .line 48
    invoke-virtual {p0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getListener()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->listener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;

    return-object v0
.end method

.method public getVisibleThreshold()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->visibleThreshold:I

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->loading:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->listener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p4, :cond_0

    sub-int v0, p4, p3

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->visibleThreshold:I

    add-int/2addr v1, p2

    if-gt v0, v1, :cond_0

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->setLoading(Z)V

    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->listener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;->onEndlessScrollStaggeredGridLoadNextPage()V

    .line 62
    :cond_0
    if-lez p4, :cond_1

    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->listener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;->onEndlessScrollStaggeredGridShowLoadingProgressBar()V

    .line 66
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public setListener(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->listener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeEndlessScrollStaggeredGridListener;

    .line 84
    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->loading:Z

    .line 92
    return-void
.end method

.method public setVisibleThreshold(I)V
    .locals 0

    .prologue
    .line 73
    if-lez p1, :cond_0

    .line 74
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageEndlessScrollStaggeredGridView;->visibleThreshold:I

    .line 76
    :cond_0
    return-void
.end method
