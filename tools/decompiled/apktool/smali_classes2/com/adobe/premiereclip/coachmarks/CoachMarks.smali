.class public Lcom/adobe/premiereclip/coachmarks/CoachMarks;
.super Ljava/lang/Object;
.source "CoachMarks.java"


# static fields
.field private static instanceCount:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private animationInprogress:Z

.field private animationPivot:Landroid/graphics/PointF;

.field private coachView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWM:Landroid/view/WindowManager;

.field private parentContainer:Landroid/view/ViewGroup;

.field private tfCollection:Lcom/h/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->instanceCount:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->handler:Landroid/os/Handler;

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->animationPivot:Landroid/graphics/PointF;

    .line 91
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->activity:Landroid/app/Activity;

    .line 93
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/utility/FontUtils;->initializeTypefaceCollections(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/utility/FontUtils;->getAdobeCleanLightTypefaceCollection()Lcom/h/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->tfCollection:Lcom/h/a/a;

    .line 96
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mWM:Landroid/view/WindowManager;

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 104
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x88

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 116
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->instanceCount:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 48
    sget v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->instanceCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->instanceCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->animationInprogress:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->animationInprogress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/View;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->scaleDownAnimation(Landroid/view/View;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithFlags(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->animationPivot:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/View;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->scaleUpAnimation(Landroid/view/View;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->removeViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->performViewCheck(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->parentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->parentContainer:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mWM:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->addOverlay(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$802(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->coachView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Lcom/h/a/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->tfCollection:Lcom/h/a/a;

    return-object v0
.end method

.method private addOverlay(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 254
    sget v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->instanceCount:I

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->parentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :cond_0
    return-void
.end method

.method private calculateLocation(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->getStatusBarHeight()I

    move-result v2

    .line 151
    invoke-static {v0}, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->getHeightInPx(I)F

    move-result v3

    float-to-int v3, v3

    sub-int v4, v3, v2

    .line 153
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 154
    iget-object v5, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->attachToView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    aget v5, v3, v1

    .line 157
    aget v3, v3, v0

    sub-int/2addr v3, v2

    .line 158
    iget-object v2, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->attachToView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 159
    iget-object v6, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->attachToView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 161
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    .line 164
    iget-boolean v2, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->bAtCentre:Z

    if-eqz v2, :cond_1

    .line 165
    div-int/lit8 v2, v6, 0x2

    add-int/2addr v2, v3

    iget-object v3, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->attachToView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 166
    div-int/lit8 v3, v4, 0x2

    if-ge v2, v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move v0, v2

    .line 172
    :goto_1
    iget-object v1, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->X:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->X:Ljava/lang/Integer;

    .line 173
    iget-object v1, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->Y:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->Y:Ljava/lang/Integer;

    .line 174
    return-object p1

    :cond_0
    move v0, v1

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    sub-int v2, v4, v3

    sub-int/2addr v2, v6

    if-le v3, v2, :cond_2

    move v2, v3

    .line 170
    :goto_2
    sub-int/2addr v4, v3

    sub-int/2addr v4, v6

    if-gt v3, v4, :cond_3

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move v0, v2

    goto :goto_1

    .line 169
    :cond_2
    add-int v2, v3, v6

    goto :goto_2

    :cond_3
    move v0, v1

    .line 170
    goto :goto_3
.end method

.method private performViewCheck(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)Z
    .locals 4

    .prologue
    .line 341
    invoke-static {}, Lcom/adobe/premiereclip/dialogs/BaseDialog;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->attachToView:Landroid/view/View;

    .line 342
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->listener:Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->listener:Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;

    .line 343
    invoke-interface {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;->isViewAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->removeViews()V

    .line 345
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeOverlay()V
    .locals 1

    .prologue
    .line 260
    sget v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->instanceCount:I

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->parentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 263
    :cond_0
    return-void
.end method

.method private removeViews()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->parentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->removeOverlay()V

    .line 268
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->parentContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->parentContainer:Landroid/view/ViewGroup;

    .line 270
    sget v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->instanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->instanceCount:I

    .line 272
    :cond_0
    return-void
.end method

.method private scaleDownAnimation(Landroid/view/View;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 303
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->animationPivot:Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->animationPivot:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->y:F

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 307
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 308
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 311
    new-instance v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;

    invoke-direct {v1, p0, p2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;-><init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 328
    return-void
.end method

.method private scaleUpAnimation(Landroid/view/View;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 276
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->animationPivot:Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->animationPivot:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->y:F

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 280
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 281
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 284
    new-instance v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;-><init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    return-void
.end method

.method private showCoachMarkWithFlags(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    .line 192
    new-instance v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;-><init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/util/List;I)V

    .line 249
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->handler:Landroid/os/Handler;

    iget-wide v4, v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->delay:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 125
    if-lez v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 128
    :cond_0
    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->removeViews()V

    .line 336
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method public setListener(Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->listener:Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;

    .line 120
    return-void
.end method

.method public showCoachMarkWithNext(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    .line 134
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->calculateLocation(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithFlags(Ljava/util/List;I)V

    .line 137
    return-void
.end method

.method public showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->calculateLocation(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithFlags(Ljava/util/List;I)V

    .line 144
    return-void
.end method
