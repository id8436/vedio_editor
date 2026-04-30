.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;
.super Landroid/support/v4/app/Fragment;
.source "AdobeAuthContinuableEventActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdobeAuthContinuableFragment"


# instance fields
.field _errorCondition:Z

.field private _jumpURL:Ljava/lang/String;

.field _loaded:Z

.field _netObserver:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment$NetWorkObserver;

.field private _netReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

.field _proxyCredsEntered:Z

.field _proxyRequired:Z

.field private mAuthViewContainer:Landroid/view/ViewGroup;

.field private mAuthWebView:Landroid/webkit/WebView;

.field mErrorFragment:Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;

.field private mErrorView:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWebViewClient:Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;

.field private tokenReceived:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 223
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netObserver:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment$NetWorkObserver;

    .line 225
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_loaded:Z

    .line 226
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_proxyRequired:Z

    .line 227
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_proxyCredsEntered:Z

    .line 233
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 235
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->tokenReceived:Ljava/lang/Boolean;

    .line 239
    return-void
.end method

.method private _cameOnline()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_hideError()V

    .line 488
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_errorCondition:Z

    .line 489
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->performWork()V

    .line 491
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    const-string/jumbo v2, " _cameOnline"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private _hideError()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 464
    return-void
.end method

.method private _loadURL()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_proxyRequired:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_proxyRequired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_proxyCredsEntered:Z

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_loaded:Z

    if-eqz v0, :cond_1

    .line 424
    :goto_0
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_loaded:Z

    .line 414
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 416
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getLaodingURL()Ljava/net/URL;

    move-result-object v0

    .line 418
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_proxyRequired:Z

    .line 419
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_proxyCredsEntered:Z

    .line 421
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 423
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeAuthContinuableActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Loading URL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _showError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorFragment:Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;->setMessage(Ljava/lang/String;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    return-void
.end method

.method private _wentOffline()V
    .locals 3

    .prologue
    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_loaded:Z

    .line 469
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_common_error_view_no_internet_connection:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_showError(Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    const-string/jumbo v2, " _wentOffline"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_wentOffline()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_cameOnline()V

    return-void
.end method

.method private hidewebView()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 366
    :cond_0
    return-void
.end method

.method private performWork()V
    .locals 0

    .prologue
    .line 476
    .line 478
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->showWebviewWithJumpUrl()V

    .line 479
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_loadURL()V

    .line 481
    return-void
.end method

.method private showSpinner()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 360
    :cond_0
    return-void
.end method

.method private showWebviewWithJumpUrl()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 268
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    .line 270
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setClipChildren(Z)V

    .line 271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 272
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 279
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mWebViewClient:Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;

    .line 280
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mWebViewClient:Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method getLaodingURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 396
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_jumpURL:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-object v0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public handleBackPressed()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 354
    :cond_0
    return-void
.end method

.method handleError()V
    .locals 3

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_errorCondition:Z

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_loaded:Z

    .line 442
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_wentOffline()V

    .line 444
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    const-string/jumbo v2, " Handle error condition offline"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_common_error_view_unknown_authenticate_error:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_showError(Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    const-string/jumbo v2, " Webpage error"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleTOUAcceptance()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->tokenReceived:Ljava/lang/Boolean;

    .line 340
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->showSpinner()V

    .line 341
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->hidewebView()V

    .line 342
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_hideError()V

    .line 343
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 347
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V

    .line 349
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->JUMP_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_jumpURL:Ljava/lang/String;

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->setRetainInstance(Z)V

    .line 248
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 260
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$layout;->adobe_csdk_ux_auth_fragment_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 254
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 256
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 321
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 326
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 327
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 370
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 371
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment$NetWorkObserver;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment$NetWorkObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netObserver:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment$NetWorkObserver;

    .line 372
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netObserver:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment$NetWorkObserver;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 373
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->startNotification(Landroid/content/Context;)Z

    .line 374
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_cameOnline()V

    .line 379
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    const-string/jumbo v2, "Started continuable event page"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_wentOffline()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 384
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 385
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->destorySharedInstance()V

    .line 387
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netObserver:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment$NetWorkObserver;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netObserver:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment$NetWorkObserver;

    .line 390
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    const-string/jumbo v2, "Stopped continuable event page"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 288
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_creativesdk_foundation_auth_webview_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthViewContainer:Landroid/view/ViewGroup;

    .line 289
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 295
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mWebViewClient:Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 298
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorFragment:Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;

    .line 299
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_creativesdk_foundation_auth_signin_error:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorFragment:Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 301
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_creativesdk_foundation_auth_progressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 302
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_creativesdk_foundation_auth_signin_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorView:Landroid/view/View;

    .line 304
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_netReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 305
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method pageLoaded()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 427
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    const-string/jumbo v2, " Page loaded"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->_errorCondition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->tokenReceived:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 432
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    const-string/jumbo v2, " No Error Condition"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_0
    return-void
.end method

.method public shouldHandleBackPressed()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mErrorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->mAuthWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
