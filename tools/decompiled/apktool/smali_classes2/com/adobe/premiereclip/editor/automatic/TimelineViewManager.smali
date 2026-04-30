.class public Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;
.super Ljava/lang/Object;
.source "TimelineViewManager.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private closeAnimation:Landroid/view/animation/Animation;

.field private headerLayout:Landroid/widget/LinearLayout;

.field private listener:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;

.field private open:Z

.field private openAnimation:Landroid/view/animation/Animation;

.field private project:Lcom/adobe/premiereclip/project/Project;

.field private timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

.field private timelineLayout:Landroid/widget/RelativeLayout;

.field private touchGuard:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/project/Project;)V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->activity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->project:Lcom/adobe/premiereclip/project/Project;

    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->activity:Landroid/app/Activity;

    const v1, 0x7f1200db

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->headerLayout:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->activity:Landroid/app/Activity;

    const v1, 0x7f1202bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timelineLayout:Landroid/widget/RelativeLayout;

    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->activity:Landroid/app/Activity;

    const v1, 0x7f1202c0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 73
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timelineLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 74
    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->activity:Landroid/app/Activity;

    iget-object v3, p2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->activity:Landroid/app/Activity;

    const v1, 0x7f1200eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->touchGuard:Landroid/view/View;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->open:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->headerLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->touchGuard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timelineLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->listener:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;

    return-object v0
.end method

.method private animationsNotInitialized()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->openAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->closeAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    const/16 v0, 0xc8

    .line 130
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timelineLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->openAnimation:Landroid/view/animation/Animation;

    .line 131
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->openAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 133
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->openAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$1;-><init>(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timelineLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->closeAnimation:Landroid/view/animation/Animation;

    .line 152
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->closeAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 154
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->closeAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$2;-><init>(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    return-void
.end method


# virtual methods
.method public closeTimeline()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->open:Z

    if-eqz v0, :cond_1

    .line 109
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->open:Z

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->touchGuard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->animationsNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->initializeAnimations()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timelineLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    :cond_1
    return-void
.end method

.method public getTimeline()Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->open:Z

    return v0
.end method

.method public onAssetsAdded(I)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->setClips(Ljava/util/ArrayList;I)V

    .line 215
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->saveCurrentClipIndex(I)V

    .line 216
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->setActiveClipIndex(IZ)V

    .line 220
    return-void
.end method

.method public onClickDelete(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    const v1, 0x7f0a03eb

    .line 182
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03ea

    .line 183
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    const v1, 0x7f0a03ee

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$3;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$3;-><init>(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 192
    const v1, 0x7f0a03ed

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 193
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 194
    return-void
.end method

.method public onConfirmDelete()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->removeClip(I)V

    .line 202
    return-void
.end method

.method public openTimeline()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->open:Z

    if-nez v0, :cond_1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->open:Z

    .line 93
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->animationsNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->initializeAnimations()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timelineLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->timelineLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    :cond_1
    return-void
.end method

.method public setListener(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->listener:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;

    .line 122
    return-void
.end method
