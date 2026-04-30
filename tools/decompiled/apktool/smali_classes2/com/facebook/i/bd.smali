.class Lcom/facebook/i/bd;
.super Landroid/webkit/WebView;
.source "WebDialog.java"


# instance fields
.field final synthetic a:Lcom/facebook/i/ba;


# direct methods
.method constructor <init>(Lcom/facebook/i/ba;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/facebook/i/bd;->a:Lcom/facebook/i/ba;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 395
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    goto :goto_0
.end method
