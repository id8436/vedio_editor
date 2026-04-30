.class public Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;
.super Ljava/lang/Object;
.source "BehanceSDKPublishTextUtils.java"


# static fields
.field public static final TEXT_EDITOR_FILE_NAME_CONFIG:Ljava/lang/String; = "text_editor_config.txt"

.field private static final TEXT_EDITOR_FILE_NAME_HTML:Ljava/lang/String; = "BehanceSDKTextEditorHTML.html"

.field public static final TEXT_EDITOR_FILE_NAME_JAVASCRIPT:Ljava/lang/String; = "text_editor_js.txt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignCenter(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 147
    const-string/jumbo v0, "setAlignmentCenter()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static alignLeft(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "setAlignmentLeft()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static alignRight(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "setAlignmentRight()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static blur(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "blur()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private static callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getEditor()."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private static callJS(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 89
    new-instance v0, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils$1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public static checkEmpty(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "checkEmpty()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static clearFormatting(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 187
    const-string/jumbo v0, "removeFormat()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static clearSelection(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "clearSelection()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static focus(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 107
    const-string/jumbo v0, "focus()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static getState(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 191
    const-string/jumbo v0, "getEditorState()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static getTextEditorHTML(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "BehanceSDKTextEditorHTML.html"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 65
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 66
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 67
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 71
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "@android_textEditorJavaScript"

    const-string/jumbo v2, "text_editor_js.txt"

    invoke-static {p0, v2}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->readFileFromDisk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "@android_config"

    const-string/jumbo v2, "text_editor_config.txt"

    invoke-static {p0, v2}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->readFileFromDisk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public static moveCursorToEnd(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "selectEditEnd()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static prepTextEditor(Landroid/content/Context;Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;)V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;

    invoke-direct {v0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;)V

    .line 37
    new-instance v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;

    invoke-direct {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;-><init>()V

    .line 38
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDK;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->setClientId(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->setContext(Landroid/content/Context;)V

    .line 41
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-void
.end method

.method private static readFileFromDisk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 53
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static setColor(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColor(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#%06X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static setFont(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFontFamily(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static setLink(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const-string/jumbo v0, "removeLink()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 164
    :try_start_0
    const-string/jumbo v0, "href"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string/jumbo v0, "target"

    const-string/jumbo v2, "_blank"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createLink(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setStyle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBlockStyle(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static setText(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setData(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static setTextSize(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFontSize(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "px\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static setupTextEditWebView(Landroid/webkit/WebView;Landroid/content/Context;Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 83
    new-instance v0, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;

    invoke-direct {v0, p2}, Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge;-><init>(Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;)V

    const-string/jumbo v1, "Android"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "file:///android_asset/"

    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getTextEditorHTML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static toggleBold(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 127
    const-string/jumbo v0, "toggleBold()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static toggleItalic(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 131
    const-string/jumbo v0, "toggleItalic()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static toggleUnderline(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 135
    const-string/jumbo v0, "toggleUnderline()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static toggleUppercase(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "toggleUppercase()"

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->callEditorJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static writeFileToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 47
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 48
    return-void
.end method
