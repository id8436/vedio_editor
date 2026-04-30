.class public Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;
.super Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;
.source "BehanceSDKPublishProjectDetailsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;
.implements Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$CoverImageChangeListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final FACEBOOK_PERMISSION_PUBLISH_ACTIONS:Ljava/lang/String; = "publish_actions"

.field private static final HEADLESS_FRAGMENT_TAG_PUBLISH_PROJECT:Ljava/lang/String; = "HEADLESS_FRAGMENT_TAG_PUBLISH_PROJECT"

.field private static final MAX_NUMBER_OF_CREATIVE_FIELD_ALLOWED:I = 0x3

.field public static final TWITTER_LOGIN_ACTIVITY_REQUEST_CODE:I = 0xddd6


# instance fields
.field private adultContentCheckBox:Landroid/widget/CheckBox;

.field private callbackManager:Lcom/facebook/k;

.field private coverImageView:Landroid/widget/ImageView;

.field private facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

.field private facebookLoginConfirmDialogClickListener:Landroid/view/View$OnClickListener;

.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

.field private loginToFacebookConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

.field private loginToTwitterConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

.field private projectCopyrightsButton:Landroid/widget/TextView;

.field private projectDescEditTxt:Landroid/widget/EditText;

.field private projectFilterFieldsButton:Landroid/widget/TextView;

.field private projectNameTxtView:Landroid/widget/TextView;

.field private projectTagsEditTxt:Landroid/widget/EditText;

.field private publishProjectProgressbar:Landroid/view/View;

.field savedLoginResult:Lcom/facebook/login/x;

.field private selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field private selectedField:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation
.end field

.field private shareOnFacebook:Z

.field private shareOnFacebookBtnImageView:Landroid/widget/ImageView;

.field private shareOnTwitter:Z

.field private shareOnTwitterBtnImageView:Landroid/widget/ImageView;

.field private socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

.field private twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

.field private twitterLoginConfirmDialogClickListener:Landroid/view/View$OnClickListener;

