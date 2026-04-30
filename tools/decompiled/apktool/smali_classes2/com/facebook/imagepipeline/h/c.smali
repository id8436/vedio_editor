.class public Lcom/facebook/imagepipeline/h/c;
.super Lcom/facebook/imagepipeline/h/a;
.source "CloseableStaticBitmap.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/d/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/h/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile b:Landroid/graphics/Bitmap;

.field private final c:Lcom/facebook/imagepipeline/h/g;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/facebook/d/h/i;Lcom/facebook/imagepipeline/h/g;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/d/h/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/h/g;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/imagepipeline/h/a;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    .line 51
    iget-object v1, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    .line 53
    invoke-static {p2}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/h/i;

    .line 51
    invoke-static {v1, v0}, Lcom/facebook/d/h/a;->a(Ljava/lang/Object;Lcom/facebook/d/h/i;)Lcom/facebook/d/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/c;->a:Lcom/facebook/d/h/a;

    .line 54
    iput-object p3, p0, Lcom/facebook/imagepipeline/h/c;->c:Lcom/facebook/imagepipeline/h/g;

    .line 55
    iput p4, p0, Lcom/facebook/imagepipeline/h/c;->d:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/h/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/h/g;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/imagepipeline/h/a;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/facebook/d/h/a;->c()Lcom/facebook/d/h/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/h/a;

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/c;->a:Lcom/facebook/d/h/a;

    .line 69
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->a:Lcom/facebook/d/h/a;

    invoke-virtual {v0}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    .line 70
    iput-object p2, p0, Lcom/facebook/imagepipeline/h/c;->c:Lcom/facebook/imagepipeline/h/g;

    .line 71
    iput p3, p0, Lcom/facebook/imagepipeline/h/c;->d:I

    .line 72
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 153
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized i()Lcom/facebook/d/h/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/h/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->a:Lcom/facebook/d/h/a;

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/h/c;->a:Lcom/facebook/d/h/a;

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/h/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->a:Lcom/facebook/d/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/facebook/imagepipeline/h/g;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->c:Lcom/facebook/imagepipeline/h/g;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/facebook/imagepipeline/h/c;->i()Lcom/facebook/d/h/a;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/facebook/d/h/a;->close()V

    .line 83
    :cond_0
    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/facebook/imagepipeline/h/c;->d:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/h/c;->d:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/h/c;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/h/c;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/facebook/imagepipeline/h/c;->d:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/h/c;->d:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/h/c;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/c;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/h/c;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/facebook/imagepipeline/h/c;->d:I

    return v0
.end method
