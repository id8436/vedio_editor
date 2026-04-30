.class public Lcom/adobe/premiereclip/BottomSheetView;
.super Ljava/lang/Object;
.source "BottomSheetView.java"


# instance fields
.field public background:Landroid/view/View;

.field private bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

.field private closeAnimation:Landroid/view/animation/Animation;

.field private open:Z

.field private openAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    instance-of v0, p1, Lcom/adobe/premiereclip/editor/EditorActivity;

    if-eqz v0, :cond_0

    .line 23
    const v0, 0x7f1202cf

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    .line 26
    :goto_0
    const v0, 0x7f1202c1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->background:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->open:Z

    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->background:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/BottomSheetView$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/BottomSheetView$1;-><init>(Lcom/adobe/premiereclip/BottomSheetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void

    .line 25
    :cond_0
    const v0, 0x7f1202c2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/BottomSheetView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initializeAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    const/16 v0, 0xc8

    .line 68
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/BottomSheetView;->openAnimation:Landroid/view/animation/Animation;

    .line 69
    iget-object v1, p0, Lcom/adobe/premiereclip/BottomSheetView;->openAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 71
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/BottomSheetView;->closeAnimation:Landroid/view/animation/Animation;

    .line 72
    iget-object v1, p0, Lcom/adobe/premiereclip/BottomSheetView;->closeAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->closeAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/adobe/premiereclip/BottomSheetView$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/BottomSheetView$2;-><init>(Lcom/adobe/premiereclip/BottomSheetView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method public closeView()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->open:Z

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->open:Z

    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->background:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/BottomSheetView;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->open:Z

    return v0
.end method

.method public openView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-boolean v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->open:Z

    if-nez v0, :cond_2

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->open:Z

    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->openAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->closeAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/BottomSheetView;->initializeAnimations()V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView;->bottomSheetOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/BottomSheetView;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    :cond_2
    return-void
.end method
