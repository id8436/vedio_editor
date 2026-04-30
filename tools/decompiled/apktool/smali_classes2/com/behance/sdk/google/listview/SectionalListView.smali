.class public Lcom/behance/sdk/google/listview/SectionalListView;
.super Landroid/widget/ListView;
.source "SectionalListView.java"

# interfaces
.implements Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

.field footerViewAttached:Z

.field listFooter:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/behance/sdk/google/listview/SectionalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/google/listview/SectionalListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->footerViewAttached:Z

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->footerViewAttached:Z

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->footerViewAttached:Z

    .line 129
    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 6

    .prologue
    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 65
    iget-object v1, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/google/listview/SectionalListView;->adapter:Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->getPinnedHeaderState(I)I

    move-result v1

    .line 70
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iput-boolean v2, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v1, p0, Lcom/behance/sdk/google/listview/SectionalListView;->adapter:Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    iget-object v3, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3, p1, v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 78
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewWidth:I

    iget v3, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 81
    :cond_2
    iput-boolean v5, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/behance/sdk/google/listview/SectionalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 89
    iget-object v3, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 92
    if-ge v1, v3, :cond_4

    .line 93
    sub-int/2addr v1, v3

    .line 94
    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    .line 99
    :goto_1
    iget-object v3, p0, Lcom/behance/sdk/google/listview/SectionalListView;->adapter:Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    iget-object v4, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4, p1, v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 101
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    iget v3, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewWidth:I

    iget v4, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 103
    :cond_3
    iput-boolean v5, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewVisible:Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 97
    goto :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/behance/sdk/google/listview/SectionalListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 116
    :cond_0
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalListView;->getAdapter()Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalListView;->getAdapter()Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/behance/sdk/google/listview/SectionalBaseAdapter;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->adapter:Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    return-object v0
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->listFooter:Landroid/view/View;

    return-object v0
.end method

.method public isLoadingViewVisible()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->footerViewAttached:Z

    return v0
.end method

.method public mayHaveMorePages()V
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->footerViewAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->listFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->listFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/google/listview/SectionalListView;->addFooterView(Landroid/view/View;)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->footerViewAttached:Z

    .line 180
    :cond_0
    return-void
.end method

.method public noMorePages()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->listFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->listFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/google/listview/SectionalListView;->removeFooterView(Landroid/view/View;)Z

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->footerViewAttached:Z

    .line 172
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewWidth:I

    iget v2, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 60
    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/google/listview/SectionalListView;->configureHeaderView(I)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 48
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/behance/sdk/google/listview/SectionalListView;->measureChild(Landroid/view/View;II)V

    .line 50
    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalListView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewWidth:I

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderViewHeight:I

    .line 53
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/google/listview/SectionalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    instance-of v0, p1, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/behance/sdk/google/listview/SectionalListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must use adapter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->adapter:Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->adapter:Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->setHasMorePagesListener(Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_1
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    iput-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->adapter:Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    move-object v0, p1

    .line 152
    check-cast v0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->setHasMorePagesListener(Lcom/behance/sdk/google/listview/SectionalBaseAdapter$HasMorePagesListener;)V

    move-object v0, p1

    .line 153
    check-cast v0, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/google/listview/SectionalListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 155
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-super {p0, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 157
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    invoke-super {p0, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 159
    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/behance/sdk/google/listview/SectionalListView;->listFooter:Landroid/view/View;

    .line 133
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/behance/sdk/google/listview/SectionalListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/google/listview/SectionalListView;->setFadingEdgeLength(I)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/google/listview/SectionalListView;->requestLayout()V

    .line 43
    return-void
.end method
