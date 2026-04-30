.class public Lcom/facebook/imagepipeline/k/dh;
.super Ljava/lang/Object;
.source "WebpTranscodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/imagepipeline/memory/aj;

.field private final c:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/k/cl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/memory/aj;",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/dh;->a:Ljava/util/concurrent/Executor;

    .line 53
    invoke-static {p2}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/aj;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/dh;->b:Lcom/facebook/imagepipeline/memory/aj;

    .line 54
    invoke-static {p3}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/k/cl;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/dh;->c:Lcom/facebook/imagepipeline/k/cl;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/d/m/e;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/facebook/imagepipeline/k/dh;->b(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/d/m/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/dh;)Lcom/facebook/imagepipeline/memory/aj;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/dh;->b:Lcom/facebook/imagepipeline/memory/aj;

    return-object v0
.end method

.method private a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/h/d;",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/imagepipeline/h/d;

    move-result-object v6

    .line 103
    new-instance v0, Lcom/facebook/imagepipeline/k/di;

    .line 106
    invoke-interface {p3}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v3

    const-string/jumbo v4, "WebpTranscodeProducer"

    .line 108
    invoke-interface {p3}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/di;-><init>(Lcom/facebook/imagepipeline/k/dh;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/h/d;)V

    .line 151
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/dh;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/memory/al;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/k/dh;->b(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/memory/al;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/dh;Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/k/dh;->a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    return-void
.end method

.method private static b(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/d/m/e;
    .locals 2

    .prologue
    .line 155
    invoke-static {p0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/facebook/g/e;->c(Ljava/io/InputStream;)Lcom/facebook/g/c;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/facebook/g/b;->b(Lcom/facebook/g/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/c;->a()Lcom/facebook/imagepipeline/nativecode/b;

    move-result-object v1

    .line 160
    if-nez v1, :cond_0

    .line 161
    sget-object v0, Lcom/facebook/d/m/e;->b:Lcom/facebook/d/m/e;

    .line 171
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/nativecode/b;->a(Lcom/facebook/g/c;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 163
    :goto_1
    invoke-static {v0}, Lcom/facebook/d/m/e;->a(Z)Lcom/facebook/d/m/e;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 165
    :cond_2
    sget-object v1, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    if-ne v0, v1, :cond_3

    .line 168
    sget-object v0, Lcom/facebook/d/m/e;->c:Lcom/facebook/d/m/e;

    goto :goto_0

    .line 171
    :cond_3
    sget-object v0, Lcom/facebook/d/m/e;->b:Lcom/facebook/d/m/e;

    goto :goto_0
.end method

.method private static b(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/memory/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/facebook/g/e;->c(Ljava/io/InputStream;)Lcom/facebook/g/c;

    move-result-object v1

    .line 179
    sget-object v2, Lcom/facebook/g/b;->e:Lcom/facebook/g/c;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/facebook/g/b;->g:Lcom/facebook/g/c;

    if-ne v1, v2, :cond_1

    .line 181
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/c;->a()Lcom/facebook/imagepipeline/nativecode/b;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v0, p1, v2}, Lcom/facebook/imagepipeline/nativecode/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 185
    sget-object v0, Lcom/facebook/g/b;->a:Lcom/facebook/g/c;

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/g/c;)V

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_1
    sget-object v2, Lcom/facebook/g/b;->f:Lcom/facebook/g/c;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/facebook/g/b;->h:Lcom/facebook/g/c;

    if-ne v1, v2, :cond_3

    .line 189
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/c;->a()Lcom/facebook/imagepipeline/nativecode/b;

    move-result-object v1

    .line 190
    invoke-interface {v1, v0, p1}, Lcom/facebook/imagepipeline/nativecode/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 191
    sget-object v0, Lcom/facebook/g/b;->b:Lcom/facebook/g/c;

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/g/c;)V

    goto :goto_0

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong image format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/dh;->c:Lcom/facebook/imagepipeline/k/cl;

    new-instance v1, Lcom/facebook/imagepipeline/k/dj;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/k/dj;-><init>(Lcom/facebook/imagepipeline/k/dh;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 60
    return-void
.end method
