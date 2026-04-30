.class public Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKImageDisplayGifPageItemFragment.java"


# static fields
.field private static final ARG_URL:Ljava/lang/String; = "ARG_URL"

.field private static final ARG_ZOOM:Ljava/lang/String; = "ARG_ZOOM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;-><init>()V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string/jumbo v2, "ARG_URL"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v2, "ARG_ZOOM"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 32
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_adapter_image_display_gif_item:I

    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "ARG_URL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    sget v0, Lcom/behance/sdk/R$id;->bsdk_imageDisplayGif:I

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 35
    const-string/jumbo v3, "text/html"

    .line 36
    const-string/jumbo v4, "utf-8"

    .line 37
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 38
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 39
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 40
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "ARG_ZOOM"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<html>\n    <head>\n        <style>\n\t\t\thtml, body, #container { width:100%; height:100%; padding:0; margin:0; }\n\t\t\tbody {width:100%; height:100%; }\n            #container { position:absolute; left:0; top:0; width:100%; height:100%; background:#000000; background-size: contain; background-repeat: no-repeat; background-position: center center }\n        </style>\n    </head>\n    <body>\n        <div id=\"container\" style=\"background-image:url(\\"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ")\">\n        </div>\n    </body>\n</html>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    sget v5, Lcom/behance/sdk/R$id;->bsdk_gifImageDisplayActivityProgressSpinnerWrapper:I

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 61
    new-instance v7, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment$1;

    invoke-direct {v7, p0, v5}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    move-object v5, v1

    .line 68
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v6
.end method
