.class public Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BehanceSDKLoginToTwitterActivity.java"

# interfaces
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;


# static fields
.field public static final TWITTER_ACTIVITY_LOGIN_FAILED:I = 0x0

.field public static final TWITTER_ACTIVITY_LOGIN_SUCCESSFULL:I = 0x1

.field public static final TWITTER_ACTIVITY_NO_NETWORK_CONNECTIVITY:I = 0x2

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_login_user_to_social_client:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;->setContentView(I)V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;

    invoke-direct {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;-><init>()V

    .line 28
    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/behance/sdk/R$id;->bsdkLoginUserToSocialClientFragmentContainer:I

    const-string/jumbo v3, "FRAGMENT_TAG_LOGIN_TO_SOCIAL_CLIENT"

    .line 31
    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    invoke-virtual {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;)V

    .line 35
    :cond_0
    return-void
.end method

.method public onTwitterAuthenticationFailure(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    sget-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Error while Authenticating User on Twitter. [error: %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v4}, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;->finish()V

    .line 48
    return-void
.end method

.method public onTwitterAuthenticationSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;->setResult(I)V

    .line 40
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKLoginToTwitterActivity;->finish()V

    .line 41
    return-void
.end method
