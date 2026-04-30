.class Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;
.super Ljava/lang/Object;
.source "ClickItemTouchListener.java"


# instance fields
.field gestureDetectorCompat:Landroid/support/v4/view/GestureDetectorCompat;

.field private final mGestureListener:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-direct {v0, p2, p3}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;->gestureDetectorCompat:Landroid/support/v4/view/GestureDetectorCompat;

    .line 87
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;->mGestureListener:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;

    .line 89
    return-void
.end method


# virtual methods
.method public handleOnTouch(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;->gestureDetectorCompat:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 95
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$GestureDetectorCompatWrapper;->mGestureListener:Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener$ItemClickGestureListener;->dispatchSingleTapUpIfNeeded(Landroid/view/MotionEvent;)V

    .line 98
    :cond_0
    return-void
.end method
