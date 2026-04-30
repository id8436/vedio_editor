.class public Lcom/b/a/l;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/b/a/e/j;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/b/a/e/i;

.field private final c:Lcom/b/a/e/p;

.field private final d:Lcom/b/a/e/q;

.field private final e:Lcom/b/a/h;

.field private final f:Lcom/b/a/q;

.field private g:Lcom/b/a/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/e/i;Lcom/b/a/e/p;)V
    .locals 6

    .prologue
    .line 53
    new-instance v4, Lcom/b/a/e/q;

    invoke-direct {v4}, Lcom/b/a/e/q;-><init>()V

    new-instance v5, Lcom/b/a/e/e;

    invoke-direct {v5}, Lcom/b/a/e/e;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/a/l;-><init>(Landroid/content/Context;Lcom/b/a/e/i;Lcom/b/a/e/p;Lcom/b/a/e/q;Lcom/b/a/e/e;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/b/a/e/i;Lcom/b/a/e/p;Lcom/b/a/e/q;Lcom/b/a/e/e;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/l;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/b/a/l;->b:Lcom/b/a/e/i;

    .line 60
    iput-object p3, p0, Lcom/b/a/l;->c:Lcom/b/a/e/p;

    .line 61
    iput-object p4, p0, Lcom/b/a/l;->d:Lcom/b/a/e/q;

    .line 62
    invoke-static {p1}, Lcom/b/a/h;->a(Landroid/content/Context;)Lcom/b/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/l;->e:Lcom/b/a/h;

    .line 63
    new-instance v0, Lcom/b/a/q;

    invoke-direct {v0, p0}, Lcom/b/a/q;-><init>(Lcom/b/a/l;)V

    iput-object v0, p0, Lcom/b/a/l;->f:Lcom/b/a/q;

    .line 65
    new-instance v0, Lcom/b/a/r;

    invoke-direct {v0, p4}, Lcom/b/a/r;-><init>(Lcom/b/a/e/q;)V

    invoke-virtual {p5, p1, v0}, Lcom/b/a/e/e;->a(Landroid/content/Context;Lcom/b/a/e/d;)Lcom/b/a/e/c;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/b/a/j/h;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/b/a/m;

    invoke-direct {v2, p0, p2}, Lcom/b/a/m;-><init>(Lcom/b/a/l;Lcom/b/a/e/i;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_0
    invoke-interface {p2, v0}, Lcom/b/a/e/i;->a(Lcom/b/a/e/j;)V

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lcom/b/a/e/i;->a(Lcom/b/a/e/j;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/l;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Lcom/b/a/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/b/a/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/b/a/l;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/b/a/h;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/b/a/d/c/s;

    move-result-object v2

    .line 626
    iget-object v0, p0, Lcom/b/a/l;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/b/a/h;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/b/a/d/c/s;

    move-result-object v3

    .line 628
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-object v9, p0, Lcom/b/a/l;->f:Lcom/b/a/q;

    new-instance v0, Lcom/b/a/d;

    iget-object v4, p0, Lcom/b/a/l;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/b/a/l;->e:Lcom/b/a/h;

    iget-object v6, p0, Lcom/b/a/l;->d:Lcom/b/a/e/q;

    iget-object v7, p0, Lcom/b/a/l;->b:Lcom/b/a/e/i;

    iget-object v8, p0, Lcom/b/a/l;->f:Lcom/b/a/q;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/b/a/d;-><init>(Ljava/lang/Class;Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;Landroid/content/Context;Lcom/b/a/h;Lcom/b/a/e/q;Lcom/b/a/e/i;Lcom/b/a/q;)V

    invoke-virtual {v9, v0}, Lcom/b/a/q;->a(Lcom/b/a/e;)Lcom/b/a/e;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/b/a/l;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/l;)Lcom/b/a/h;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/l;->e:Lcom/b/a/h;

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 641
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/b/a/l;)Lcom/b/a/e/q;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/l;->d:Lcom/b/a/e/q;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/l;)Lcom/b/a/e/i;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/l;->b:Lcom/b/a/e/i;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/l;)Lcom/b/a/q;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/l;->f:Lcom/b/a/q;

    return-object v0
.end method

.method static synthetic f(Lcom/b/a/l;)Lcom/b/a/n;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/l;->g:Lcom/b/a/n;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/b/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/b/a/d",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/b/a/l;->e()Lcom/b/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/d;->a(Ljava/lang/Object;)Lcom/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    return-object v0
.end method

.method public a(Ljava/io/File;)Lcom/b/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/b/a/d",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/b/a/l;->f()Lcom/b/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/d;->a(Ljava/lang/Object;)Lcom/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/b/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/b/a/l;->d()Lcom/b/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/d;->a(Ljava/lang/Object;)Lcom/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    return-object v0
.end method

.method public a(Lcom/b/a/d/c/s;Ljava/lang/Class;)Lcom/b/a/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/d/c/s",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/b/a/o",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/b/a/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/o;-><init>(Lcom/b/a/l;Lcom/b/a/d/c/s;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/b/a/l;->e:Lcom/b/a/h;

    invoke-virtual {v0}, Lcom/b/a/h;->h()V

    .line 96
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/b/a/l;->e:Lcom/b/a/h;

    invoke-virtual {v0, p1}, Lcom/b/a/h;->a(I)V

    .line 89
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 148
    iget-object v0, p0, Lcom/b/a/l;->d:Lcom/b/a/e/q;

    invoke-virtual {v0}, Lcom/b/a/e/q;->a()V

    .line 149
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 180
    iget-object v0, p0, Lcom/b/a/l;->d:Lcom/b/a/e/q;

    invoke-virtual {v0}, Lcom/b/a/e/q;->b()V

    .line 181
    return-void
.end method

.method public d()Lcom/b/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/b/a/l;->a(Ljava/lang/Class;)Lcom/b/a/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/b/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    const-class v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/b/a/l;->a(Ljava/lang/Class;)Lcom/b/a/d;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/b/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/b/a/l;->a(Ljava/lang/Class;)Lcom/b/a/d;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/b/a/l;->d:Lcom/b/a/e/q;

    invoke-virtual {v0}, Lcom/b/a/e/q;->c()V

    .line 222
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/b/a/l;->c()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/b/a/l;->b()V

    .line 213
    return-void
.end method
