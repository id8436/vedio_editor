.class final Lcom/behance/sdk/util/BehanceSDKPublishTextUtils$1;
.super Ljava/lang/Object;
.source "BehanceSDKPublishTextUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$function:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils$1;->val$webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils$1;->val$function:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils$1;->val$webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils$1;->val$function:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 93
    return-void
.end method
