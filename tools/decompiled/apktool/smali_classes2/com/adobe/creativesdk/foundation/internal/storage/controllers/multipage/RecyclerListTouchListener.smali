.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;
.super Ljava/lang/Object;
.source "RecyclerListTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field mGestureDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;

    .line 26
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 33
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;->performAction()V

    .line 61
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method
