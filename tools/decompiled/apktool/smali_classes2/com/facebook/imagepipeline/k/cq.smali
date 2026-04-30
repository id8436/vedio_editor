.class Lcom/facebook/imagepipeline/k/cq;
.super Lcom/facebook/imagepipeline/k/w;
.source "ResizeAndRotateProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cp;

.field private final b:Lcom/facebook/imagepipeline/k/cm;

.field private c:Z

.field private final d:Lcom/facebook/imagepipeline/k/al;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/cp;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 4
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
    .line 94
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cq;->a:Lcom/facebook/imagepipeline/k/cp;

    .line 95
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/k/cq;->c:Z

    .line 97
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 99
    new-instance v0, Lcom/facebook/imagepipeline/k/cr;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/k/cr;-><init>(Lcom/facebook/imagepipeline/k/cq;Lcom/facebook/imagepipeline/k/cp;)V

    .line 105
    new-instance v1, Lcom/facebook/imagepipeline/k/al;

    invoke-static {p1}, Lcom/facebook/imagepipeline/k/cp;->a(Lcom/facebook/imagepipeline/k/cp;)Ljava/util/concurrent/Executor;

    move-result-object v2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/imagepipeline/k/al;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/k/ap;I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/k/cq;->d:Lcom/facebook/imagepipeline/k/al;

    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    new-instance v1, Lcom/facebook/imagepipeline/k/cs;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/k/cs;-><init>(Lcom/facebook/imagepipeline/k/cq;Lcom/facebook/imagepipeline/k/cp;Lcom/facebook/imagepipeline/k/o;)V

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/cm;->a(Lcom/facebook/imagepipeline/k/cn;)V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cq;)Lcom/facebook/imagepipeline/k/cm;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    return-object v0
.end method

.method private a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/l/a;IIII)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/h/d;",
            "Lcom/facebook/imagepipeline/l/a;",
            "IIII)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v1

    iget v1, v1, Lcom/facebook/imagepipeline/d/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v1

    iget v1, v1, Lcom/facebook/imagepipeline/d/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 238
    :goto_1
    if-lez p3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/8"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 240
    const-string/jumbo v4, "Original size"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v2, "Requested size"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v1, "Fraction"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v0, "queueTime"

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cq;->d:Lcom/facebook/imagepipeline/k/al;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/k/al;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v0, "downsampleEnumerator"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v0, "softwareEnumerator"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v0, "rotationAngle"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {v3}, Lcom/facebook/d/d/e;->a(Ljava/util/Map;)Lcom/facebook/d/d/e;

    move-result-object v0

    goto/16 :goto_0

    .line 235
    :cond_1
    const-string/jumbo v0, "Unspecified"

    move-object v1, v0

    goto :goto_1

    .line 238
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cq;Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cq;->b(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cq;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/k/cq;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/cq;)Lcom/facebook/imagepipeline/k/al;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->d:Lcom/facebook/imagepipeline/k/al;

    return-object v0
.end method

.method private b(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 157
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ResizeAndRotateProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v2

    .line 159
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->a:Lcom/facebook/imagepipeline/k/cp;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cp;->c(Lcom/facebook/imagepipeline/k/cp;)Lcom/facebook/imagepipeline/memory/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/aj;->b()Lcom/facebook/imagepipeline/memory/al;

    move-result-object v8

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->a:Lcom/facebook/imagepipeline/k/cp;

    .line 167
    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cp;->b(Lcom/facebook/imagepipeline/k/cp;)Z

    move-result v0

    .line 164
    invoke-static {v2, p1, v0}, Lcom/facebook/imagepipeline/k/cp;->b(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)I

    move-result v5

    .line 168
    invoke-static {v2, p1}, Lcom/facebook/imagepipeline/k/ad;->a(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;)I

    move-result v0

    .line 169
    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cp;->a(I)I

    move-result v4

    .line 171
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->a:Lcom/facebook/imagepipeline/k/cp;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cp;->d(Lcom/facebook/imagepipeline/k/cp;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    .line 176
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/l/a;->g()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/k/cp;->a(Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/h/d;)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/cq;->a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/l/a;IIII)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 184
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 185
    const/16 v0, 0x55

    :try_start_2
    invoke-static {v1, v8, v6, v3, v0}, Lcom/facebook/imagepipeline/nativecode/JpegTranscoder;->a(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    .line 192
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/memory/al;->c()Lcom/facebook/imagepipeline/memory/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v3

    .line 194
    :try_start_3
    new-instance v4, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v4, v3}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/h/a;)V

    .line 195
    sget-object v0, Lcom/facebook/g/b;->a:Lcom/facebook/g/c;

    invoke-virtual {v4, v0}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/g/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    :try_start_4
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/h/d;->l()V

    .line 198
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 199
    invoke-interface {v5}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ResizeAndRotateProducer"

    invoke-interface {v0, v5, v6, v2}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cq;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, v4, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    :try_start_5
    invoke-static {v4}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 205
    :try_start_6
    invoke-static {v3}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 213
    invoke-static {v1}, Lcom/facebook/d/d/b;->a(Ljava/io/InputStream;)V

    .line 214
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/memory/al;->close()V

    .line 216
    :goto_1
    return-void

    :cond_0
    move v3, v5

    .line 174
    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-static {v4}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 205
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v3}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 207
    :catch_0
    move-exception v0

    move-object v7, v2

    .line 208
    :goto_2
    :try_start_9
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 209
    invoke-interface {v3}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ResizeAndRotateProducer"

    invoke-interface {v2, v3, v4, v0, v7}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 210
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cq;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 213
    invoke-static {v1}, Lcom/facebook/d/d/b;->a(Ljava/io/InputStream;)V

    .line 214
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/memory/al;->close()V

    goto :goto_1

    .line 213
    :catchall_2
    move-exception v0

    move-object v1, v7

    :goto_3
    invoke-static {v1}, Lcom/facebook/d/d/b;->a(Ljava/io/InputStream;)V

    .line 214
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/memory/al;->close()V

    throw v0

    .line 213
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 207
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v7

    move-object v7, v2

    goto :goto_2
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 3
    .param p1    # Lcom/facebook/imagepipeline/h/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/cq;->c:Z

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-nez p1, :cond_2

    .line 131
    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cq;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 137
    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cq;->a:Lcom/facebook/imagepipeline/k/cp;

    invoke-static {v1}, Lcom/facebook/imagepipeline/k/cp;->b(Lcom/facebook/imagepipeline/k/cp;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/facebook/imagepipeline/k/cp;->a(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)Lcom/facebook/d/m/e;

    move-result-object v0

    .line 139
    if-nez p2, :cond_3

    sget-object v1, Lcom/facebook/d/m/e;->c:Lcom/facebook/d/m/e;

    if-eq v0, v1, :cond_0

    .line 143
    :cond_3
    sget-object v1, Lcom/facebook/d/m/e;->a:Lcom/facebook/d/m/e;

    if-eq v0, v1, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cq;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->d:Lcom/facebook/imagepipeline/k/al;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/k/al;->a(Lcom/facebook/imagepipeline/h/d;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cq;->d:Lcom/facebook/imagepipeline/k/al;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/al;->b()Z

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cq;->a(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method
