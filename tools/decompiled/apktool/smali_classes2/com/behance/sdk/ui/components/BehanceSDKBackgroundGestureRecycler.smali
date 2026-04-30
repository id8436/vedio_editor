.class public Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;
.super Landroid/support/v7/widget/RecyclerView;
.source "BehanceSDKBackgroundGestureRecycler.java"


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private onBackgroundGestureListener:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->gestureDetector:Landroid/view/GestureDetector;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->gestureDetector:Landroid/view/GestureDetector;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->gestureDetector:Landroid/view/GestureDetector;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->onBackgroundGestureListener:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnBackgroundGestureListener(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->onBackgroundGestureListener:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;

    .line 32
    return-void
.end method
