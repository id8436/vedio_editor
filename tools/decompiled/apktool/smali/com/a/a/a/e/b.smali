.class Lcom/a/a/a/e/b;
.super Ljava/lang/Object;
.source "SimpleInMemoryPriorityQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/a/a/a/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/e/a;


# direct methods
.method constructor <init>(Lcom/a/a/a/e/a;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/a/a/a/e/b;->a:Lcom/a/a/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)I
    .locals 1

    .prologue
    .line 44
    if-le p1, p2, :cond_0

    .line 45
    const/4 v0, -0x1

    .line 50
    :goto_0
    return v0

    .line 47
    :cond_0
    if-le p2, p1, :cond_1

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(JJ)I
    .locals 1

    .prologue
    .line 54
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 55
    const/4 v0, -0x1

    .line 60
    :goto_0
    return v0

    .line 57
    :cond_0
    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/a/s;Lcom/a/a/a/s;)I
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/r;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/r;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x0

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/a/s;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/a/a/a/s;->b()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/e/b;->a(II)I

    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/a/a/a/s;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/a/a/a/s;->e()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/a/e/b;->a(JJ)I

    move-result v0

    neg-int v0, v0

    .line 36
    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/a/a/a/s;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/a/a/a/s;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/a/e/b;->a(JJ)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/a/a/a/s;

    check-cast p2, Lcom/a/a/a/s;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/s;Lcom/a/a/a/s;)I

    move-result v0

    return v0
.end method
