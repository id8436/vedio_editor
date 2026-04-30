.class Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V
    .locals 1

    .prologue
    .line 2786
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2787
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2783
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2779
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2814
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v0, :cond_0

    .line 2815
    iput-boolean v10, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2900
    :goto_0
    return-void

    .line 2821
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2822
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v0

    .line 2823
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 2824
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 2825
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2827
    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v7}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2828
    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v7}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v8}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2830
    iget v7, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    if-nez v7, :cond_4

    .line 2831
    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3, v10}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2833
    if-nez v3, :cond_1

    .line 2834
    iput-boolean v10, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 2837
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2838
    iput-boolean v10, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 2842
    :cond_2
    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v5

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    .line 2843
    invoke-static {v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2200(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2842
    invoke-interface {v3, v5, v6, v7}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    iput v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2859
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 2860
    iget-wide v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iget-wide v8, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v6, v8

    long-to-float v3, v6

    iput v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dt:F

    .line 2866
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    .line 2869
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v3, :cond_7

    .line 2870
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    move v0, v1

    .line 2877
    :goto_2
    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2878
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    add-int/2addr v1, v4

    .line 2880
    if-nez v0, :cond_3

    if-le v1, v2, :cond_3

    move v1, v2

    .line 2885
    :cond_3
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2602(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;Z)Z

    .line 2887
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2888
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2889
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2891
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1, v10}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2602(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;Z)Z

    .line 2894
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1, v0, v3, v10}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2700(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 2896
    iget-wide v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iput-wide v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2899
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2845
    :cond_4
    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2846
    if-nez v6, :cond_5

    .line 2847
    iput-boolean v10, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2850
    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v6, v4, v2

    if-gt v3, v6, :cond_6

    .line 2851
    iput-boolean v10, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2855
    :cond_6
    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    .line 2856
    invoke-static {v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2855
    invoke-interface {v3, v5, v6, v7}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2873
    :cond_7
    neg-int v3, v4

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2

    .prologue
    .line 2790
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    .line 2793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->tStart:J

    .line 2795
    iget-wide v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2796
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 2797
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2799
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1

    .prologue
    .line 2802
    if-eqz p1, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2810
    :goto_0
    return-void

    .line 2806
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
