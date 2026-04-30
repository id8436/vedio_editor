.class public Lcom/adobe/premiereclip/sharing/SharingPublishActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "SharingPublishActivity.java"


# static fields
.field public static final videoLinkPrefix:Ljava/lang/String; = "http://premiereclip.adobe.com/videos/"


# instance fields
.field private projKey:Ljava/lang/String;

.field private projTitle:Ljava/lang/String;

.field private projectThumb:Landroid/widget/ImageView;

.field private sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

.field private uploadId:Ljava/lang/String;

.field private videoLinkText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projectThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->onBackPressed()V

    .line 122
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->onShareActivityResult(IILandroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 128
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->overridePendingTransition(II)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->setContentView(I)V

    .line 57
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 59
    new-instance v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    .line 61
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "upload_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->uploadId:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projKey:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "project_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projTitle:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    .line 67
    const v0, 0x7f120166

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projectThumb:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 69
    new-instance v2, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;-><init>(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;Lcom/adobe/premiereclip/project/Project;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 87
    const v0, 0x7f120165

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->videoLinkText:Landroid/widget/TextView;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://premiereclip.adobe.com/videos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->videoLinkText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->videoLinkText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 92
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 103
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 97
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->uploadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapShareForExportPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://premiereclip.adobe.com/videos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->projTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->onShareClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
