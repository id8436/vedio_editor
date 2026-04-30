.class public Lcom/facebook/imagepipeline/k/bw;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

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
.field private final a:Lcom/facebook/imagepipeline/memory/aj;

.field private final b:Lcom/facebook/imagepipeline/memory/j;

.field private final c:Lcom/facebook/imagepipeline/k/by;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/memory/j;Lcom/facebook/imagepipeline/k/by;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bw;->a:Lcom/facebook/imagepipeline/memory/aj;

    .line 59
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bw;->b:Lcom/facebook/imagepipeline/memory/j;

    .line 60
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/bw;->c:Lcom/facebook/imagepipeline/k/by;

    .line 61
    return-void
.end method

.method private static a(II)F
    .locals 6

    .prologue
    .line 118
    if-lez p1, :cond_0

    .line 119
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    neg-int v1, p0

    int-to-double v2, v1

    const-wide v4, 0x40e86a0000000000L    # 50000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(Lcom/facebook/imagepipeline/k/ah;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ah;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->d()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bw;->c:Lcom/facebook/imagepipeline/k/by;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/by;->b(Lcom/facebook/imagepipeline/k/ah;I)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/imagepipeline/k/ah;)V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->d()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->a()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    .line 185
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/k/ah;Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-lez p3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bw;->a:Lcom/facebook/imagepipeline/memory/aj;

    invoke-interface {v0, p3}, Lcom/facebook/imagepipeline/memory/aj;->b(I)Lcom/facebook/imagepipeline/memory/al;

    move-result-object v0

    move-object v1, v0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bw;->b:Lcom/facebook/imagepipeline/memory/j;

    const/16 v2, 0x4000

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/memory/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 101
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    .line 102
    if-lez v2, :cond_0

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/imagepipeline/memory/al;->write([BII)V

    .line 104
    invoke-direct {p0, v1, p1}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/memory/al;Lcom/facebook/imagepipeline/k/ah;)V

    .line 105
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/al;->b()I

    move-result v2

    invoke-static {v2, p3}, Lcom/facebook/imagepipeline/k/bw;->a(II)F

    move-result v2

    .line 106
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->a()Lcom/facebook/imagepipeline/k/o;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/k/o;->b(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bw;->b:Lcom/facebook/imagepipeline/memory/j;

    invoke-interface {v3, v0}, Lcom/facebook/imagepipeline/memory/j;->a(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/al;->close()V

    throw v2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bw;->a:Lcom/facebook/imagepipeline/memory/aj;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/aj;->b()Lcom/facebook/imagepipeline/memory/al;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 109
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bw;->c:Lcom/facebook/imagepipeline/k/by;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/al;->b()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/facebook/imagepipeline/k/by;->a(Lcom/facebook/imagepipeline/k/ah;I)V

    .line 110
    invoke-direct {p0, v1, p1}, Lcom/facebook/imagepipeline/k/bw;->b(Lcom/facebook/imagepipeline/memory/al;Lcom/facebook/imagepipeline/k/ah;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bw;->b:Lcom/facebook/imagepipeline/memory/j;

    invoke-interface {v2, v0}, Lcom/facebook/imagepipeline/memory/j;->a(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/al;->close()V

    .line 115
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/k/ah;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->d()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 178
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->a()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/bw;Lcom/facebook/imagepipeline/k/ah;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/k/ah;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/bw;Lcom/facebook/imagepipeline/k/ah;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/k/ah;Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/bw;Lcom/facebook/imagepipeline/k/ah;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/k/ah;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/memory/al;Lcom/facebook/imagepipeline/k/ah;)V
    .locals 6

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 140
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/bw;->b(Lcom/facebook/imagepipeline/k/ah;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/ah;->f()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 142
    invoke-virtual {p2, v0, v1}, Lcom/facebook/imagepipeline/k/ah;->a(J)V

    .line 143
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/ah;->d()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/ah;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NetworkFetchProducer"

    const-string/jumbo v3, "intermediate_result"

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/ah;->a()Lcom/facebook/imagepipeline/k/o;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/memory/al;ZLcom/facebook/imagepipeline/k/o;)V

    .line 147
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/memory/al;ZLcom/facebook/imagepipeline/k/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/al;",
            "Z",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/al;->c()Lcom/facebook/imagepipeline/memory/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;

    move-result-object v3

    .line 164
    const/4 v2, 0x0

    .line 166
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v1, v3}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/h/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/h/d;->l()V

    .line 168
    invoke-interface {p3, v1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    invoke-static {v1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 171
    invoke-static {v3}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 173
    return-void

    .line 170
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 171
    invoke-static {v3}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0

    .line 170
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/facebook/imagepipeline/memory/al;Lcom/facebook/imagepipeline/k/ah;)V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/al;->b()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/k/ah;I)Ljava/util/Map;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/ah;->d()Lcom/facebook/imagepipeline/k/co;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/ah;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NetworkFetchProducer"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/ah;->a()Lcom/facebook/imagepipeline/k/o;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/memory/al;ZLcom/facebook/imagepipeline/k/o;)V

    .line 156
    return-void
.end method

.method private b(Lcom/facebook/imagepipeline/k/ah;)Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/k/ah;->b()Lcom/facebook/imagepipeline/k/cm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bw;->c:Lcom/facebook/imagepipeline/k/by;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/k/by;->a(Lcom/facebook/imagepipeline/k/ah;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 3
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
    .line 65
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    .line 66
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NetworkFetchProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bw;->c:Lcom/facebook/imagepipeline/k/by;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/by;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)Lcom/facebook/imagepipeline/k/ah;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bw;->c:Lcom/facebook/imagepipeline/k/by;

    new-instance v2, Lcom/facebook/imagepipeline/k/bx;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/k/bx;-><init>(Lcom/facebook/imagepipeline/k/bw;Lcom/facebook/imagepipeline/k/ah;)V

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/k/by;->a(Lcom/facebook/imagepipeline/k/ah;Lcom/facebook/imagepipeline/k/bz;)V

    .line 85
    return-void
.end method
