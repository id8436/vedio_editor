.class public Lcom/twitter/sdk/android/core/internal/a/a;
.super Ljava/lang/Object;
.source "GuestAuthInterceptor.java"

# interfaces
.implements Ld/al;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/g;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/g;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a/a;->a:Lcom/twitter/sdk/android/core/g;

    .line 39
    return-void
.end method

.method static a(Ld/ay;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Ld/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    .line 60
    const-string/jumbo v0, "x-guest-token"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ld/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    .line 61
    return-void
.end method


# virtual methods
.method public intercept(Ld/am;)Ld/bd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v1

    .line 45
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a/a;->a:Lcom/twitter/sdk/android/core/g;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/g;->a()Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v1}, Ld/ax;->e()Ld/ay;

    move-result-object v1

    .line 49
    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/internal/a/a;->a(Ld/ay;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 50
    invoke-virtual {v1}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    invoke-interface {p1, v0}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    .line 53
    :goto_1
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/e;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p1, v1}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    goto :goto_1
.end method
