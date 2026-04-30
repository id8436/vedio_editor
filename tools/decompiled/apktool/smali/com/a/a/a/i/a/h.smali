.class public Lcom/a/a/a/i/a/h;
.super Ljava/lang/Object;
.source "SqliteJobQueue.java"

# interfaces
.implements Lcom/a/a/a/aa;


# instance fields
.field private a:Lcom/a/a/a/i/a/a;

.field private final b:J

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/a/a/a/i/a/c;

.field private e:Lcom/a/a/a/i/a/k;

.field private f:Lcom/a/a/a/i/a/b;

.field private final g:Ljava/lang/StringBuilder;

.field private final h:Lcom/a/a/a/i/a/m;


# direct methods
.method public constructor <init>(Lcom/a/a/a/c/a;JLcom/a/a/a/i/a/k;)V
    .locals 10

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/i/a/h;->g:Ljava/lang/StringBuilder;

    .line 44
    iput-wide p2, p0, Lcom/a/a/a/i/a/h;->b:J

    .line 45
    new-instance v0, Lcom/a/a/a/i/a/b;

    invoke-virtual {p1}, Lcom/a/a/a/c/a;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jobs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/i/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/i/a/h;->f:Lcom/a/a/a/i/a/b;

    .line 46
    new-instance v0, Lcom/a/a/a/i/a/m;

    invoke-direct {v0, p2, p3}, Lcom/a/a/a/i/a/m;-><init>(J)V

    iput-object v0, p0, Lcom/a/a/a/i/a/h;->h:Lcom/a/a/a/i/a/m;

    .line 47
    new-instance v1, Lcom/a/a/a/i/a/a;

    invoke-virtual {p1}, Lcom/a/a/a/c/a;->a()Landroid/content/Context;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/a/a/a/i/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/a/a/a/i/a/h;->a:Lcom/a/a/a/i/a/a;

    .line 49
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->a:Lcom/a/a/a/i/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    new-instance v1, Lcom/a/a/a/i/a/c;

    iget-object v2, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "job_holder"

    sget-object v0, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget-object v4, v0, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    const/16 v5, 0xc

    const-string/jumbo v6, "job_holder_tags"

    const/4 v7, 0x3

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/a/a/a/i/a/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJ)V

    iput-object v1, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    .line 53
    iput-object p4, p0, Lcom/a/a/a/i/a/h;->e:Lcom/a/a/a/i/a/k;

    .line 54
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/i/a/c;->a(J)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/i/a/h;->c()V

    .line 58
    invoke-direct {p0}, Lcom/a/a/a/i/a/h;->d()V

    .line 59
    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "db_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([B)Lcom/a/a/a/r;
    .locals 3

    .prologue
    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->e:Lcom/a/a/a/i/a/k;

    invoke-interface {v0, p1}, Lcom/a/a/a/i/a/k;->a([B)Lcom/a/a/a/r;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string/jumbo v1, "error while deserializing job"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/a/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)Lcom/a/a/a/s;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/a/i/a/i;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 413
    sget-object v1, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget v1, v1, Lcom/a/a/a/i/a/g;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    :try_start_0
    iget-object v2, p0, Lcom/a/a/a/i/a/h;->f:Lcom/a/a/a/i/a/b;

    invoke-virtual {v2, v1}, Lcom/a/a/a/i/a/b;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/a/a/a/i/a/h;->a([B)Lcom/a/a/a/r;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 420
    if-nez v2, :cond_0

    .line 421
    new-instance v0, Lcom/a/a/a/i/a/i;

    const-string/jumbo v1, "null job"

    invoke-direct {v0, v1}, Lcom/a/a/a/i/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Lcom/a/a/a/i/a/i;

    const-string/jumbo v2, "cannot load job from disk"

    invoke-direct {v1, v2, v0}, Lcom/a/a/a/i/a/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 424
    :cond_0
    invoke-direct {p0, v1}, Lcom/a/a/a/i/a/h;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 426
    new-instance v4, Lcom/a/a/a/u;

    invoke-direct {v4}, Lcom/a/a/a/u;-><init>()V

    sget-object v5, Lcom/a/a/a/i/a/a;->a:Lcom/a/a/a/i/a/g;

    iget v5, v5, Lcom/a/a/a/i/a/g;->c:I

    .line 427
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/a/a/a/u;->c(J)Lcom/a/a/a/u;

    move-result-object v4

    sget-object v5, Lcom/a/a/a/i/a/a;->c:Lcom/a/a/a/i/a/g;

    iget v5, v5, Lcom/a/a/a/i/a/g;->c:I

    .line 428
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/a/a/a/u;->a(I)Lcom/a/a/a/u;

    move-result-object v4

    sget-object v5, Lcom/a/a/a/i/a/a;->d:Lcom/a/a/a/i/a/g;

    iget v5, v5, Lcom/a/a/a/i/a/g;->c:I

    .line 429
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/a/a/a/u;->a(Ljava/lang/String;)Lcom/a/a/a/u;

    move-result-object v4

    sget-object v5, Lcom/a/a/a/i/a/a;->e:Lcom/a/a/a/i/a/g;

    iget v5, v5, Lcom/a/a/a/i/a/g;->c:I

    .line 430
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/a/a/a/u;->b(I)Lcom/a/a/a/u;

    move-result-object v4

    .line 431
    invoke-virtual {v4, v2}, Lcom/a/a/a/u;->a(Lcom/a/a/a/r;)Lcom/a/a/a/u;

    move-result-object v2

    .line 432
    invoke-virtual {v2, v1}, Lcom/a/a/a/u;->b(Ljava/lang/String;)Lcom/a/a/a/u;

    move-result-object v1

    .line 433
    invoke-virtual {v1, v3}, Lcom/a/a/a/u;->a(Ljava/util/Set;)Lcom/a/a/a/u;

    move-result-object v1

    .line 434
    invoke-virtual {v1, v0}, Lcom/a/a/a/u;->a(Z)Lcom/a/a/a/u;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->j:Lcom/a/a/a/i/a/g;

    iget v2, v2, Lcom/a/a/a/i/a/g;->c:I

    .line 435
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v4, Lcom/a/a/a/i/a/a;->k:Lcom/a/a/a/i/a/g;

    iget v4, v4, Lcom/a/a/a/i/a/g;->c:I

    .line 436
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 435
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/a/a/a/u;->a(JZ)Lcom/a/a/a/u;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->f:Lcom/a/a/a/i/a/g;

    iget v1, v1, Lcom/a/a/a/i/a/g;->c:I

    .line 437
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/u;->a(J)Lcom/a/a/a/u;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->g:Lcom/a/a/a/i/a/g;

    iget v1, v1, Lcom/a/a/a/i/a/g;->c:I

    .line 438
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/u;->b(J)Lcom/a/a/a/u;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->h:Lcom/a/a/a/i/a/g;

    iget v1, v1, Lcom/a/a/a/i/a/g;->c:I

    .line 439
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/u;->d(J)Lcom/a/a/a/u;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->i:Lcom/a/a/a/i/a/g;

    iget v1, v1, Lcom/a/a/a/i/a/g;->c:I

    .line 440
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/u;->c(I)Lcom/a/a/a/u;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/a/a/a/u;->a()Lcom/a/a/a/s;

    move-result-object v0

    .line 442
    return-object v0

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Lcom/a/a/a/s;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    .line 156
    invoke-virtual {p2}, Lcom/a/a/a/s;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/a/a/a/i/a/a;->a:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 160
    :cond_0
    sget-object v0, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 161
    sget-object v0, Lcom/a/a/a/i/a/a;->c:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->b()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 162
    invoke-virtual {p2}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    sget-object v0, Lcom/a/a/a/i/a/a;->d:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 165
    :cond_1
    sget-object v0, Lcom/a/a/a/i/a/a;->e:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->d()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 166
    sget-object v0, Lcom/a/a/a/i/a/a;->f:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->e()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 167
    sget-object v0, Lcom/a/a/a/i/a/a;->g:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->i()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 168
    sget-object v0, Lcom/a/a/a/i/a/a;->h:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->f()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 169
    sget-object v0, Lcom/a/a/a/i/a/a;->i:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 170
    invoke-virtual {p2}, Lcom/a/a/a/s;->v()I

    move-result v1

    int-to-long v6, v1

    .line 169
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 171
    sget-object v0, Lcom/a/a/a/i/a/a;->j:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 172
    invoke-virtual {p2}, Lcom/a/a/a/s;->g()J

    move-result-wide v6

    .line 171
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 173
    sget-object v0, Lcom/a/a/a/i/a/a;->k:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v6, v0, 0x1

    .line 174
    invoke-virtual {p2}, Lcom/a/a/a/s;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v0, v2

    .line 173
    :goto_0
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 175
    sget-object v0, Lcom/a/a/a/i/a/a;->l:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/a/a/a/s;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 176
    return-void

    :cond_2
    move-wide v0, v4

    .line 174
    goto :goto_0

    :cond_3
    move-wide v2, v4

    .line 175
    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/a/a/a/i/a/a;->n:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 152
    sget-object v0, Lcom/a/a/a/i/a/a;->o:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 153
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->e()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 209
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 211
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->f()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 212
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 214
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 215
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->f:Lcom/a/a/a/i/a/b;

    invoke-virtual {v0, p1}, Lcom/a/a/a/i/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    return-void

    .line 217
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    iget-object v1, v1, Lcom/a/a/a/i/a/c;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 448
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 452
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 453
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 458
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    iget-object v1, v1, Lcom/a/a/a/i/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    iget-object v1, v1, Lcom/a/a/a/i/a/c;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    iget-object v1, p0, Lcom/a/a/a/i/a/h;->f:Lcom/a/a/a/i/a/b;

    invoke-virtual {v1, v0}, Lcom/a/a/a/i/a/b;->a(Ljava/util/Set;)V

    .line 78
    return-void
.end method

.method private e(Lcom/a/a/a/j;)Lcom/a/a/a/i/a/l;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->h:Lcom/a/a/a/i/a/m;

    iget-object v1, p0, Lcom/a/a/a/i/a/h;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/i/a/m;->a(Lcom/a/a/a/j;Ljava/lang/StringBuilder;)Lcom/a/a/a/i/a/l;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/a/a/a/s;)V
    .locals 4
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->f:Lcom/a/a/a/i/a/b;

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/i/a/h;->e:Lcom/a/a/a/i/a/k;

    invoke-virtual {p1}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/a/a/a/i/a/k;->a(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/i/a/b;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "cannot save job to disk"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private f(Lcom/a/a/a/s;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 125
    iget-object v3, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v3}, Lcom/a/a/a/i/a/c;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 129
    invoke-direct {p0, v0, p1}, Lcom/a/a/a/i/a/h;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/a/a/a/s;)V

    .line 130
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v2

    .line 131
    :goto_0
    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 130
    goto :goto_0

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/a/a/a/s;->l()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 136
    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5, v0}, Lcom/a/a/a/i/a/h;->a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_2
    const-string/jumbo v2, "error while inserting job with tags"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/a/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_1

    .line 139
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private g(Lcom/a/a/a/s;)V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->g()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lcom/a/a/a/s;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/a/a/a/s;->b(I)V

    .line 355
    iget-wide v2, p0, Lcom/a/a/a/i/a/h;->b:J

    invoke-virtual {p1, v2, v3}, Lcom/a/a/a/s;->c(J)V

    .line 356
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 357
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/a/a/a/s;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 358
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/a/a/a/i/a/h;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 359
    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 361
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 228
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/a/a/a/i/a/h;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public a(Lcom/a/a/a/j;)I
    .locals 3
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/h;->e(Lcom/a/a/a/j;)Lcom/a/a/a/i/a/l;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/a/a/a/i/a/h;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/i/a/l;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/StringBuilder;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 236
    long-to-int v0, v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/a/a/a/s;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 244
    iget-object v1, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    iget-object v2, v2, Lcom/a/a/a/i/a/c;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 246
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Lcom/a/a/a/i/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 249
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/a/a/a/i/a/h;->a(Landroid/database/Cursor;)Lcom/a/a/a/s;
    :try_end_1
    .catch Lcom/a/a/a/i/a/i; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 254
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    :try_start_2
    const-string/jumbo v3, "invalid job on findJobById"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/a/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Lcom/a/a/a/s;Lcom/a/a/a/s;)V
    .locals 2
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 115
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/a/a/a/i/a/h;->c(Lcom/a/a/a/s;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/a/a/a/i/a/h;->a(Lcom/a/a/a/s;)Z

    .line 117
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Lcom/a/a/a/s;)Z
    .locals 4
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/h;->e(Lcom/a/a/a/s;)V

    .line 91
    invoke-virtual {p1}, Lcom/a/a/a/s;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/h;->f(Lcom/a/a/a/s;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 96
    invoke-direct {p0, v0, p1}, Lcom/a/a/a/i/a/h;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/a/a/a/s;)V

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 99
    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/s;->a(J)V

    .line 100
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/a/a/a/j;)Lcom/a/a/a/s;
    .locals 5
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/h;->e(Lcom/a/a/a/j;)Lcom/a/a/a/i/a/l;

    move-result-object v1

    .line 293
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v1, v0}, Lcom/a/a/a/i/a/l;->a(Lcom/a/a/a/i/a/c;)Ljava/lang/String;

    move-result-object v2

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v1, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 297
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Lcom/a/a/a/i/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 312
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    .line 300
    :cond_0
    :try_start_1
    invoke-direct {p0, v3}, Lcom/a/a/a/i/a/h;->a(Landroid/database/Cursor;)Lcom/a/a/a/s;

    move-result-object v0

    .line 301
    invoke-direct {p0, v0}, Lcom/a/a/a/i/a/h;->g(Lcom/a/a/a/s;)V
    :try_end_1
    .catch Lcom/a/a/a/i/a/i; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 303
    :catch_0
    move-exception v0

    .line 305
    :try_start_2
    sget-object v0, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget v0, v0, Lcom/a/a/a/i/a/g;->c:I

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    if-nez v0, :cond_1

    .line 307
    const-string/jumbo v0, "cannot find job id on a retrieved job"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/a/a/a/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 309
    :cond_1
    :try_start_3
    invoke-direct {p0, v0}, Lcom/a/a/a/i/a/h;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 312
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->i()V

    .line 341
    invoke-direct {p0}, Lcom/a/a/a/i/a/h;->d()V

    .line 342
    return-void
