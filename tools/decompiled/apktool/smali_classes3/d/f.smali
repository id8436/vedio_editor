.class public final Ld/f;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput v0, p0, Ld/f;->c:I

    .line 282
    iput v0, p0, Ld/f;->d:I

    .line 283
    iput v0, p0, Ld/f;->e:I

    return-void
.end method


# virtual methods
.method public a()Ld/f;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/f;->a:Z

    .line 291
    return-object p0
.end method

.method public a(ILjava/util/concurrent/TimeUnit;)Ld/f;
    .locals 4

    .prologue
    .line 324
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 326
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 327
    const v0, 0x7fffffff

    .line 328
    :goto_0
    iput v0, p0, Ld/f;->d:I

    .line 329
    return-object p0

    .line 328
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public b()Ld/f;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/f;->f:Z

    .line 355
    return-object p0
.end method

.method public c()Ld/e;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Ld/e;

    invoke-direct {v0, p0}, Ld/e;-><init>(Ld/f;)V

    return-object v0
.end method
