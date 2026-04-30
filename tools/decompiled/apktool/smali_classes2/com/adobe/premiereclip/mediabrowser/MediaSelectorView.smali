.class public Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;
.super Ljava/lang/Object;
.source "MediaSelectorView.java"


# static fields
.field public static final OPTION_CC:I = 0x65

.field public static final OPTION_DROPBOX:I = 0x67

.field public static final OPTION_GOOGLE_DRIVE:I = 0x66


# instance fields
.field private background:Landroid/view/View;

.field private closeAnimation:Landroid/view/animation/Animation;

.field private listener:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;

.field private mediaSelectorLayout:Landroid/widget/LinearLayout;

.field private open:Z

.field private openAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const v0, 0x7f1205e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->mediaSelectorLayout:Landroid/widget/LinearLayout;

    .line 47
    const v0, 0x7f1205e6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->background:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->mediaSelectorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->open:Z

    .line 53
    const v0, 0x7f1205e8

    const/16 v1, 0x65

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->setOptionListener(Landroid/app/Activity;II)V

    .line 54
    const v0, 0x7f1205e9

    const/16 v1, 0x66

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->setOptionListener(Landroid/app/Activity;II)V

    .line 55
    const v0, 0x7f1205ea

    const/16 v1, 0x67

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->setOptionListener(Landroid/app/Activity;II)V

    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->background:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->listener:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->mediaSelectorLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initializeAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    const/16 v0, 0xc8

    .line 110
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->mediaSelectorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->openAnimation:Landroid/view/animation/Animation;

    .line 111
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->openAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 113
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->mediaSelectorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeAnimation:Landroid/view/animation/Animation;

    .line 114
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 132
    return-void
.end method

.method private setOptionListener(Landroid/app/Activity;II)V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$2;

    invoke-direct {v1, p0, p3}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public closeView()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->open:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->open:Z

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->background:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->mediaSelectorLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->open:Z

    return v0
.end method

.method public openView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->open:Z

    if-nez v0, :cond_2

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->open:Z

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->openAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->initializeAnimations()V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->mediaSelectorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->mediaSelectorLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    :cond_2
    return-void
.end method

.method public setListener(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->listener:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;

    .line 67
    return-void
.end method
