.class Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$1;
.super Landroid/webkit/WebViewClient;
.source "BehanceSDKLoginToTwitterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;)V

    .line 167
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 155
    if-eqz p2, :cond_0

    const-string/jumbo v0, "com.behance.behance://oauth.callback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;

    invoke-static {v0, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKLoginToTwitterFragment;Ljava/lang/String;)V

    .line 157
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
