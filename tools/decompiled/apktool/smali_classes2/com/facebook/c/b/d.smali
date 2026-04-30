.class Lcom/facebook/c/b/d;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/c/b/q;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/b/b;

.field private c:J

.field private d:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    invoke-static {p2}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/c/b/d;->a:Ljava/lang/String;

    .line 520
    invoke-static {p2}, Lcom/facebook/b/b;->a(Ljava/io/File;)Lcom/facebook/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/b/d;->b:Lcom/facebook/b/b;

    .line 521
    iput-wide v2, p0, Lcom/facebook/c/b/d;->c:J

    .line 522
    iput-wide v2, p0, Lcom/facebook/c/b/d;->d:J

    .line 523
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/c/b/b;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0, p1, p2}, Lcom/facebook/c/b/d;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/facebook/c/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 532
    iget-wide v0, p0, Lcom/facebook/c/b/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/facebook/c/b/d;->b:Lcom/facebook/b/b;

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/io/File;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/c/b/d;->d:J

    .line 536
    :cond_0
    iget-wide v0, p0, Lcom/facebook/c/b/d;->d:J

    return-wide v0
.end method

.method public c()Lcom/facebook/b/b;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/facebook/c/b/d;->b:Lcom/facebook/b/b;

    return-object v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 546
    iget-wide v0, p0, Lcom/facebook/c/b/d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/facebook/c/b/d;->b:Lcom/facebook/b/b;

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/c/b/d;->c:J

    .line 549
    :cond_0
    iget-wide v0, p0, Lcom/facebook/c/b/d;->c:J

    return-wide v0
.end method
