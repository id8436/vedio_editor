.class public abstract Lcom/a/a/a/r;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_RETRY_LIMIT:I = 0x14

.field static final SINGLE_ID_TAG_PREFIX:Ljava/lang/String; = "job-single-id:"

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private transient applicationContext:Landroid/content/Context;

.field private transient cancelOnDeadline:Z

.field volatile transient cancelled:Z

.field private transient currentRunCount:I

.field private transient deadlineInMs:J

.field private transient delayInMs:J

.field private transient groupId:Ljava/lang/String;

.field private transient id:Ljava/lang/String;

.field private volatile transient isDeadlineReached:Z

.field private transient persistent:Z

.field transient priority:I

.field private transient readonlyTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field transient requiredNetworkType:I

.field private volatile transient sealed:Z


# direct methods
.method protected constructor <init>(Lcom/a/a/a/ac;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/r;->id:Ljava/lang/String;

    .line 56
    iget v0, p1, Lcom/a/a/a/ac;->a:I

    iput v0, p0, Lcom/a/a/a/r;->requiredNetworkType:I

    .line 57
    invoke-virtual {p1}, Lcom/a/a/a/ac;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/a/r;->persistent:Z

    .line 58
    invoke-virtual {p1}, Lcom/a/a/a/ac;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/r;->groupId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/a/a/a/ac;->f()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/r;->priority:I

    .line 60
    invoke-virtual {p1}, Lcom/a/a/a/ac;->g()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/r;->delayInMs:J

    .line 61
    invoke-virtual {p1}, Lcom/a/a/a/ac;->h()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/r;->deadlineInMs:J

    .line 62
    invoke-virtual {p1}, Lcom/a/a/a/ac;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/a/r;->cancelOnDeadline:Z

    .line 63
    invoke-virtual {p1}, Lcom/a/a/a/ac;->d()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/a/a/a/ac;->i()Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/a/ac;->i()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/ac;->i()Ljava/util/HashSet;

    move-result-object v0

    .line 66
    :goto_0
    if-eqz v1, :cond_1

    .line 67
    invoke-direct {p0, v1}, Lcom/a/a/a/r;->createTagForSingleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lcom/a/a/a/r;->groupId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 70
    iput-object v1, p0, Lcom/a/a/a/r;->groupId:Ljava/lang/String;

    .line 73
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/r;->readonlyTags:Ljava/util/Set;

    .line 75
    :cond_2
    iget-wide v0, p0, Lcom/a/a/a/r;->deadlineInMs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/a/a/a/r;->deadlineInMs:J

    iget-wide v2, p0, Lcom/a/a/a/r;->delayInMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deadline cannot be less than the delay. It does not make sense. deadline:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/a/a/a/r;->deadlineInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/a/a/a/r;->delayInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 81
    :cond_4
    return-void
.end method

.method private createTagForSingleId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "job-single-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/a/a/a/r;->sealed:Z

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A job cannot be serialized w/o first being added into a job manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public assertNotCancelled()V
    .locals 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/a/a/a/r;->cancelled:Z

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "job is cancelled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/a/a/a/r;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentRunCount()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/a/a/a/r;->currentRunCount:I

    return v0
.end method

.method getDeadlineInMs()J
    .locals 2

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/a/a/a/r;->deadlineInMs:J

    return-wide v0
.end method

.method public final getDelayInMs()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/a/a/a/r;->delayInMs:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/a/a/a/r;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/a/a/a/r;->priority:I

    return v0
.end method

.method protected getRetryLimit()I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0x14

    return v0
.end method

.method public final getRunGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/a/a/a/r;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSingleInstanceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/a/a/a/r;->readonlyTags:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/a/a/a/r;->readonlyTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    const-string/jumbo v2, "job-single-id:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/a/a/a/r;->readonlyTags:Ljava/util/Set;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/a/a/a/r;->cancelled:Z

    return v0
.end method

.method public isDeadlineReached()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/a/a/a/r;->isDeadlineReached:Z

    return v0
.end method

.method public final isPersistent()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/a/a/a/r;->persistent:Z

    return v0
.end method

.method public abstract onAdded()V
.end method

.method protected abstract onCancel(ILjava/lang/Throwable;)V
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final requiresNetwork()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 406
    iget v1, p0, Lcom/a/a/a/r;->requiredNetworkType:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final requiresUnmeteredNetwork()Z
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Lcom/a/a/a/r;->requiredNetworkType:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final safeRun(Lcom/a/a/a/s;ILcom/a/a/a/k/b;)I
    .locals 12

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    iput p2, p0, Lcom/a/a/a/r;->currentRunCount:I

    .line 221
    invoke-static {}, Lcom/a/a/a/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string/jumbo v0, "running job %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_0
    const/4 v0, 0x0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a/r;->onRun()V

    .line 230
    invoke-static {}, Lcom/a/a/a/f/b;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    const-string/jumbo v3, "finished job %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v3, v0

    move v4, v2

    move v5, v2

    move v0, v2

    .line 254
    :goto_0
    const-string/jumbo v9, "safeRunResult for %s : %s. re run:%s. cancelled: %s"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p0, v10, v2

    if-nez v4, :cond_2

    move v2, v1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v8

    iget-boolean v2, p0, Lcom/a/a/a/r;->cancelled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v6

    invoke-static {v9, v10}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    if-nez v4, :cond_7

    .line 277
    :goto_1
    return v1

    .line 233
    :catch_0
    move-exception v3

    .line 236
    const-string/jumbo v0, "error while executing job %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v3, v0, v4}, Lcom/a/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p1}, Lcom/a/a/a/s;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {p1}, Lcom/a/a/a/s;->g()J

    move-result-wide v4

    invoke-interface {p3}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v10

    cmp-long v0, v4, v10

    if-gtz v0, :cond_4

    move v0, v1

    .line 239
    :goto_2
    invoke-virtual {p0}, Lcom/a/a/a/r;->getRetryLimit()I

    move-result v4

    if-ge p2, v4, :cond_5

    if-nez v0, :cond_5

    move v4, v1

    .line 240
    :goto_3
    if-eqz v4, :cond_6

    iget-boolean v5, p0, Lcom/a/a/a/r;->cancelled:Z

    if-nez v5, :cond_6

    .line 243
    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/a/r;->getRetryLimit()I

    move-result v5

    .line 242
    invoke-virtual {p0, v3, p2, v5}, Lcom/a/a/a/r;->shouldReRunOnThrowable(Ljava/lang/Throwable;II)Lcom/a/a/a/ae;

    move-result-object v5

    .line 244
    if-nez v5, :cond_3

    .line 245
    sget-object v5, Lcom/a/a/a/ae;->a:Lcom/a/a/a/ae;

    .line 247
    :cond_3
    iput-object v5, p1, Lcom/a/a/a/s;->g:Lcom/a/a/a/ae;

    .line 248
    invoke-virtual {v5}, Lcom/a/a/a/ae;->a()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move v5, v4

    move v4, v1

    .line 251
    goto :goto_0

    :cond_4
    move v0, v2

    .line 238
    goto :goto_2

    :cond_5
    move v4, v2

    .line 239
    goto :goto_3

    .line 249
    :catch_1
    move-exception v5

    .line 250
    const-string/jumbo v9, "shouldReRunOnThrowable did throw an exception"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v5, v9, v10}, Lcom/a/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move v5, v4

    move v4, v1

    goto :goto_0

    .line 258
    :cond_7
    invoke-virtual {p1}, Lcom/a/a/a/s;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 259
    const/4 v1, 0x6

    goto :goto_1

    .line 261
    :cond_8
    invoke-virtual {p1}, Lcom/a/a/a/s;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v6

    .line 262
    goto :goto_1

    .line 264
    :cond_9
    if-eqz v5, :cond_a

    move v1, v7

    .line 265
    goto :goto_1

    .line 267
    :cond_a
    if-eqz v0, :cond_b

    .line 268
    const/4 v1, 0x7

    goto :goto_1

    .line 270
    :cond_b
    invoke-virtual {p0}, Lcom/a/a/a/r;->getRetryLimit()I

    move-result v0

    if-ge p2, v0, :cond_c

    .line 272
    invoke-virtual {p1, v3}, Lcom/a/a/a/s;->a(Ljava/lang/Throwable;)V

    .line 273
    const/4 v1, 0x5

    goto :goto_1

    .line 276
    :cond_c
    invoke-virtual {p1, v3}, Lcom/a/a/a/s;->a(Ljava/lang/Throwable;)V

    move v1, v8

    .line 277
    goto :goto_1
