.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKEmbedViewerDialogFragment.java"


# static fields
.field public static final ARGS_EXTRA_EMBED:Ljava/lang/String; = "ARGS_EXTRA_EMBED"


# instance fields
.field private bsdkDialogEmbedViewerWebview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkDialogBaseTheme_FullScreen:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;->setStyle(II)V

    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_fragment_dialog_embed_viewer:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 34
    sget v0, Lcom/behance/sdk/R$id;->bsdk_dialog_embed_viewer_webview:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;->bsdkDialogEmbedViewerWebview:Landroid/webkit/WebView;

    .line 35
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;->bsdkDialogEmbedViewerWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 37
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "ARGS_EXTRA_EMBED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "ARGS_EXTRA_EMBED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;->bsdkDialogEmbedViewerWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 41
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 42
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 44
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<html><head><meta name=\"viewport\" content=\"width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 47
    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorEmbedUtils;->getWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"/></head><body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorEmbedUtils;->setHtmlPosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedViewerDialogFragment;->bsdkDialogEmbedViewerWebview:Landroid/webkit/WebView;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-object v6
.end method
