.class public final Lcom/a/a/a/c/c;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private a:Ljava/util/regex/Pattern;

.field private b:Lcom/a/a/a/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const-string/jumbo v0, "^([A-Za-z]|[0-9]|_|-)+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/c;->a:Ljava/util/regex/Pattern;

    .line 160
    new-instance v0, Lcom/a/a/a/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a/c/a;-><init>(Lcom/a/a/a/c/b;)V

    iput-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    .line 161
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/a/c/a;->f:Landroid/content/Context;

    .line 162
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a/c/a;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    iget-object v0, v0, Lcom/a/a/a/c/a;->g:Lcom/a/a/a/ad;

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    new-instance v1, Lcom/a/a/a/p;

    invoke-direct {v1}, Lcom/a/a/a/p;-><init>()V

    iput-object v1, v0, Lcom/a/a/a/c/a;->g:Lcom/a/a/a/ad;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    iget-object v0, v0, Lcom/a/a/a/c/a;->i:Lcom/a/a/a/h/c;

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    new-instance v1, Lcom/a/a/a/h/d;

    iget-object v2, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    iget-object v2, v2, Lcom/a/a/a/c/a;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/a/a/a/h/d;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/a/a/a/c/a;->i:Lcom/a/a/a/h/c;

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    iget-object v0, v0, Lcom/a/a/a/c/a;->k:Lcom/a/a/a/k/b;

    if-nez v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    new-instance v1, Lcom/a/a/a/k/a;

    invoke-direct {v1}, Lcom/a/a/a/k/a;-><init>()V

    iput-object v1, v0, Lcom/a/a/a/c/a;->k:Lcom/a/a/a/k/b;

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/a/a/a/c/c;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/c/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "id cannot be null or empty and can only include alphanumeric characters, - or _ ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/c;->b:Lcom/a/a/a/c/a;

    iput-object p1, v0, Lcom/a/a/a/c/a;->a:Ljava/lang/String;

    .line 182
    return-object p0
.end method
