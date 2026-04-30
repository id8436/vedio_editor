.class public Lcom/facebook/imagepipeline/g/a;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/g/c;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/a/a/d;

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:Lcom/facebook/imagepipeline/j/e;

.field private final d:Lcom/facebook/imagepipeline/g/c;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/g/c;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/a/a/d;Lcom/facebook/imagepipeline/j/e;Landroid/graphics/Bitmap$Config;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/g/a;-><init>(Lcom/facebook/imagepipeline/a/a/d;Lcom/facebook/imagepipeline/j/e;Landroid/graphics/Bitmap$Config;Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/a/a/d;Lcom/facebook/imagepipeline/j/e;Landroid/graphics/Bitmap$Config;Ljava/util/Map;)V
    .locals 1
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/a/a/d;",
            "Lcom/facebook/imagepipeline/j/e;",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/g/c;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/facebook/imagepipeline/g/b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/g/b;-><init>(Lcom/facebook/imagepipeline/g/a;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/g/a;->d:Lcom/facebook/imagepipeline/g/c;

    .line 90
    iput-object p1, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/a/a/d;

    .line 91
    iput-object p3, p0, Lcom/facebook/imagepipeline/g/a;->b:Landroid/graphics/Bitmap$Config;

    .line 92
    iput-object p2, p0, Lcom/facebook/imagepipeline/g/a;->c:Lcom/facebook/imagepipeline/j/e;

    .line 93
    iput-object p4, p0, Lcom/facebook/imagepipeline/g/a;->e:Ljava/util/Map;

    .line 94
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/h/d;ILcom/facebook/imagepipeline/h/g;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->e()Lcom/facebook/g/c;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    if-ne v0, v1, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/facebook/g/e;->c(Ljava/io/InputStream;)Lcom/facebook/g/c;

    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/g/c;)V

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/g/a;->e:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/facebook/imagepipeline/g/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/c;

    .line 119
    if-eqz v0, :cond_2

    .line 120
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/g/c;->a(Lcom/facebook/imagepipeline/h/d;ILcom/facebook/imagepipeline/h/g;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->d:Lcom/facebook/imagepipeline/g/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/g/c;->a(Lcom/facebook/imagepipeline/h/d;ILcom/facebook/imagepipeline/h/g;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v1

    .line 136
    if-nez v1, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 140
    :cond_0
    :try_start_0
    iget-boolean v0, p2, Lcom/facebook/imagepipeline/d/a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/a/a/d;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/a/a/d;

    iget-object v2, p0, Lcom/facebook/imagepipeline/g/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, p1, p2, v2}, Lcom/facebook/imagepipeline/a/a/d;->a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/h/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 146
    invoke-static {v1}, Lcom/facebook/d/d/b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 144
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/g/a;->b(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 146
    invoke-static {v1}, Lcom/facebook/d/d/b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/d/b;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method public b(Lcom/facebook/imagepipeline/h/d;ILcom/facebook/imagepipeline/h/g;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/c;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->c:Lcom/facebook/imagepipeline/j/e;

    iget-object v1, p4, Lcom/facebook/imagepipeline/d/a;->f:Landroid/graphics/Bitmap$Config;

    .line 183
    invoke-interface {v0, p1, v1, p2}, Lcom/facebook/imagepipeline/j/e;->a(Lcom/facebook/imagepipeline/h/d;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 185
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/h/c;

    .line 188
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->f()I

    move-result v2

    invoke-direct {v0, v1, p3, v2}, Lcom/facebook/imagepipeline/h/c;-><init>(Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/h/g;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v1}, Lcom/facebook/d/h/a;->close()V

    .line 185
    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/d/h/a;->close()V

    throw v0
.end method

.method public b(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/c;
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->c:Lcom/facebook/imagepipeline/j/e;

    iget-object v1, p2, Lcom/facebook/imagepipeline/d/a;->f:Landroid/graphics/Bitmap$Config;

    .line 158
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/j/e;->a(Lcom/facebook/imagepipeline/h/d;Landroid/graphics/Bitmap$Config;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 160
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/h/c;

    sget-object v2, Lcom/facebook/imagepipeline/h/f;->a:Lcom/facebook/imagepipeline/h/g;

    .line 163
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->f()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/h/c;-><init>(Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/h/g;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v1}, Lcom/facebook/d/h/a;->close()V

    .line 160
    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/d/h/a;->close()V

    throw v0
.end method

.method public c(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/a/a/d;

    iget-object v1, p0, Lcom/facebook/imagepipeline/g/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/a/a/d;->b(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/h/b;

    move-result-object v0

    return-object v0
.end method
