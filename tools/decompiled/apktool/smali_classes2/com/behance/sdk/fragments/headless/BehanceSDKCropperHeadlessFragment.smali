.class public Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKCropperHeadlessFragment.java"


# instance fields
.field private callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;

.field private cropInProgress:Z

.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->filePath:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->cropInProgress:Z

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->setRetainInstance(Z)V

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->cropInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public isCropInProgress()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->cropInProgress:Z

    return v0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;Landroid/graphics/Bitmap;)V

    .line 64
    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->start()V

    .line 65
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;

    .line 69
    return-void
.end method
