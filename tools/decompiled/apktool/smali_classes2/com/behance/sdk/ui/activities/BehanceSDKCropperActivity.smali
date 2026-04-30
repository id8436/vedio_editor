.class public Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BehanceSDKCropperActivity.java"

# interfaces
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;


# static fields
.field private static final HEADLESS_FRAGMENT_TAG:Ljava/lang/String; = "HEADLESS_FRAGMENT_TAG_CROPPER"

.field public static final INTENT_EXTRA_IMAGE_PATH:Ljava/lang/String; = "INTENT_EXTRA_IMAGE_PATH"

.field public static final INTENT_EXTRA_IMAGE_SAVED_TO_PATH:Ljava/lang/String; = "INTENT_EXTRA_IMAGE_SAVED_TO_PATH"


# instance fields
.field private bsdkCropperFab:Landroid/support/design/widget/FloatingActionButton;

.field private bsdkCropperLoader:Landroid/widget/FrameLayout;

.field private bsdkCropperView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperLoader:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)Lcom/behance/sdk/ui/components/BehanceSDKCropView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    return-object v0
.end method

.method private handleSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    const-string/jumbo v1, "INTENT_EXTRA_IMAGE_SAVED_TO_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->finish()V

    .line 93
    return-void
.end method

.method private setupCropClickListener()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperFab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$2;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private setupCropView(Z)V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "INTENT_EXTRA_IMAGE_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "INTENT_EXTRA_IMAGE_PATH"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$1;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setImageUri(Landroid/net/Uri;Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "INTENT_EXTRA_IMAGE_PATH"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setImageUri(Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_cropper:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->setContentView(I)V

    .line 38
    sget v0, Lcom/behance/sdk/R$id;->bsdk_cropper_view:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    .line 39
    sget v0, Lcom/behance/sdk/R$id;->bsdk_cropper_loader:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperLoader:Landroid/widget/FrameLayout;

    .line 40
    sget v0, Lcom/behance/sdk/R$id;->bsdk_cropper_fab:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperFab:Landroid/support/design/widget/FloatingActionButton;

    .line 42
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "HEADLESS_FRAGMENT_TAG_CROPPER"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    .line 43
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    .line 45
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    const-string/jumbo v2, "HEADLESS_FRAGMENT_TAG_CROPPER"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;)V

    .line 50
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setAspectRatio(F)V

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->bsdkCropperLoader:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->setupCropView(Z)V

    .line 56
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->setupCropClickListener()V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->isCropInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-direct {p0, v3}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->setupCropView(Z)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->handleSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->finish()V

    .line 104
    return-void
.end method

.method public onSaveSuccess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->handleSuccess(Ljava/lang/String;)V

    .line 98
    return-void
.end method
