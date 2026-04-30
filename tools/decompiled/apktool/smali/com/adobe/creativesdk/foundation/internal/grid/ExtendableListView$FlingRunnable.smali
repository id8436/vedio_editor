.class Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;
.super Ljava/lang/Object;
.source "ExtendableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V
    .locals 2

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1890
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;)V
    .locals 0

    .prologue
    .line 1877
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->endFling()V

    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1910
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mLastFlingY:I

    .line 1911
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$202(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 1913
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->reportScrollStateChange(I)V

    .line 1914
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1916
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1917
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$200(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1968
    :goto_0
    return-void

    .line 1926
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$400(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1927
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1932
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1933
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 1937
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mLastFlingY:I

    sub-int/2addr v0, v2

    .line 1940
    if-lez v0, :cond_2

    .line 1942
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget v4, v4, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    invoke-static {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$502(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 1944
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1955
    :goto_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v3, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$600(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;II)Z

    move-result v0

    .line 1957
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 1958
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invalidate()V

    .line 1959
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mLastFlingY:I

    .line 1960
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1948
    :cond_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1949
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget v5, v5, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$502(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 1952
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1963
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 1921
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 1893
    if-gez p1, :cond_0

    move v2, v6

    .line 1894
    :goto_0
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mLastFlingY:I

    .line 1895
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1896
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1897
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$202(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 1898
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Ljava/lang/Runnable;)V

    .line 1899
    return-void

    :cond_0
    move v2, v1

    .line 1893
    goto :goto_0
.end method

.method startScroll(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1902
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 1903
    :goto_0
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mLastFlingY:I

    .line 1904
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1905
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$202(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 1906
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Ljava/lang/Runnable;)V

    .line 1907
    return-void

    :cond_0
    move v2, v1

    .line 1902
    goto :goto_0
.end method
