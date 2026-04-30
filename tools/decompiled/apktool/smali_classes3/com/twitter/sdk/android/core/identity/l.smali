.class public Lcom/twitter/sdk/android/core/identity/l;
.super Ljava/lang/Object;
.source "TwitterAuthClient.java"


# instance fields
.field final a:Lcom/twitter/sdk/android/core/af;

.field final b:Lcom/twitter/sdk/android/core/identity/b;

.field final c:Lcom/twitter/sdk/android/core/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/u",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/af;->c()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/af;->f()Lcom/twitter/sdk/android/core/u;

    move-result-object v2

    invoke-static {}, Lcom/twitter/sdk/android/core/identity/m;->a()Lcom/twitter/sdk/android/core/identity/b;

    move-result-object v3

    .line 72
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/identity/l;-><init>(Lcom/twitter/sdk/android/core/af;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/identity/b;)V

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/af;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/identity/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/af;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/u",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;",
            "Lcom/twitter/sdk/android/core/identity/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/l;->a:Lcom/twitter/sdk/android/core/af;

    .line 79
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Lcom/twitter/sdk/android/core/identity/b;

    .line 80
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/l;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 81
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/l;->c:Lcom/twitter/sdk/android/core/u;

    .line 82
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/n;)Z
    .locals 4

    .prologue
    .line 124
    invoke-static {p1}, Lcom/twitter/sdk/android/core/identity/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Using SSO"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/k;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/l;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/l;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 127
    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->c()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/k;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/c;I)V

    .line 126
    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/l;->c()V

    .line 109
    new-instance v0, Lcom/twitter/sdk/android/core/identity/n;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/l;->c:Lcom/twitter/sdk/android/core/u;

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/identity/n;-><init>(Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/c;)V

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/l;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/n;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/l;->b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/n;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/twitter/sdk/android/core/z;

    const-string/jumbo v2, "Authorize failed."

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/identity/n;->failure(Lcom/twitter/sdk/android/core/ah;)V

    .line 114
    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/n;)Z
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Using OAuth"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/g;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/l;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/l;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 136
    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->c()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/g;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/c;I)V

    .line 135
    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/l;->b()Lcom/twitter/sdk/android/core/internal/scribe/a;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/f;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;-><init>()V

    const-string/jumbo v2, "android"

    .line 144
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/f;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v1

    const-string/jumbo v2, "login"

    .line 145
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/f;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 146
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/f;->c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 147
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/f;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 148
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/f;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v1

    const-string/jumbo v2, "impression"

    .line 149
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/f;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->a()Lcom/twitter/sdk/android/core/internal/scribe/e;

    move-result-object v1

    .line 152
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twitter/sdk/android/core/internal/scribe/e;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a([Lcom/twitter/sdk/android/core/internal/scribe/e;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/l;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->c()I

    move-result v0

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Authorize not in progress"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/b;->c()Lcom/twitter/sdk/android/core/identity/a;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/a;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/b;->a()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-nez p2, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Cannot authorize, activity is finishing."

    const/4 v3, 0x0

    .line 101
    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/l;->b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V

    goto :goto_0
.end method

.method protected b()Lcom/twitter/sdk/android/core/internal/scribe/a;
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/an;->a()Lcom/twitter/sdk/android/core/internal/scribe/a;

    move-result-object v0

    return-object v0
.end method
