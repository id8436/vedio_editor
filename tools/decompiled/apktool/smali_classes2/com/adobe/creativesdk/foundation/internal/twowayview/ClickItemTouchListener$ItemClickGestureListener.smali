.class Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClickItemTouchListener.java"


# instance fields
.field private final mHostView:Landroid/support/v7/widget/RecyclerView;

.field private mTargetChild:Landroid/view/View;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mHostView:Landroid/support/v7/widget/RecyclerView;

    .line 108
    return-void
.end method


# virtual methods
.method public dispatchSingleTapUpIfNeeded(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 118
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 125
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mHostView:Landroid/support/v7/widget/RecyclerView;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    .line 167
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mHostView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v3

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mHostView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mHostView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;->performItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    .line 159
    const/4 v0, 0x1

    .line 162
    :cond_0
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 138
    .line 140
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mHostView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v3

    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mHostView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mHostView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;->performItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result v0

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->mTargetChild:Landroid/view/View;

    .line 150
    :cond_0
    return v0
.end method
