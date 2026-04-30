.class Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdobeAuthContinuableEventActivity.java"


# instance fields
.field continuableView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;->continuableView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    .line 51
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 55
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAuthContinuableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageFinished:Webpage ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;->continuableView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->pageLoaded()V

    .line 57
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "device_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/ContinuableWebViewClient;->continuableView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->handleTOUAcceptance()V

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
