.class Lcom/facebook/login/ab;
.super Lcom/facebook/i/bf;
.source "WebViewLoginMethodHandler.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 226
    const-string/jumbo v0, "oauth"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/i/bf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/i/ba;
    .locals 6

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/facebook/login/ab;->e()Landroid/os/Bundle;

    move-result-object v3

    .line 242
    const-string/jumbo v0, "redirect_uri"

    const-string/jumbo v1, "fbconnect://success"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v0, "client_id"

    invoke-virtual {p0}, Lcom/facebook/login/ab;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v0, "e2e"

    iget-object v1, p0, Lcom/facebook/login/ab;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v0, "response_type"

    const-string/jumbo v1, "token,signed_request"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v0, "return_scopes"

    const-string/jumbo v1, "true"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-boolean v0, p0, Lcom/facebook/login/ab;->b:Z

    if-eqz v0, :cond_0

    .line 254
    const-string/jumbo v0, "auth_type"

    const-string/jumbo v1, "rerequest"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    new-instance v0, Lcom/facebook/i/ba;

    invoke-virtual {p0}, Lcom/facebook/login/ab;->c()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "oauth"

    invoke-virtual {p0}, Lcom/facebook/login/ab;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/login/ab;->f()Lcom/facebook/i/bh;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/i/ba;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/i/bh;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/login/ab;
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/login/ab;->a:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public a(Z)Lcom/facebook/login/ab;
    .locals 0

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/facebook/login/ab;->b:Z

    .line 236
    return-object p0
.end method
