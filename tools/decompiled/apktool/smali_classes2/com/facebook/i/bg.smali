.class Lcom/facebook/i/bg;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# instance fields
.field final synthetic a:Lcom/facebook/i/ba;


# direct methods
.method private constructor <init>(Lcom/facebook/i/ba;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/i/ba;Lcom/facebook/i/bb;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/facebook/i/bg;-><init>(Lcom/facebook/i/ba;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-static {v0}, Lcom/facebook/i/ba;->b(Lcom/facebook/i/ba;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-static {v0}, Lcom/facebook/i/ba;->c(Lcom/facebook/i/ba;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-static {v0}, Lcom/facebook/i/ba;->d(Lcom/facebook/i/ba;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 526
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-static {v0}, Lcom/facebook/i/ba;->e(Lcom/facebook/i/ba;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-static {v0}, Lcom/facebook/i/ba;->f(Lcom/facebook/i/ba;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/i/ba;->a(Lcom/facebook/i/ba;Z)Z

    .line 529
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 508
    const-string/jumbo v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/i/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 510
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-static {v0}, Lcom/facebook/i/ba;->b(Lcom/facebook/i/ba;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-static {v0}, Lcom/facebook/i/ba;->c(Lcom/facebook/i/ba;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 513
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    new-instance v1, Lcom/facebook/p;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/i/ba;->a(Ljava/lang/Throwable;)V

    .line 492
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 499
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 501
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 502
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    new-instance v1, Lcom/facebook/p;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/i/ba;->a(Ljava/lang/Throwable;)V

    .line 504
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 432
    const-string/jumbo v1, "FacebookSDK.WebDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Redirect URL: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/i/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-static {v1}, Lcom/facebook/i/ba;->a(Lcom/facebook/i/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 434
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-virtual {v0, p2}, Lcom/facebook/i/ba;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 436
    const-string/jumbo v0, "error"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    if-nez v0, :cond_0

    .line 438
    const-string/jumbo v0, "error_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    :cond_0
    const-string/jumbo v1, "error_msg"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    if-nez v1, :cond_1

    .line 443
    const-string/jumbo v1, "error_message"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    :cond_1
    if-nez v1, :cond_2

    .line 446
    const-string/jumbo v1, "error_description"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    :cond_2
    const-string/jumbo v2, "error_code"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {v2}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 452
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 458
    :goto_0
    invoke-static {v0}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 459
    invoke-static {v1}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v2, v3, :cond_4

    .line 460
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-virtual {v0, v5}, Lcom/facebook/i/ba;->a(Landroid/os/Bundle;)V

    :goto_1
    move v0, v4

    .line 483
    :cond_3
    :goto_2
    return v0

    .line 453
    :catch_0
    move-exception v2

    move v2, v3

    .line 454
    goto :goto_0

    .line 461
    :cond_4
    if-eqz v0, :cond_6

    const-string/jumbo v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "OAuthAccessDeniedException"

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-virtual {v0}, Lcom/facebook/i/ba;->cancel()V

    goto :goto_1

    .line 464
    :cond_6
    const/16 v3, 0x1069

    if-ne v2, v3, :cond_7

    .line 465
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-virtual {v0}, Lcom/facebook/i/ba;->cancel()V

    goto :goto_1

    .line 467
    :cond_7
    new-instance v3, Lcom/facebook/s;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/s;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    new-instance v2, Lcom/facebook/ac;

    invoke-direct {v2, v3, v1}, Lcom/facebook/ac;-><init>(Lcom/facebook/s;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/i/ba;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 471
    :cond_8
    const-string/jumbo v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 472
    iget-object v0, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-virtual {v0}, Lcom/facebook/i/ba;->cancel()V

    move v0, v4

    .line 473
    goto :goto_2

    .line 474
    :cond_9
    const-string/jumbo v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 479
    :try_start_1
    iget-object v1, p0, Lcom/facebook/i/bg;->a:Lcom/facebook/i/ba;

    invoke-virtual {v1}, Lcom/facebook/i/ba;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    .line 480
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 479
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    .line 481
    goto :goto_2

    .line 482
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_0
.end method
