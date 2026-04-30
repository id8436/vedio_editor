.class Lcom/twitter/sdk/android/core/internal/oauth/j;
.super Ljava/lang/Object;
.source "OAuthService.java"

# interfaces
.implements Ld/al;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/oauth/i;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/i;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/j;->a:Lcom/twitter/sdk/android/core/internal/oauth/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Ld/am;)Ld/bd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v0

    invoke-virtual {v0}, Ld/ax;->e()Ld/ay;

    move-result-object v0

    const-string/jumbo v1, "User-Agent"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/j;->a:Lcom/twitter/sdk/android/core/internal/oauth/i;

    .line 55
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/oauth/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 57
    invoke-interface {p1, v0}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    return-object v0
.end method
