.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$4;
.super Landroid/webkit/WebViewClient;
.source "BehanceSDKProjectDetailRecyclerAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;I)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    iput p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$4;->val$pos:I

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$4;->val$pos:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 333
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 327
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
