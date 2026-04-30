.class Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment$1;
.super Landroid/webkit/WebViewClient;
.source "BehanceSDKImageDisplayGifPageItemFragment.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;

.field final synthetic val$loader:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment$1;->val$loader:Landroid/view/View;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment$1;->val$loader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method
