.class public Lcom/adobe/premiereclip/sharing/PublishInfoActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "PublishInfoActivity.java"


# instance fields
.field private projKey:Ljava/lang/String;

.field private projName:Ljava/lang/String;

.field projectName:Landroid/widget/EditText;

.field projectThumb:Landroid/widget/ImageView;

.field publishArrow:Landroid/widget/ImageView;

.field private unlisted:Z

.field unlistedArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->unlisted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->unlisted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projName:Ljava/lang/String;

    return-object v0
.end method

.method private addEditTextListener()V
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f120151

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectName:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectName:Landroid/widget/EditText;

    new-instance v1, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$3;-><init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method private addPrepareVideoListener()V
    .locals 2

    .prologue
    .line 154
    const v0, 0x7f12014f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    new-instance v1, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;-><init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method private addPublicOnClickListener()V
    .locals 2

    .prologue
    .line 118
    const v0, 0x7f120153

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 119
    new-instance v1, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$2;-><init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method private addUnlistedOnClickListener()V
    .locals 2

    .prologue
    .line 139
    const v0, 0x7f120155

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 140
    new-instance v1, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$4;-><init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method


# virtual methods
.method public final clearText(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectName:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->onBackPressed()V

    .line 151
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 178
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->overridePendingTransition(II)V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->setContentView(I)V

    .line 59
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 60
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowCCVExportView()V

    .line 62
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projKey:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->unlisted:Z

    .line 67
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projName:Ljava/lang/String;

    .line 70
    const v0, 0x7f120150

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectThumb:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 73
    new-instance v2, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;-><init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;Lcom/adobe/premiereclip/project/Project;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 92
    const v0, 0x7f120154

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->publishArrow:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f120156

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->unlistedArrow:Landroid/widget/ImageView;

    .line 95
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->addEditTextListener()V

    .line 96
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->addPublicOnClickListener()V

    .line 97
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->addUnlistedOnClickListener()V

    .line 98
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->addPrepareVideoListener()V

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 110
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 104
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 105
    return-void
.end method
