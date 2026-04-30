.class Lcom/behance/sdk/senab/photoview/ScrollerProxy$GingerScroller;
.super Lcom/behance/sdk/senab/photoview/ScrollerProxy;
.source "ScrollerProxy.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private mScroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/ScrollerProxy;-><init>()V

    .line 52
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    .line 53
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 11

    .prologue
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 64
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 69
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method
