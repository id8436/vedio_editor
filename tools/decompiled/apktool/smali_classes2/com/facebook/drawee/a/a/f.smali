.class public Lcom/facebook/drawee/a/a/f;
.super Lcom/facebook/drawee/c/d;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/c/d",
        "<",
        "Lcom/facebook/drawee/a/a/f;",
        "Lcom/facebook/imagepipeline/l/a;",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;",
        "Lcom/facebook/imagepipeline/h/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/e/g;

.field private final b:Lcom/facebook/drawee/a/a/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/a/a/i;Lcom/facebook/imagepipeline/e/g;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/drawee/a/a/i;",
            "Lcom/facebook/imagepipeline/e/g;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/c/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p4}, Lcom/facebook/drawee/c/d;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 52
    iput-object p3, p0, Lcom/facebook/drawee/a/a/f;->a:Lcom/facebook/imagepipeline/e/g;

    .line 53
    iput-object p2, p0, Lcom/facebook/drawee/a/a/f;->b:Lcom/facebook/drawee/a/a/i;

    .line 54
    return-void
.end method

.method public static a(Lcom/facebook/drawee/c/g;)Lcom/facebook/imagepipeline/l/c;
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lcom/facebook/drawee/a/a/g;->a:[I

    invoke-virtual {p0}, Lcom/facebook/drawee/c/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cache level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is not supported. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    sget-object v0, Lcom/facebook/imagepipeline/l/c;->a:Lcom/facebook/imagepipeline/l/c;

    .line 138
    :goto_0
    return-object v0

    .line 136
    :pswitch_1
    sget-object v0, Lcom/facebook/imagepipeline/l/c;->b:Lcom/facebook/imagepipeline/l/c;

    goto :goto_0

    .line 138
    :pswitch_2
    sget-object v0, Lcom/facebook/imagepipeline/l/c;->d:Lcom/facebook/imagepipeline/l/c;

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private q()Lcom/facebook/c/a/f;
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/l/a;

    .line 98
    iget-object v1, p0, Lcom/facebook/drawee/a/a/f;->a:Lcom/facebook/imagepipeline/e/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/g;->b()Lcom/facebook/imagepipeline/c/k;

    move-result-object v2

    .line 99
    const/4 v1, 0x0

    .line 100
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->o()Lcom/facebook/imagepipeline/l/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->e()Ljava/lang/Object;

    move-result-object v1

    .line 102
    invoke-interface {v2, v0, v1}, Lcom/facebook/imagepipeline/c/k;->b(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->e()Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-interface {v2, v0, v1}, Lcom/facebook/imagepipeline/c/k;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/facebook/drawee/a/a/d;
    .locals 5

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->j()Lcom/facebook/drawee/h/a;

    move-result-object v0

    .line 79
    instance-of v1, v0, Lcom/facebook/drawee/a/a/d;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/facebook/drawee/a/a/d;

    .line 82
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->o()Lcom/facebook/d/d/m;

    move-result-object v1

    .line 83
    invoke-static {}, Lcom/facebook/drawee/a/a/f;->n()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-direct {p0}, Lcom/facebook/drawee/a/a/f;->q()Lcom/facebook/c/a/f;

    move-result-object v3

    .line 85
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->e()Ljava/lang/Object;

    move-result-object v4

    .line 81
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/drawee/a/a/d;->a(Lcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/f;Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/a/a/f;->b:Lcom/facebook/drawee/a/a/i;

    .line 88
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->o()Lcom/facebook/d/d/m;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/facebook/drawee/a/a/f;->n()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-direct {p0}, Lcom/facebook/drawee/a/a/f;->q()Lcom/facebook/c/a/f;

    move-result-object v3

    .line 91
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->e()Ljava/lang/Object;

    move-result-object v4

    .line 87
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/drawee/a/a/i;->a(Lcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/f;Ljava/lang/Object;)Lcom/facebook/drawee/a/a/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)Lcom/facebook/drawee/a/a/f;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/facebook/drawee/c/d;->b(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/a/a/f;

    .line 64
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/l/d;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/facebook/imagepipeline/d/e;->b()Lcom/facebook/imagepipeline/d/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/l/d;->a(Lcom/facebook/imagepipeline/d/e;)Lcom/facebook/imagepipeline/l/d;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/d;->n()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    .line 64
    invoke-super {p0, v0}, Lcom/facebook/drawee/c/d;->b(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/a/a/f;

    goto :goto_0
.end method

.method protected a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Lcom/facebook/drawee/c/g;)Lcom/facebook/e/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/l/a;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/c/g;",
            ")",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/drawee/a/a/f;->a:Lcom/facebook/imagepipeline/e/g;

    .line 122
    invoke-static {p3}, Lcom/facebook/drawee/a/a/f;->a(Lcom/facebook/drawee/c/g;)Lcom/facebook/imagepipeline/l/c;

    move-result-object v1

    .line 119
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/e/g;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Lcom/facebook/imagepipeline/l/c;)Lcom/facebook/e/f;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/c/g;)Lcom/facebook/e/f;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lcom/facebook/imagepipeline/l/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/a/a/f;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Lcom/facebook/drawee/c/g;)Lcom/facebook/e/f;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lcom/facebook/drawee/a/a/f;
    .locals 0

    .prologue
    .line 127
    return-object p0
.end method

.method public synthetic b(Landroid/net/Uri;)Lcom/facebook/drawee/h/d;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/f;->a(Landroid/net/Uri;)Lcom/facebook/drawee/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Lcom/facebook/drawee/c/d;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->b()Lcom/facebook/drawee/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Lcom/facebook/drawee/c/a;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/f;->a()Lcom/facebook/drawee/a/a/d;

    move-result-object v0

    return-object v0
.end method
