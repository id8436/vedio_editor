.class public Lcom/a/a/a/a/a;
.super Ljava/lang/Object;
.source "CachedJobQueue.java"

# interfaces
.implements Lcom/a/a/a/aa;


# instance fields
.field private a:Lcom/a/a/a/aa;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/a/a/a/aa;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    .line 24
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0}, Lcom/a/a/a/aa;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/a/a/j;)I
    .locals 1
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/a/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/j;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/a/a/a/s;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->a(Ljava/lang/String;)Lcom/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/a/a/s;Lcom/a/a/a/s;)V
    .locals 1
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/a/a/a/a/a;->c()V

    .line 45
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1, p2}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/s;Lcom/a/a/a/s;)V

    .line 46
    return-void
.end method

.method public a(Lcom/a/a/a/s;)Z
    .locals 1
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/a/a/a/a/a;->c()V

    .line 29
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/s;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/a/a/a/j;)Lcom/a/a/a/s;
    .locals 2
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/a/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->b(Lcom/a/a/a/j;)Lcom/a/a/a/s;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/a/a;->b:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/a/a/a/a/a;->c()V

    .line 94
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0}, Lcom/a/a/a/aa;->b()V

    .line 95
    return-void
.end method

.method public b(Lcom/a/a/a/s;)Z
    .locals 1
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/a/a/a/a/a;->c()V

    .line 39
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->b(Lcom/a/a/a/s;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/a/a/a/j;)Ljava/lang/Long;
    .locals 1
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->c(Lcom/a/a/a/j;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/a/a/a/s;)V
    .locals 1
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/a/a/a/a/a;->c()V

    .line 51
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->c(Lcom/a/a/a/s;)V

    .line 52
    return-void
.end method

.method public d(Lcom/a/a/a/j;)Ljava/util/Set;
    .locals 1
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/j;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/a/a/a/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->d(Lcom/a/a/a/j;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/a/a/a/s;)V
    .locals 1
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/a/a/a/a/a;->c()V

    .line 106
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->d(Lcom/a/a/a/s;)V

    .line 107
    return-void
.end method
