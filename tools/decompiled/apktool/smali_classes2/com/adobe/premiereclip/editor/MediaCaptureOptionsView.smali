.class public Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;
.super Ljava/lang/Object;
.source "MediaCaptureOptionsView.java"


# instance fields
.field private background:Landroid/view/View;

.field private closeAnimation:Landroid/view/animation/Animation;

.field private listener:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;

.field private mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

.field private open:Z

.field private openAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v0, 0x7f1205e3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

    .line 48
    const v0, 0x7f1205e2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->background:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->open:Z

    .line 54
    const v0, 0x7f1205e4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 55
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 56
    new-instance v1, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$1;-><init>(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f1205e5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 67
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 68
    new-instance v1, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$2;-><init>(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->background:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$3;-><init>(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->listener:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initializeAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    const/16 v0, 0xc8

    .line 118
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->openAnimation:Landroid/view/animation/Animation;

    .line 119
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->openAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeAnimation:Landroid/view/animation/Animation;

    .line 122
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$4;-><init>(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 140
    return-void
.end method


# virtual methods
.method public closeView()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->open:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->open:Z

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->background:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->open:Z

    return v0
.end method

.method public openView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->open:Z

    if-nez v0, :cond_2

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->open:Z

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->openAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->initializeAnimations()V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->mediaCaptureOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    :cond_2
    return-void
.end method

.method public setListener(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->listener:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;

    .line 88
    return-void
.end method
