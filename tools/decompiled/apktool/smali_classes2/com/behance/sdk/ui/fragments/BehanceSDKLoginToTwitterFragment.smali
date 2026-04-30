.class public Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKLoginToTwitterFragment.java"

# interfaces
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment$Callbacks;


# static fields
.field public static final FRAGMENT_TAG_LOGIN_TO_SOCIAL_CLIENT:Ljava/lang/String; = "FRAGMENT_TAG_LOGIN_TO_SOCIAL_CLIENT"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rootView:Landroid/view/View;

.field private shareProjectOnTwitterHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

.field private toastMessage:Landroid/widget/Toast;

.field private twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

.field private webview:Landroid/webkit/WebView;

.field private webviewSettings:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webview:Landroid/webkit/WebView;

    .line 61
    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webviewSettings:Landroid/webkit/WebSettings;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->retrieveTokenFromURLCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->displayNoInternetConnectivity()V

    return-void
.end method

.method private displayNoInternetConnectivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_connection_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->toastMessage:Landroid/widget/Toast;

    .line 142
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->toastMessage:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 143
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->toastMessage:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 146
    :cond_0
    return-void
.end method

.method private getAuthURLFromTwitter()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v1

    .line 131
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    new-instance v2, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;

    invoke-direct {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;-><init>()V

    .line 133
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;->setConsumerKey(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;->setConsumerSecret(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->shareProjectOnTwitterHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;->getAuthURLFromTwitter(Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;)V

    .line 137
    :cond_0
    return-void
.end method

.method private hideProgressBar()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    :cond_0
    return-void
.end method

.method private retrieveTokenFromURLCallback(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v1

    .line 193
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    new-instance v2, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;

    invoke-direct {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;-><init>()V

    .line 195
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;->setConsumerKey(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;->setConsumerSecret(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;->setAuthURL(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->shareProjectOnTwitterHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;->retrieveAccessTokenFromTwitter(Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 188
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 92
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_login_user_to_social_client:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->rootView:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->rootView:Landroid/view/View;

    sget v3, Lcom/behance/sdk/R$id;->bsdkLoginUserToSocialClientProgressBar:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 96
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v3, "HEADLESS_FRAGMENT_SHARE_PROJECT_ON_TWITTER"

    .line 97
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->shareProjectOnTwitterHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    .line 99
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->shareProjectOnTwitterHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->shareProjectOnTwitterHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    .line 101
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->shareProjectOnTwitterHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    const-string/jumbo v4, "HEADLESS_FRAGMENT_SHARE_PROJECT_ON_TWITTER"

    .line 102
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->shareProjectOnTwitterHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKLoginToTwitterHeadlessFragment$Callbacks;)V

    .line 106
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->displayNoInternetConnectivity()V

    .line 112
    :goto_0
    invoke-static {}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    move-result-object v0

    .line 113
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->twitterAccount:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    .line 115
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->rootView:Landroid/view/View;

    sget v3, Lcom/behance/sdk/R$id;->bsdkLoginUserToSocialClientWebView:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webview:Landroid/webkit/WebView;

    .line 116
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webviewSettings:Landroid/webkit/WebSettings;

    .line 117
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webviewSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webviewSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 119
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webviewSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webviewSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webviewSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 122
    if-eqz v1, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getAuthURLFromTwitter()V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->rootView:Landroid/view/View;

    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public onGetAuthURLFromTwitterFailure(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem retrieving auth URL from Twitter. [Error - %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;->onTwitterAuthenticationFailure(Ljava/lang/Exception;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onGetAuthURLFromTwitterSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;)V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->getAuthURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->getAuthURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 212
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->getAuthURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->setWebViewforAuthorization(Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem retrieving auth URL. AUTH URL retrieved is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->onBackPressed()V

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onRetrieveAccessTokenFromTwitterFailure(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem retrieving access token and secret from Twitter. [Error - %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;->onTwitterAuthenticationFailure(Ljava/lang/Exception;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onRetrieveAccessTokenFromTwitterSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;)V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;->onTwitterAuthenticationSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$Callbacks;

    .line 76
    return-void
.end method

.method public setWebViewforAuthorization(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->hideProgressBar()V

    .line 151
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 171
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 172
    return-void
.end method
