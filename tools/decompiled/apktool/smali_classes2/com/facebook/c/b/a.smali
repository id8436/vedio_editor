.class public Lcom/facebook/c/b/a;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/c/b/p;


# static fields
.field static final a:J

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/io/File;

.field private final d:Z

.field private final e:Ljava/io/File;

.field private final f:Lcom/facebook/c/a/a;

.field private final g:Lcom/facebook/d/l/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    const-class v0, Lcom/facebook/c/b/a;

    sput-object v0, Lcom/facebook/c/b/a;->b:Ljava/lang/Class;

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/c/b/a;->a:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/facebook/c/a/a;)V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcom/facebook/c/b/a;->c:Ljava/io/File;

    .line 106
    invoke-static {p1, p3}, Lcom/facebook/c/b/a;->a(Ljava/io/File;Lcom/facebook/c/a/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/c/b/a;->d:Z

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/c/b/a;->c:Ljava/io/File;

    invoke-static {p2}, Lcom/facebook/c/b/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/c/b/a;->e:Ljava/io/File;

    .line 113
    iput-object p3, p0, Lcom/facebook/c/b/a;->f:Lcom/facebook/c/a/a;

    .line 114
    invoke-direct {p0}, Lcom/facebook/c/b/a;->g()V

    .line 115
    invoke-static {}, Lcom/facebook/d/l/c;->b()Lcom/facebook/d/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/b/a;->g:Lcom/facebook/d/l/a;

    .line 116
    return-void
.end method

.method private a(Ljava/io/File;)J
    .locals 3

    .prologue
    .line 434
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    const-wide/16 v0, 0x0

    .line 443
    :cond_0
    :goto_0
    return-wide v0

    .line 438
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 439
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/c/b/a;Ljava/io/File;)Lcom/facebook/c/b/e;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/c/b/a;->b(Ljava/io/File;)Lcom/facebook/c/b/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/c/b/a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/c/b/a;->e:Ljava/io/File;

    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v1, "%s.ols%d.%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "v2"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x64

    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 151
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    :try_start_0
    invoke-static {p1}, Lcom/facebook/d/c/c;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/d/c/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    iget-object v1, p0, Lcom/facebook/c/b/a;->f:Lcom/facebook/c/a/a;

    sget-object v2, Lcom/facebook/c/a/b;->k:Lcom/facebook/c/a/b;

    sget-object v3, Lcom/facebook/c/b/a;->b:Ljava/lang/Class;

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    throw v0
.end method

.method private static a(Ljava/io/File;Lcom/facebook/c/a/a;)Z
    .locals 7

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    const/4 v2, 0x0

    .line 123
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 127
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    :try_start_2
    sget-object v3, Lcom/facebook/c/a/b;->q:Lcom/facebook/c/a/b;

    sget-object v4, Lcom/facebook/c/b/a;->b:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to read folder to check if external: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v4, v2, v1}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v1

    .line 140
    sget-object v2, Lcom/facebook/c/a/b;->q:Lcom/facebook/c/a/b;

    sget-object v3, Lcom/facebook/c/b/a;->b:Ljava/lang/Class;

    const-string/jumbo v4, "failed to get the external storage directory!"

    invoke-interface {p1, v2, v3, v4, v1}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Lcom/facebook/c/b/e;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-static {p1}, Lcom/facebook/c/b/e;->b(Ljava/io/File;)Lcom/facebook/c/b/e;

    move-result-object v0

    .line 561
    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-object v1

    .line 564
    :cond_0
    iget-object v2, v0, Lcom/facebook/c/b/e;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/c/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 565
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 566
    if-eqz v2, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/c/b/a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/c/b/a;->c:Ljava/io/File;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/c/b/a;->e:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/c/b/a;)Lcom/facebook/d/l/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/c/b/a;->g:Lcom/facebook/d/l/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/c/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/c/b/a;)Lcom/facebook/c/a/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/c/b/a;->f:Lcom/facebook/c/a/a;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    new-instance v0, Lcom/facebook/c/b/e;

    sget-object v1, Lcom/facebook/c/b/f;->a:Lcom/facebook/c/b/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/c/b/e;-><init>(Lcom/facebook/c/b/f;Ljava/lang/String;Lcom/facebook/c/b/b;)V

    .line 397
    iget-object v1, v0, Lcom/facebook/c/b/e;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/c/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Lcom/facebook/c/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/c/b/a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 184
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/facebook/c/b/a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    :goto_0
    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/facebook/c/b/a;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/d/c/c;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/d/c/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_1
    return-void

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/facebook/c/b/a;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    iget-object v1, p0, Lcom/facebook/c/b/a;->c:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/d/c/a;->b(Ljava/io/File;)Z

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    iget-object v0, p0, Lcom/facebook/c/b/a;->f:Lcom/facebook/c/a/a;

    sget-object v1, Lcom/facebook/c/a/b;->k:Lcom/facebook/c/a/b;

    sget-object v2, Lcom/facebook/c/b/a;->b:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "version directory could not be created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/c/b/a;->e:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/c/b/q;)J
    .locals 2

    .prologue
    .line 423
    check-cast p1, Lcom/facebook/c/b/d;

    .line 424
    invoke-virtual {p1}, Lcom/facebook/c/b/d;->c()Lcom/facebook/b/b;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/c/b/a;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/c/b/r;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lcom/facebook/c/b/e;

    sget-object v1, Lcom/facebook/c/b/f;->b:Lcom/facebook/c/b/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/c/b/e;-><init>(Lcom/facebook/c/b/f;Ljava/lang/String;Lcom/facebook/c/b/b;)V

    .line 367
    iget-object v1, v0, Lcom/facebook/c/b/e;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/c/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    const-string/jumbo v2, "insert"

    invoke-direct {p0, v1, v2}, Lcom/facebook/c/b/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/c/b/e;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/facebook/c/b/h;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/c/b/h;-><init>(Lcom/facebook/c/b/a;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    iget-object v1, p0, Lcom/facebook/c/b/a;->f:Lcom/facebook/c/a/a;

    sget-object v2, Lcom/facebook/c/a/b;->f:Lcom/facebook/c/a/b;

    sget-object v3, Lcom/facebook/c/b/a;->b:Ljava/lang/Class;

    const-string/jumbo v4, "insert"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    throw v0
.end method

.method a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/c/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/facebook/c/b/a;->d:Z

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/b/a;
    .locals 4

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/facebook/c/b/a;->g:Lcom/facebook/d/l/a;

    invoke-interface {v1}, Lcom/facebook/d/l/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 390
    invoke-static {v0}, Lcom/facebook/b/b;->a(Ljava/io/File;)Lcom/facebook/b/b;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/c/b/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/c/b/a;->c:Ljava/io/File;

    new-instance v1, Lcom/facebook/c/b/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/c/b/i;-><init>(Lcom/facebook/c/b/a;Lcom/facebook/c/b/b;)V

    invoke-static {v0, v1}, Lcom/facebook/d/c/a;->a(Ljava/io/File;Lcom/facebook/d/c/b;)V

    .line 338
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/c/b/q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lcom/facebook/c/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/c/b/c;-><init>(Lcom/facebook/c/b/a;Lcom/facebook/c/b/b;)V

    .line 503
    iget-object v1, p0, Lcom/facebook/c/b/a;->e:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/facebook/d/c/a;->a(Ljava/io/File;Lcom/facebook/d/c/b;)V

    .line 504
    invoke-virtual {v0}, Lcom/facebook/c/b/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/facebook/c/b/a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
