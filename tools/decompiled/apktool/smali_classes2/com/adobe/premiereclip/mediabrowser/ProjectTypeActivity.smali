.class public Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;
.super Landroid/app/Activity;
.source "ProjectTypeActivity.java"


# static fields
.field public static final AUTO_EDIT_MODE:I = 0x1

.field public static final FREEFORM_EDIT_MODE:I = 0x2

.field public static final PROJECT_TYPE_KEY:Ljava/lang/String; = "ProjectType"


# instance fields
.field private projectType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->projectType:I

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->deliverResult()V

    return-void
.end method

.method private deliverResult()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string/jumbo v1, "ProjectType"

    iget v2, p0, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->projectType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->setResult(ILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->finish()V

    .line 72
    return-void
.end method

.method private setOnClickListeners()V
    .locals 3

    .prologue
    .line 88
    const v0, 0x7f120147

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 89
    const v1, 0x7f12014b

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 91
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 92
    invoke-static {v1}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 94
    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$2;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$3;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private setUX()V
    .locals 2

    .prologue
    .line 75
    const v0, 0x7f120145

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->setOnClickListeners()V

    .line 84
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 64
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->overridePendingTransition(II)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->setUX()V

    .line 46
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 53
    return-void
.end method
