.class public abstract Lcom/behance/sdk/google/listview/SectionalBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionalBaseAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final PINNED_HEADER_GONE:I = 0x0

.field public static final PINNED_HEADER_PUSHED_UP:I = 0x2

.field public static final PINNED_HEADER_VISIBLE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field automaticNextPageLoading:Z

.field hasMorePagesListener:Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;

.field initialPage:I

.field page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->page:I

    .line 22
    iput v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->initialPage:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->automaticNextPageLoading:Z

    return-void
.end method


# virtual methods
.method protected abstract bindSectionHeader(Landroid/view/View;IZ)V
.end method

.method public abstract configurePinnedHeader(Landroid/view/View;II)V
.end method

.method public abstract getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getPinnedHeaderState(I)I
    .locals 2

    .prologue
    .line 53
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 59
    :cond_1
    invoke-virtual {p0, p1}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->getPositionForSection(I)I

    move-result v0

    .line 61
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 62
    const/4 v0, 0x2

    goto :goto_0

    .line 65
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract getPositionForSection(I)I
.end method

.method public abstract getSectionForPosition(I)I
.end method

.method public abstract getSections()[Ljava/lang/Object;
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->automaticNextPageLoading:Z

    if-eqz v0, :cond_0

    .line 108
    iget v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->page:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->onNextPageRequested(I)V

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    .line 114
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->bindSectionHeader(Landroid/view/View;IZ)V

    .line 116
    return-object v1

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextPage()V
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->page:I

    .line 88
    return-void
.end method

.method public notifyMayHaveMorePages()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->automaticNextPageLoading:Z

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->hasMorePagesListener:Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->hasMorePagesListener:Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;

    invoke-interface {v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;->mayHaveMorePages()V

    .line 127
    :cond_0
    return-void
.end method

.method public notifyNoMorePages()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->automaticNextPageLoading:Z

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->hasMorePagesListener:Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->hasMorePagesListener:Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;

    invoke-interface {v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;->noMorePages()V

    .line 122
    :cond_0
    return-void
.end method

.method protected abstract onNextPageRequested(I)V
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 92
    instance-of v0, p1, Lcom/behance/sdk/google/listview/SectionalListView;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/behance/sdk/google/listview/SectionalListView;

    invoke-virtual {p1, p2}, Lcom/behance/sdk/google/listview/SectionalListView;->configureHeaderView(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public resetPage()V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->initialPage:I

    iput v0, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->page:I

    .line 81
    return-void
.end method

.method setHasMorePagesListener(Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->hasMorePagesListener:Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;

    .line 28
    return-void
.end method

.method public setInitialPage(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->initialPage:I

    .line 74
    return-void
.end method
