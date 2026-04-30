.class public Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;
.super Landroid/widget/RelativeLayout;
.source "CoachMarksFullScreenContainer.java"


# static fields
.field private static bgColor:I


# instance fields
.field private b:I

.field private caretX:I

.field private caretY:I

.field private drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

.field private l:I

.field private msg_container:Landroid/view/View;

.field private paddingX:I

.field private paddingY:I

.field private proposedDirection:Ljava/lang/Boolean;

.field private r:I

.field private t:I

.field private tipTrianglePaddingX:F

.field private userTrianglePaddingX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const v0, 0xffffff

    sput v0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->bgColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILjava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->msg_container:Landroid/view/View;

    .line 33
    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    .line 35
    iput v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    .line 36
    iput v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->tipTrianglePaddingX:F

    .line 38
    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    .line 39
    iput v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    .line 40
    iput v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    .line 41
    iput v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->userTrianglePaddingX:I

    .line 51
    iput-object p5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    .line 52
    iput p2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    .line 53
    iput p3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    .line 54
    sget v0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->bgColor:I

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->setBackgroundColor(I)V

    .line 56
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    const v1, 0x7f040106

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    const v0, 0x7f120494

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    .line 60
    const v0, 0x7f120495

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->msg_container:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getTriangleTipPadding()F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->tipTrianglePaddingX:F

    .line 65
    iput p4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->userTrianglePaddingX:I

    .line 66
    return-void
.end method

.method private calculateDimensions()V
    .locals 7

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->getMeasuredWidth()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->getMeasuredHeight()I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->msg_container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 71
    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->msg_container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 74
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->tipTrianglePaddingX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 75
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->tipTrianglePaddingX:F

    float-to-int v4, v4

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    .line 77
    :cond_0
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    int-to-float v4, v4

    int-to-float v5, v0

    iget v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->tipTrianglePaddingX:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 78
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->tipTrianglePaddingX:F

    float-to-int v4, v4

    sub-int v4, v0, v4

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    .line 81
    :cond_1
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 83
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_2

    .line 84
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    .line 87
    sub-int v4, v1, v3

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    .line 91
    :cond_3
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    iget v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->userTrianglePaddingX:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    invoke-virtual {v4, v5, v6}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->setTipPosition(II)V

    .line 93
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->l:I

    .line 94
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->l:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->r:I

    .line 95
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->b:I

    .line 96
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->b:I

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->t:I

    .line 98
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->t:I

    .line 100
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->t:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->b:I

    .line 104
    :cond_4
    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    div-int/lit8 v5, v2, 0x2

    iget v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->l:I

    .line 106
    iget v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->l:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->r:I

    .line 113
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 114
    iget v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_6

    .line 115
    iget v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->t:I

    .line 116
    iget v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->t:I

    add-int/2addr v0, v3

    iget v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->b:I

    .line 117
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->setTipDirection(Z)V

    .line 123
    :cond_6
    :goto_1
    return-void

    .line 108
    :cond_7
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v0, v4

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    if-ge v4, v5, :cond_5

    .line 109
    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->r:I

    .line 110
    iget v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->r:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->l:I

    goto :goto_0

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->setTipDirection(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getAbsoluteTriangleTip()Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getTriangleTip(Z)Landroid/graphics/PointF;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 135
    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->l:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->userTrianglePaddingX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->t:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->caretY:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 136
    return-object v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->proposedDirection:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->calculateDimensions()V

    .line 127
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->drawable_View:Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;

    iget v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->l:I

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->t:I

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->r:I

    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->layout(IIII)V

    .line 128
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->msg_container:Landroid/view/View;

    iget v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->l:I

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->t:I

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->r:I

    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingX:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->b:I

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->paddingY:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 129
    return-void
.end method