.end method

.method public b(Lcom/a/a/a/s;)Z
    .locals 8
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p1}, Lcom/a/a/a/s;->c()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/a/a/a/i/a/h;->a(Lcom/a/a/a/s;)Z

    move-result v0

    .line 193
    :goto_0
    return v0

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/h;->e(Lcom/a/a/a/s;)V

    .line 187
    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {p1, v4, v5}, Lcom/a/a/a/s;->c(J)V

    .line 188
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->d()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 190
    invoke-direct {p0, v0, p1}, Lcom/a/a/a/i/a/h;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/a/a/a/s;)V

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    move v0, v1

    .line 192
    :goto_1
    const-string/jumbo v3, "reinsert job result %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 191
    goto :goto_1
.end method

.method public c(Lcom/a/a/a/j;)Ljava/lang/Long;
    .locals 6
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/h;->e(Lcom/a/a/a/j;)Lcom/a/a/a/i/a/l;

    move-result-object v1

    .line 328
    :try_start_0
    iget-object v2, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/i/a/l;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/a/a/a/i/a/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 329
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 331
    :goto_0
    return-object v0

    .line 329
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c(Lcom/a/a/a/s;)V
    .locals 1
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/i/a/h;->b(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public d(Lcom/a/a/a/j;)Ljava/util/Set;
    .locals 5
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/j;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/a/a/a/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/h;->e(Lcom/a/a/a/j;)Lcom/a/a/a/i/a/l;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0, v1}, Lcom/a/a/a/i/a/l;->b(Lcom/a/a/a/i/a/c;)Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/a/a/a/i/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, v0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 264
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 266
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0, v1}, Lcom/a/a/a/i/a/h;->a(Landroid/database/Cursor;)Lcom/a/a/a/s;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/a/a/a/i/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    :try_start_1
    const-string/jumbo v3, "invalid job found by tags."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/a/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 275
    :goto_1
    return-object v2

    .line 272
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public d(Lcom/a/a/a/s;)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/a/a/a/i/a/h;->d:Lcom/a/a/a/i/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/i/a/c;->h()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 282
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 284
    return-void
.end method
