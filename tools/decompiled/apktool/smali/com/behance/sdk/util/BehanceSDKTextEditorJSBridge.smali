.class public Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;
.super Ljava/lang/Object;
.source "BehanceSDKTextEditorJSBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    .line 23
    return-void
.end method


# virtual methods
.method public onBlur()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-interface {v0}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onBlur()V

    .line 46
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBlur"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public onEditorLoaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-interface {v0}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onEditorLoaded()V

    .line 64
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEditorLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onEmptyCheck(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-interface {v0, p1}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onEmptyCheck(Z)V

    .line 85
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEmptyCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onFocus()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-interface {v0}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onFocus()V

    .line 40
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public onKeyUp()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-interface {v0}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onKeyUp()V

    .line 58
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onKeyUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public onLoadComplete()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-interface {v0}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onLoadComplete()V

    .line 34
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLoadComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public onSelectionChanged(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-interface {v0, p1}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onSelectionChanged(Z)V

    .line 52
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSelectionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public onStateFetched(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-static {p1}, Lcom/behance/sdk/dto/parser/BehanceSDKTextSelectionStateParser;->parseState(Ljava/lang/String;)Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onSelectionStateFetched(Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateFetched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStateUpdated()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStateUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->callbacks:Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;

    invoke-interface {v0, p1}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;->onTextChanged(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method
