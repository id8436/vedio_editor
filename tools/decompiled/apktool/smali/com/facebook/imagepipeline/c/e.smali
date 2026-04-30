.class public Lcom/facebook/imagepipeline/c/e;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheKey.java"

# interfaces
.implements Lcom/facebook/c/a/f;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/imagepipeline/d/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/imagepipeline/d/e;

.field private final d:Lcom/facebook/imagepipeline/d/a;

.field private final e:Lcom/facebook/c/a/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final g:I

.field private final h:Ljava/lang/Object;

.field private final i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/imagepipeline/d/d;Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/d/a;Lcom/facebook/c/a/f;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p2    # Lcom/facebook/imagepipeline/d/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/c/a/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/imagepipeline/d/d;

    .line 54
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/e;->c:Lcom/facebook/imagepipeline/d/e;

    .line 55
    iput-object p4, p0, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/imagepipeline/d/a;

    .line 56
    iput-object p5, p0, Lcom/facebook/imagepipeline/c/e;->e:Lcom/facebook/c/a/f;

    .line 57
    iput-object p6, p0, Lcom/facebook/imagepipeline/c/e;->f:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/d/d;->hashCode()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 61
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/d/e;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/imagepipeline/d/a;

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/e;->e:Lcom/facebook/c/a/f;

    move-object v5, p6

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/facebook/d/m/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/c/e;->g:I

    .line 65
    iput-object p7, p0, Lcom/facebook/imagepipeline/c/e;->h:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/facebook/d/l/b;->a()Lcom/facebook/d/l/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/d/l/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/c/e;->i:J

    .line 67
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    instance-of v1, p1, Lcom/facebook/imagepipeline/c/e;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/c/e;

    .line 75
    iget v1, p0, Lcom/facebook/imagepipeline/c/e;->g:I

    iget v2, p1, Lcom/facebook/imagepipeline/c/e;->g:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/imagepipeline/d/d;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/imagepipeline/d/d;

    .line 77
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->c:Lcom/facebook/imagepipeline/d/e;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/e;->c:Lcom/facebook/imagepipeline/d/e;

    .line 78
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/imagepipeline/d/a;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/imagepipeline/d/a;

    .line 79
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->e:Lcom/facebook/c/a/f;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/e;->e:Lcom/facebook/c/a/f;

    .line 80
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/e;->f:Ljava/lang/String;

    .line 81
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/facebook/imagepipeline/c/e;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v1, "%s_%s_%s_%s_%s_%s_%d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/imagepipeline/d/d;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/e;->c:Lcom/facebook/imagepipeline/d/e;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/imagepipeline/d/a;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/e;->e:Lcom/facebook/c/a/f;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/e;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/facebook/imagepipeline/c/e;->g:I

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 106
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
