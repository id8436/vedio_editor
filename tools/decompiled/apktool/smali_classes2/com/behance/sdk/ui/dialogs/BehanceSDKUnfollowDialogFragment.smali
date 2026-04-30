.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKUnfollowDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private rootView:Landroid/view/View;

.field private title:Landroid/widget/TextView;

.field private unfollowBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 25
    return-void
.end method

.method private handleUnfollowClick()V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->dismissAllowingStateLoss()V

    .line 85
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 76
    sget v1, Lcom/behance/sdk/R$id;->bsdk_unfollowButton:I

    if-ne v0, v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->handleUnfollowClick()V

    .line 80
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 38
    sget v1, Lcom/behance/sdk/R$style;->BsdkDialogTheme:I

    invoke-virtual {p0, v2, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->setStyle(II)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 40
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 46
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_unfollow:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->rootView:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_unfollowDialogTitleTxtView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->title:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    if-nez v0, :cond_1

    .line 53
    :goto_0
    if-eqz p3, :cond_0

    .line 54
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->title:Landroid/widget/TextView;

    const-string/jumbo v1, "INTENT_EXTRA_MESSAGE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_unfollowButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->unfollowBtn:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->unfollowBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKUnfollowDialogFragment;->rootView:Landroid/view/View;

    return-object v0

    :cond_1
    move-object p3, v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 70
    return-void
.end method
