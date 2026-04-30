.class abstract Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;
.super Ljava/lang/Object;
.source "ClickItemTouchListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ClickItemTouchListener"


# instance fields
.field private final mGestureDetector:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;

    invoke-direct {v2, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;->mGestureDetector:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;

    .line 25
    return-void
.end method

.method private hasAdapter(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;->isAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;->hasAdapter(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;->mGestureDetector:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;->handleOnTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method abstract performItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
.end method

.method abstract performItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
.end method
