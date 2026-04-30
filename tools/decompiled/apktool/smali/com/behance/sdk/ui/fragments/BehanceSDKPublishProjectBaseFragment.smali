.class public abstract Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKPublishProjectBaseFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private actionBarBackButton:Landroid/view/View;

.field protected actionBarForwardButton:Landroid/widget/TextView;

.field private actionBarTitle:Landroid/widget/TextView;

.field private navigationListener:Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;

.field protected rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private getLeftNavigationHandler()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;)V

    return-object v0
.end method

.method private getRightNavigationHandler()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;)V

    return-object v0
.end method


# virtual methods
.method protected backButtonPressed()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->navigationListener:Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;

    invoke-interface {v0}, Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;->showPrevious()V

    .line 91
    return-void
.end method

.method protected changeTitle(I)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 154
    :cond_0
    return-void
.end method

.method protected changeTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    return-void
.end method

.method public closeWorkflow()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected createActionBar()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->updateNavigationControls()V

    .line 76
    return-void
.end method

.method protected disableActionBarRightNav()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarForwardButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarForwardButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method protected enableActionBarRightNav()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarForwardButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarForwardButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method protected getBackButtonID()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectTitlebarBackBtnLayout:I

    return v0
.end method

.method protected getForwardButtonID()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectTitlebarActionBtnTxtView:I

    return v0
.end method

.method protected getForwardButtonText()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/behance/sdk/R$string;->bsdk_addproject_custom_actionbar_forward_nav_default_txt:I

    return v0
.end method

.method protected abstract getLayout()I
.end method

.method protected abstract getTitle()I
.end method

.method protected getTitleViewID()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectTitlebarTitleTxtView:I

    return v0
.end method

.method protected hideSoftKeyBoardIfActive(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    return-void
.end method

.method protected nextButtonPressed()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->navigationListener:Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;

    invoke-interface {v0}, Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;->showNext()V

    .line 95
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 100
    check-cast p1, Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;

    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->navigationListener:Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->setHasOptionsMenu(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->rootView:Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->createActionBar()V

    .line 66
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->navigationListener:Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;

    .line 107
    return-void
.end method

.method protected updateNavigationControls()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getTitleViewID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarTitle:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getBackButtonID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarBackButton:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarBackButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarBackButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getLeftNavigationHandler()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getForwardButtonID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarForwardButton:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarForwardButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getForwardButtonText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->actionBarForwardButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getRightNavigationHandler()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
