.class Lcom/facebook/login/z;
.super Ljava/lang/Object;
.source "WebViewLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/i/bh;


# instance fields
.field final synthetic a:Lcom/facebook/login/LoginClient$Request;

.field final synthetic b:Lcom/facebook/login/WebViewLoginMethodHandler;


# direct methods
.method constructor <init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/login/z;->b:Lcom/facebook/login/WebViewLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/z;->a:Lcom/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/facebook/q;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/login/z;->b:Lcom/facebook/login/WebViewLoginMethodHandler;

    iget-object v1, p0, Lcom/facebook/login/z;->a:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/login/WebViewLoginMethodHandler;->a(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/q;)V

    .line 114
    return-void
.end method
