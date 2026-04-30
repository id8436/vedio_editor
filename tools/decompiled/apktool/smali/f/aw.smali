.class public final Lf/aw;
.super Ljava/lang/Object;
.source "Retrofit.java"


# instance fields
.field final a:Ld/h;

.field final b:Ld/ai;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lf/l;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lf/i;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final f:Z

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lf/az",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ld/h;Ld/ai;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V
    .locals 1
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/h;",
            "Ld/ai;",
            "Ljava/util/List",
            "<",
            "Lf/l;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lf/i;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lf/aw;->g:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lf/aw;->a:Ld/h;

    .line 74
    iput-object p2, p0, Lf/aw;->b:Ld/ai;

    .line 75
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/aw;->c:Ljava/util/List;

    .line 76
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/aw;->d:Ljava/util/List;

    .line 77
    iput-object p5, p0, Lf/aw;->e:Ljava/util/concurrent/Executor;

    .line 78
    iput-boolean p6, p0, Lf/aw;->f:Z

    .line 79
    return-void
.end method

.method private b(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lf/ap;->a()Lf/ap;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 157
    invoke-virtual {v1, v4}, Lf/ap;->a(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    invoke-virtual {p0, v4}, Lf/aw;->a(Ljava/lang/reflect/Method;)Lf/az;

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ld/h;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lf/aw;->a:Ld/h;

    return-object v0
.end method

.method a(Ljava/lang/reflect/Method;)Lf/az;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lf/az",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lf/aw;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/az;

    .line 165
    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v1, p0, Lf/aw;->g:Ljava/util/Map;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lf/aw;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/az;

    .line 169
    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lf/ba;

    invoke-direct {v0, p0, p1}, Lf/ba;-><init>(Lf/aw;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Lf/ba;->a()Lf/az;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lf/aw;->g:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lf/i;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lf/h;
    .locals 5
    .param p1    # Lf/i;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lf/h",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 216
    const-string/jumbo v0, "returnType == null"

    invoke-static {p2, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v0, "annotations == null"

    invoke-static {p3, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lf/aw;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 220
    iget-object v0, p0, Lf/aw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 221
    iget-object v0, p0, Lf/aw;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i;

    invoke-virtual {v0, p2, p3, p0}, Lf/i;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/h;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    return-object v0

    .line 220
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not locate call adapter for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".\n"

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    if-eqz p1, :cond_3

    .line 231
    const-string/jumbo v0, "  Skipped:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 233
    const-string/jumbo v0, "\n   * "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lf/aw;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 235
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    const-string/jumbo v0, "  Tried:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v0, p0, Lf/aw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    .line 239
    const-string/jumbo v0, "\n   * "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lf/aw;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 241
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lf/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lf/h",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lf/aw;->a(Lf/i;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lf/l;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lf/k;
    .locals 5
    .param p1    # Lf/l;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/l;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lf/k",
            "<",
            "Ld/bf;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 324
    const-string/jumbo v0, "type == null"

    invoke-static {p2, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v0, "annotations == null"

    invoke-static {p3, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 328
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 329
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    .line 330
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/l;

    invoke-virtual {v0, p2, p3, p0}, Lf/l;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/k;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 333
    return-object v0

    .line 328
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 337
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not locate ResponseBody converter for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".\n"

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 340
    if-eqz p1, :cond_3

    .line 341
    const-string/jumbo v0, "  Skipped:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 343
    const-string/jumbo v0, "\n   * "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 345
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_3
    const-string/jumbo v0, "  Tried:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    .line 349
    const-string/jumbo v0, "\n   * "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 351
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lf/l;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lf/k;
    .locals 5
    .param p1    # Lf/l;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/l;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lf/k",
            "<TT;",
            "Ld/az;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const-string/jumbo v0, "type == null"

    invoke-static {p2, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v0, "parameterAnnotations == null"

    invoke-static {p3, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v0, "methodAnnotations == null"

    invoke-static {p4, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 279
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 280
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/l;

    .line 282
    invoke-virtual {v0, p2, p3, p4, p0}, Lf/l;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/k;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 285
    return-object v0

    .line 279
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not locate RequestBody converter for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".\n"

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    if-eqz p1, :cond_3

    .line 293
    const-string/jumbo v0, "  Skipped:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 295
    const-string/jumbo v0, "\n   * "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 297
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    :cond_3
    const-string/jumbo v0, "  Tried:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    .line 301
    const-string/jumbo v0, "\n   * "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 303
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lf/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lf/k",
            "<TT;",
            "Ld/az;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lf/aw;->a(Lf/l;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lf/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lf/bb;->a(Ljava/lang/Class;)V

    .line 130
    iget-boolean v0, p0, Lf/aw;->f:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, p1}, Lf/aw;->b(Ljava/lang/Class;)V

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lf/ax;

    invoke-direct {v2, p0, p1}, Lf/ax;-><init>(Lf/aw;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ld/ai;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lf/aw;->b:Ld/ai;

    return-object v0
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lf/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lf/k",
            "<",
            "Ld/bf;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lf/aw;->a(Lf/l;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lf/k;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lf/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lf/k",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    const-string/jumbo v0, "type == null"

    invoke-static {p1, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v0, "annotations == null"

    invoke-static {p2, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const/4 v0, 0x0

    iget-object v1, p0, Lf/aw;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 363
    iget-object v0, p0, Lf/aw;->c:Ljava/util/List;

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/l;

    invoke-virtual {v0, p1, p2, p0}, Lf/l;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/k;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 373
    :goto_1
    return-object v0

    .line 362
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 373
    :cond_1
    sget-object v0, Lf/e;->a:Lf/e;

    goto :goto_1
.end method