.field private workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;-><init>()V

    .line 93
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    .line 96
    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 97
    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->savedLoginResult:Lcom/facebook/login/x;

    .line 873
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$7;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$7;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterLoginConfirmDialogClickListener:Landroid/view/View$OnClickListener;

    .line 886
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$8;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$8;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookLoginConfirmDialogClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private LoginToFacebook()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->hideSoftKeyBoardIfActive(Landroid/view/View;)V

    .line 442
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 443
    invoke-static {}, Lcom/facebook/login/r;->a()Lcom/facebook/login/r;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/g;->a:Lcom/facebook/login/g;

    invoke-virtual {v1, v2}, Lcom/facebook/login/r;->a(Lcom/facebook/login/g;)Lcom/facebook/login/r;

    .line 444
    invoke-static {}, Lcom/facebook/login/r;->a()Lcom/facebook/login/r;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/a;->d:Lcom/facebook/login/a;

    invoke-virtual {v1, v2}, Lcom/facebook/login/r;->a(Lcom/facebook/login/a;)Lcom/facebook/login/r;

    .line 445
    invoke-static {}, Lcom/facebook/login/r;->a()Lcom/facebook/login/r;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/login/r;->a(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V

    .line 446
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;Lcom/facebook/login/x;Lcom/facebook/q;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->handleFacebookAuthActivityResult(Lcom/facebook/login/x;Lcom/facebook/q;)V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedField:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->handleEnableShareOnTwitterBtnClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->handleEnableShareOnFacebookBtnClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->closeLoginToTwitterConfirmationDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->launchTwitterLoginActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->closeLoginToFacebookConfirmationDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->LoginToFacebook()V

    return-void
.end method

.method private checkFacebookAuthAndEnableSharing()V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->isFacebookAccountAuthenticatedToPublish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 423
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnFacebookBtnImage()V

    .line 424
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateFacebookAccountAuthStatus()V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->displayFacebookLoginConfirmationDialog()V

    goto :goto_0
.end method

.method private checkIfUserHasLoggedIntoTwitter()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    .line 512
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->displayTwitterLoginConfirmationDialog()V

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    .line 516
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnTwitterBtnImage()V

    goto :goto_0
.end method

.method private closeLoginToFacebookConfirmationDialog()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToFacebookConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToFacebookConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->dismiss()V

    .line 559
    :cond_0
    return-void
.end method

.method private closeLoginToTwitterConfirmationDialog()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToTwitterConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToTwitterConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->dismiss()V

    .line 553
    :cond_0
    return-void
.end method

.method private displayFacebookLoginConfirmationDialog()V
    .locals 5

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_social_account_facebook_login_confirmation_title:I

    sget v2, Lcom/behance/sdk/R$string;->bsdk_social_account_facebook_login_confirmation_body:I

    sget v3, Lcom/behance/sdk/R$string;->bsdk_social_account_facebook_login_confirmation_ok_btn_label:I

    sget v4, Lcom/behance/sdk/R$string;->bsdk_social_account_facebook_login_confirmation_cancel_btn_label:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->getInstance(Landroid/content/Context;IIII)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToFacebookConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    .line 435
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToFacebookConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookLoginConfirmDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToFacebookConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookLoginConfirmDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToFacebookConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->show()V

    .line 438
    return-void
.end method

.method private displayTwitterLoginConfirmationDialog()V
    .locals 5

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_social_account_twitter_login_confirmation_title:I

    sget v2, Lcom/behance/sdk/R$string;->bsdk_social_account_twitter_login_confirmation_body:I

    sget v3, Lcom/behance/sdk/R$string;->bsdk_social_account_twitter_login_confirmation_ok_btn_label:I

    sget v4, Lcom/behance/sdk/R$string;->bsdk_social_account_twitter_login_confirmation_cancel_btn_label:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->getInstance(Landroid/content/Context;IIII)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToTwitterConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    .line 525
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToTwitterConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterLoginConfirmDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToTwitterConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterLoginConfirmDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loginToTwitterConfirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->show()V

    .line 528
    return-void
.end method

.method private enableOrDisablePublishButton()V
    .locals 5

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectTitle()Ljava/lang/String;

    move-result-object v0

    .line 834
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectDesc()Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectFields()Ljava/util/List;

    move-result-object v2

    .line 836
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectTagString()Ljava/lang/String;

    move-result-object v3

    .line 837
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 838
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->invalidCharsPresent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->invalidCharsPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->disableActionBarRightNav()V

    .line 843
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->enableActionBarRightNav()V

    goto :goto_0
.end method

.method private getFocusChangeListerForLayout(Landroid/view/View;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$6;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;Landroid/view/View;)V

    return-object v0
.end method

.method private getProjectDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectDescEditTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProjectFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedField:Ljava/util/List;

    return-object v0
.end method

.method private getProjectTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectTagsEditTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectNameTxtView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleEnableShareOnFacebookBtnClick()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v0, :cond_0

    .line 403
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    if-eqz v0, :cond_1

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 405
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnFacebookBtnImage()V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->checkFacebookAuthAndEnableSharing()V

    goto :goto_0
.end method

.method private handleEnableShareOnTwitterBtnClick()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v0, :cond_0

    .line 500
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    if-eqz v0, :cond_1

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    .line 505
    :goto_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnTwitterBtnImage()V

    .line 507
    :cond_0
    return-void

    .line 503
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->checkIfUserHasLoggedIntoTwitter()V

    goto :goto_0
.end method

.method private handleFacebookAuthActivityResult(Lcom/facebook/login/x;Lcom/facebook/q;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    if-eqz p1, :cond_2

    .line 586
    invoke-virtual {p1}, Lcom/facebook/login/x;->b()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->showProgressBar()V

    .line 588
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->savedLoginResult:Lcom/facebook/login/x;

    .line 589
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->setLoginResult(Lcom/facebook/login/x;)V

    .line 590
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->loadFacebookUserId(Lcom/facebook/login/x;)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_social_account_fb_auth_permissions_failure:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 594
    iput-boolean v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 595
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnFacebookBtnImage()V

    .line 596
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateFacebookAccountAuthStatus()V

    goto :goto_0

    .line 600
    :cond_2
    if-eqz p2, :cond_3

    .line 601
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_social_account_fb_auth_failure:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 602
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateFacebookAccountAuthStatus()V

    .line 604
    :cond_3
    iput-boolean v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 605
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnFacebookBtnImage()V

    goto :goto_0
.end method

.method private hideProgressBar()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->publishProjectProgressbar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->publishProjectProgressbar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_0
    return-void
.end method

.method private invalidCharsPresent(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 848
    if-eqz p1, :cond_0

    .line 849
    const-string/jumbo v1, ">"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "<"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 850
    :cond_0
    :goto_0
    return v0

    .line 849
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokePublishProjectService()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 679
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->populateProjectDetails()V

    .line 682
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectTagString()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->cleanUpTagsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    array-length v5, v3

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_f

    aget-object v6, v3, v0

    .line 687
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 688
    invoke-static {v6}, Lcom/behance/sdk/util/BehanceSDKUtils;->isTagValidForProject(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 689
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 690
    const-string/jumbo v7, "|"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 699
    :goto_1
    if-eqz v0, :cond_c

    .line 700
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->hideSoftKeyBoardIfActive(Landroid/view/View;)V

    .line 701
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->showProgressBar()V

    .line 702
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->setEnabledInfoScreen(Z)V

    .line 704
    new-instance v3, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;

    invoke-direct {v3}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;-><init>()V

    .line 705
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;

    move-result-object v0

    .line 706
    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setAppClientId(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getNotificationHandlerActivityClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setNotificationHandlerActivity(Ljava/lang/Class;)V

    .line 709
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->isProjectContainsAdultContent()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectContainsAdultContent(Z)V

    .line 710
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectCopyright(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getSelectedCoverImage()Lcom/behance/sdk/project/modules/CoverImage;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/CoverImage;->getByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectCoverImageByteArray([B)V

    .line 713
    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/CoverImage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectCoverImageFileName(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectFields()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v5, "|"

    invoke-static {v0, v5}, Lcom/behance/sdk/util/BehanceSDKUtils;->getCreativeFieldsIdString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectCreativeFields(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectDescription(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectModules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectModules(Ljava/util/List;)V

    .line 718
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectTags(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setProjectTitle(Ljava/lang/String;)V

    .line 722
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->isFacebookAccountAuthenticatedToPublish()Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    iput-boolean v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 726
    :cond_2
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    if-eqz v0, :cond_8

    .line 727
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v0

    if-nez v0, :cond_e

    .line 728
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setSharingEnabledLastTime(Z)V

    move v0, v1

    .line 738
    :goto_2
    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->updateAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 744
    :cond_3
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->isTwitterAccountAuthenticated()Z

    move-result v4

    .line 745
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v0, :cond_d

    .line 746
    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isUserAuthenticated()Z

    move-result v0

    if-nez v0, :cond_9

    .line 747
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthenticated(Z)V

    move v0, v1

    .line 754
    :goto_3
    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    if-eqz v4, :cond_4

    .line 755
    iput-boolean v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    .line 758
    :cond_4
    iget-boolean v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    if-eqz v4, :cond_a

    .line 759
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v2

    if-nez v2, :cond_5

    .line 760
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setSharingEnabledLastTime(Z)V

    move v0, v1

    .line 770
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 771
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->updateAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 774
    :cond_6
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setShareOnFacebook(Z)V

    .line 775
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setShareOnTwitter(Z)V

    .line 776
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    if-eqz v0, :cond_7

    .line 777
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setTwitterUserAccessToken(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setTwitterUserAccessTokenSecret(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setTwitterConsumerKey(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->setTwitterConsumerSecret(Ljava/lang/String;)V

    .line 783
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v4, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 784
    const-string/jumbo v2, "INTENT_EXTRA_PARAMS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 785
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 786
    sget v2, Lcom/behance/sdk/R$string;->bsdk_add_content_project_publish_service_initialize_error_msg:I

    .line 787
    if-eqz v0, :cond_b

    .line 788
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_content_project_publish_initiated_msg:I

    .line 792
    :goto_5
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 794
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->finishWorkflow()V

    .line 795
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->closeThisActivity(Z)V

    .line 802
    :goto_6
    return-void

    .line 732
    :cond_8
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 733
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setSharingEnabledLastTime(Z)V

    move v0, v1

    .line 734
    goto/16 :goto_2

    .line 749
    :cond_9
    if-nez v4, :cond_d

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isUserAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 750
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthenticated(Z)V

    move v0, v1

    .line 751
    goto/16 :goto_3

    .line 764
    :cond_a
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 765
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setSharingEnabledLastTime(Z)V

    move v0, v1

    .line 766
    goto/16 :goto_4

    .line 790
    :cond_b
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_content_project_publish_service_initialize_error_msg:I

    goto :goto_5

    .line 797
    :cond_c
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/behance/sdk/R$string;->bsdk_add_content_project_publish_invalid_tag_msg:I

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 798
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 799
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 800
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectTagsEditTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_6

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v0, v2

    goto/16 :goto_2

    :cond_f
    move v0, v1

    goto/16 :goto_1
.end method

.method private isFacebookAccountAuthenticatedToPublish()Z
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->getLoginResult()Lcom/facebook/login/x;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->savedLoginResult:Lcom/facebook/login/x;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->savedLoginResult:Lcom/facebook/login/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->savedLoginResult:Lcom/facebook/login/x;

    invoke-virtual {v0}, Lcom/facebook/login/x;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->savedLoginResult:Lcom/facebook/login/x;

    invoke-virtual {v0}, Lcom/facebook/login/x;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTwitterAccountAuthenticated()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v2

    .line 488
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchTwitterLoginActivity()V
    .locals 3

    .prologue
    .line 544
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    const v1, 0xddd6

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 546
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->closeLoginToTwitterConfirmationDialog()V

    .line 547
    return-void
.end method

.method private loadCoverImage(Lcom/behance/sdk/project/modules/CoverImage;)V
    .locals 2

    .prologue
    .line 662
    if-eqz p1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/behance/sdk/project/modules/CoverImage;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 664
    :cond_0
    return-void
.end method

.method private populateProjectDetails()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setProjectTitle(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectTagString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setProjectTags(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectFields()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setProjectFields(Ljava/util/List;)V

    .line 808
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getProjectDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setProjectDescription(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setCopyrightOption(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 810
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    iget-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setShareOnFaceBook(Z)V

    .line 811
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    iget-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setShareOnTwitter(Z)V

    .line 812
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->adultContentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setContainsAdultContent(Z)V

    .line 813
    return-void
.end method

.method private setEnabledInfoScreen(Z)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectNameTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectDescEditTxt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectFilterFieldsButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectTagsEditTxt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectCopyrightsButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->adultContentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebookBtnImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitterBtnImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->enableActionBarRightNav()V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->disableActionBarRightNav()V

    goto :goto_0
.end method

.method private setSelectedCreativeFieldsText()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedField:Ljava/util/List;

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKUtils;->getCreativeFieldsString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectFilterFieldsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    return-void
.end method

.method private showProgressBar()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->publishProjectProgressbar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->publishProjectProgressbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_0
    return-void
.end method

.method private updateFacebookAccountAuthStatus()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 470
    .line 471
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->isFacebookAccountAuthenticatedToPublish()Z

    move-result v2

    .line 472
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isUserAuthenticated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 473
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthenticated(Z)V

    .line 479
    :goto_0
    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->updateAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 482
    :cond_0
    return-void

    .line 475
    :cond_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isUserAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v2, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthenticated(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private updateProjectDetailsInUI()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectTitle()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectNameTxtView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectDescription()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectDescEditTxt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectFields()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedField:Ljava/util/List;

    .line 320
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedField:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedField:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->setSelectedCreativeFieldsText()V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectTags()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectTagsEditTxt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 327
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectCopyrightsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->adultContentCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->isProjectContainsAdultContent()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 329
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnFacebookBtnImage()V

    .line 330
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnTwitterBtnImage()V

    .line 331
    return-void
.end method

.method private updateShareOnFacebookBtnImage()V
    .locals 2

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebookBtnImageView:Landroid/widget/ImageView;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_addcontent_publish_shareon_facebook_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebookBtnImageView:Landroid/widget/ImageView;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_addcontent_publish_shareon_facebook_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateShareOnTwitterBtnImage()V
    .locals 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitterBtnImageView:Landroid/widget/ImageView;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_addcontent_publish_shareon_twitter_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitterBtnImageView:Landroid/widget/ImageView;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_addcontent_publish_shareon_twitter_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->enableOrDisablePublishButton()V

    .line 654
    return-void
.end method

.method protected backButtonPressed()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->populateProjectDetails()V

    .line 336
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->hideSoftKeyBoardIfActive(Landroid/view/View;)V

    .line 337
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->backButtonPressed()V

    .line 338
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 645
    return-void
.end method

.method public coverImageChanges(Lcom/behance/sdk/project/modules/CoverImage;)V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loadCoverImage(Lcom/behance/sdk/project/modules/CoverImage;)V

    .line 541
    return-void
.end method

.method protected getBackButtonID()I
    .locals 1

    .prologue
    .line 383
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentTitlebarBackBtnLayout:I

    return v0
.end method

.method protected getForwardButtonID()I
    .locals 1

    .prologue
    .line 393
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentTitlebarActionBtnTxtView:I

    return v0
.end method

.method protected getForwardButtonText()I
    .locals 1

    .prologue
    .line 398
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_content_project_publish_right_navigation:I

    return v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_publish_project_details:I

    return v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 855
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_content_project_publish_title:I

    return v0
.end method

.method protected getTitleViewID()I
    .locals 1

    .prologue
    .line 388
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentTitlebarTitleTxtView:I

    return v0
.end method

.method public handleTwitterAuthenticationFailure()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    iput-boolean v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    .line 637
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnTwitterBtnImage()V

    .line 638
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_social_account_twitter_login_authentication_failure:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 640
    :cond_0
    return-void
.end method

.method public handleTwitterAuthenticationSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 624
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iput-boolean v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    .line 626
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnTwitterBtnImage()V

    .line 628
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    .line 629
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthenticated(Z)V

    .line 630
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->updateAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 632
    :cond_0
    return-void
.end method

.method protected nextButtonPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->invokePublishProjectService()V

    .line 350
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_connection_error_msg:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 347
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 348
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 563
    invoke-super {p0, p1, p2, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 564
    const v0, 0xddd6

    if-ne p1, v0, :cond_0

    .line 565
    packed-switch p2, :pswitch_data_0

    .line 579
    :goto_0
    return-void

    .line 568
    :pswitch_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->handleTwitterAuthenticationFailure()V

    goto :goto_0

    .line 571
    :pswitch_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->handleTwitterAuthenticationSuccess()V

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->callbackManager:Lcom/facebook/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/k;->a(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCopyrightSettingSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 3

    .prologue
    .line 867
    if-eqz p1, :cond_0

    .line 868
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectCopyrightsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->enableOrDisablePublishButton()V

    .line 871
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->savedLoginResult:Lcom/facebook/login/x;

    .line 155
    invoke-static {}, Lcom/facebook/l;->a()Lcom/facebook/k;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->callbackManager:Lcom/facebook/k;

    .line 157
    :try_start_0
    invoke-static {}, Lcom/facebook/login/r;->a()Lcom/facebook/login/r;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->callbackManager:Lcom/facebook/k;

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/r;->a(Lcom/facebook/k;Lcom/facebook/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 178
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->disableActionBarRightNav()V

    .line 180
    invoke-static {}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    .line 181
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    .line 182
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    .line 184
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 185
    const-string/jumbo v0, "HEADLESS_FRAGMENT_TAG_PUBLISH_PROJECT"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    .line 186
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    .line 188
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    const-string/jumbo v3, "HEADLESS_FRAGMENT_TAG_PUBLISH_PROJECT"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;)V

    .line 192
    const-string/jumbo v0, "FRAGMENT_TAG_CREATIVE_FIELDS_FILTER_DIALOG"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 193
    instance-of v2, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    if-eqz v2, :cond_1

    .line 194
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;)V

    .line 197
    :cond_1
    const-string/jumbo v0, "FRAGMENT_TAG_COPYRIGHT_SETTINGS_DIALOG"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 198
    instance-of v1, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;

    if-eqz v1, :cond_2

    .line 199
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentCoverImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->coverImageView:Landroid/widget/ImageView;

    .line 202
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getSelectedCoverImage()Lcom/behance/sdk/project/modules/CoverImage;

    move-result-object v0

    .line 203
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->loadCoverImage(Lcom/behance/sdk/project/modules/CoverImage;)V

    .line 204
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentProjectNameLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 205
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentProjectName:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectNameTxtView:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectNameTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectNameTxtView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getFocusChangeListerForLayout(Landroid/view/View;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentProjectDescription:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectDescEditTxt:Landroid/widget/EditText;

    .line 209
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectDescEditTxt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentCreativeFields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectFilterFieldsButton:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectFilterFieldsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentTags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectTagsEditTxt:Landroid/widget/EditText;

    .line 227
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectTagsEditTxt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentCopyrightSettings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectCopyrightsButton:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->projectCopyrightsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$3;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentAdultContentCheckbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->adultContentCheckBox:Landroid/widget/CheckBox;

    .line 245
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->projectPublishProgressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->publishProjectProgressbar:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentTwitterIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitterBtnImageView:Landroid/widget/ImageView;

    .line 248
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->isHideTwitterSharing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitterBtnImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitterBtnImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$4;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$4;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentFacebookIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebookBtnImageView:Landroid/widget/ImageView;

    .line 260
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->isHideFacebookSharing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebookBtnImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebookBtnImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$5;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$5;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->isHideFacebookSharing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->isHideTwitterSharing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentShareOnLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_5
    if-nez p3, :cond_a

    .line 277
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v0, :cond_8

    .line 278
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v0, :cond_9

    .line 284
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    .line 293
    :goto_2
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    if-eqz v0, :cond_6

    .line 294
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->isFacebookAccountAuthenticatedToPublish()Z

    move-result v0

    if-nez v0, :cond_6

    .line 295
    iput-boolean v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 299
    :cond_6
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    if-eqz v0, :cond_7

    .line 300
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->isTwitterAccountAuthenticated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 301
    iput-boolean v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    .line 305
    :cond_7
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateProjectDetailsInUI()V

    .line 306
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdkPublishProjectPublishFragmentLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKUtils;->setContentViewDimensions(Landroid/content/Context;Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->rootView:Landroid/view/View;

    return-object v0

    .line 280
    :cond_8
    iput-boolean v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    goto :goto_1

    .line 286
    :cond_9
    iput-boolean v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    goto :goto_2

    .line 289
    :cond_a
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getShareOnFaceBook()Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 290
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getShareOnTwitter()Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnTwitter:Z

    goto :goto_2

    .line 173
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onCreativeFieldsSelected(Ljava/util/List;)V
    .locals 0
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
    .line 860
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->selectedField:Ljava/util/List;

    .line 861
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->setSelectedCreativeFieldsText()V

    .line 862
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->enableOrDisablePublishButton()V

    .line 863
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onDetach()V

    .line 361
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;)V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->closeLoginToTwitterConfirmationDialog()V

    .line 365
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->closeLoginToFacebookConfirmationDialog()V

    .line 366
    return-void
.end method

.method public onGetFacebookUserIdComplete(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->shareOnFacebook:Z

    .line 614
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateShareOnFacebookBtnImage()V

    .line 615
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->facebookAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserId(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->updateFacebookAccountAuthStatus()V

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->hideProgressBar()V

    .line 621
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 355
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->populateProjectDetails()V

    .line 356
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onStart()V

    .line 143
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addCoverImageChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$CoverImageChangeListener;)V

    .line 144
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onStop()V

    .line 149
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->workflowManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->removeCoverImageChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$CoverImageChangeListener;)V

    .line 150
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 649
    return-void
.end method
