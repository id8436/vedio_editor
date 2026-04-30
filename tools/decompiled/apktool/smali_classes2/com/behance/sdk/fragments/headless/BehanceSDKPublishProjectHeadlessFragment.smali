.class public Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKPublishProjectHeadlessFragment.java"

# interfaces
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;


# instance fields
.field private callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

.field private getFacebookUserIdInProgress:Z

.field private loginResult:Lcom/facebook/login/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->getFacebookUserIdInProgress:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->loginResult:Lcom/facebook/login/x;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->setRetainInstance(Z)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public getLoginResult()Lcom/facebook/login/x;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->loginResult:Lcom/facebook/login/x;

    return-object v0
.end method

.method public isGetFacebookUserIdInProgress()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->getFacebookUserIdInProgress:Z

    return v0
.end method

.method public loadFacebookUserId(Lcom/facebook/login/x;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->setGetFacebookUserIdInProgress(Z)V

    .line 57
    invoke-virtual {p1}, Lcom/facebook/login/x;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$1;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Lcom/facebook/aj;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/ao;

    .line 71
    return-void
.end method

.method public onCopyrightSettingSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;->onCopyrightSettingSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onCreativeFieldsSelected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;->onCreativeFieldsSelected(Ljava/util/List;)V

    .line 47
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    .line 37
    return-void
.end method

.method public setGetFacebookUserIdInProgress(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->getFacebookUserIdInProgress:Z

    .line 79
    return-void
.end method

.method public setLoginResult(Lcom/facebook/login/x;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->loginResult:Lcom/facebook/login/x;

    .line 87
    return-void
.end method
