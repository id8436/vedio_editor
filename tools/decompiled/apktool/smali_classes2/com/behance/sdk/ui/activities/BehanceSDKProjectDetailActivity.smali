.class public Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BehanceSDKProjectDetailActivity.java"

# interfaces
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$Callbacks;


# static fields
.field private static final FRAGMENT_TAG_PROJECT_DETAIL:Ljava/lang/String; = "FRAGMENT_PROJECT_DETAIL"

.field private static final FRAGMENT_TAG_RETRIEVE_BEHANCE_USER_DETAILS_USING_ADOBE_ID:Ljava/lang/String; = "FRAGMENT_TAG_RETRIEVE_BEHANCE_USER_DETAILS_USING_ADOBE_ID"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;

.field private static retrieveBehanceUserDetailHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;


# instance fields
.field private activeProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

.field private behanceSDK:Lcom/behance/sdk/BehanceSDK;

.field private projectDetailFragment:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

.field projectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 47
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    return-void
.end method

.method private loadProjectDetailFragment()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->projectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string/jumbo v1, "ARG_PROJECT_ID"

    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-direct {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;-><init>()V

    iput-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->projectDetailFragment:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    .line 98
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->projectDetailFragment:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$id;->item_detail_container:I

    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->projectDetailFragment:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    const-string/jumbo v3, "FRAGMENT_PROJECT_DETAIL"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_problem_loading_project_details_msg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->finish()V

    goto :goto_0
.end method

.method private removeProjectDetailFragment()V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 111
    const-string/jumbo v2, "FRAGMENT_PROJECT_DETAIL"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 115
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 116
    return-void
.end method

.method private retrieveBehanceUserDetailsUsingAdobeId()V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "FRAGMENT_TAG_RETRIEVE_BEHANCE_USER_DETAILS_USING_ADOBE_ID"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->retrieveBehanceUserDetailHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;

    .line 120
    sget-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->retrieveBehanceUserDetailHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;-><init>()V

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->retrieveBehanceUserDetailHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;

    .line 122
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->retrieveBehanceUserDetailHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;

    const-string/jumbo v2, "FRAGMENT_TAG_RETRIEVE_BEHANCE_USER_DETAILS_USING_ADOBE_ID"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 124
    :cond_0
    sget-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->retrieveBehanceUserDetailHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;)V

    .line 125
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;-><init>()V

    .line 126
    sget-object v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->retrieveBehanceUserDetailHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveBehanceUserDetailsUsingAdobeID(Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;)V

    .line 127
    return-void
.end method


# virtual methods
.method public getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->activeProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_project_detail:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->setContentView(I)V

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getPhoneOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->setRequestedOrientation(I)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ARG_PROJECT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->projectId:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->retrieveBehanceUserDetailsUsingAdobeId()V

    .line 64
    if-nez p1, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->loadProjectDetailFragment()V

    .line 68
    :cond_1
    return-void
.end method

.method public onFailureToLoadProjectDetails(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onRetrieveBehanceUserDetailsFailure(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onRetrieveBehanceUserDetailsSuccess(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 3

    .prologue
    .line 132
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->setUserDTO(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem retrieving Behance user details using Adobe ID"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 81
    return-void
.end method

.method public onSuccessfulLoadOfProjectDetails(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 91
    return-void
.end method

.method public setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->activeProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 76
    return-void
.end method