.end method

.method setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/a/a/a/r;->applicationContext:Landroid/content/Context;

    .line 369
    return-void
.end method

.method setDeadlineReached(Z)V
    .locals 0

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/a/a/a/r;->isDeadlineReached:Z

    .line 373
    return-void
.end method

.method shouldCancelOnDeadline()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/a/a/a/r;->cancelOnDeadline:Z

    return v0
.end method

.method protected abstract shouldReRunOnThrowable(Ljava/lang/Throwable;II)Lcom/a/a/a/ae;
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method final updateFromJobHolder(Lcom/a/a/a/s;)V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/a/a/a/r;->sealed:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set a Job from JobHolder after it is sealed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p1, Lcom/a/a/a/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/a/r;->id:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/a/a/a/s;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/a/r;->groupId:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/a/a/a/s;->b()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/r;->priority:I

    .line 136
    iget-boolean v0, p1, Lcom/a/a/a/s;->b:Z

    iput-boolean v0, p0, Lcom/a/a/a/r;->persistent:Z

    .line 137
    iget-object v0, p1, Lcom/a/a/a/s;->f:Ljava/util/Set;

    iput-object v0, p0, Lcom/a/a/a/r;->readonlyTags:Ljava/util/Set;

    .line 138
    iget v0, p1, Lcom/a/a/a/s;->d:I

    iput v0, p0, Lcom/a/a/a/r;->requiredNetworkType:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/r;->sealed:Z

    .line 140
    return-void
.end method
