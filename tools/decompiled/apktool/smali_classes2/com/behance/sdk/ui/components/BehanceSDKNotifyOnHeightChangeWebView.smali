.class public Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;
.super Landroid/webkit/WebView;
.source "BehanceSDKNotifyOnHeightChangeWebView.java"


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;

.field private height:I

.field private id:I

.field private notifyOnlyIncrease:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->notifyOnlyIncrease:Z

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->notifyOnlyIncrease:Z

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->notifyOnlyIncrease:Z

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    .line 27
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 40
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->notifyOnlyIncrease:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->getContentHeight()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->getContentHeight()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    if-eq v0, v1, :cond_2

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->getContentHeight()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->callbacks:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->callbacks:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->id:I

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;->onHeightChange(II)V

    .line 45
    :cond_2
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    .line 51
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;I)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->callbacks:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;

    .line 31
    iput p2, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->id:I

    .line 32
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->height:I

    .line 63
    return-void
.end method

.method public setNotifyOnlyIncrease(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->notifyOnlyIncrease:Z

    .line 55
    return-void
.end method
