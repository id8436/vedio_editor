.class public Lcom/d/a/a/c/b;
.super Ljava/lang/Object;
.source "DupDetector.java"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/d/a/a/c/b;->a:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static a(Lcom/d/a/a/g;)Lcom/d/a/a/c/b;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/d/a/a/c/b;

    invoke-direct {v0, p0}, Lcom/d/a/a/c/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/d/a/a/k;)Lcom/d/a/a/c/b;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/d/a/a/c/b;

    invoke-direct {v0, p0}, Lcom/d/a/a/c/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/d/a/a/c/b;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/d/a/a/c/b;

    iget-object v1, p0, Lcom/d/a/a/c/b;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/d/a/a/c/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/d/a/a/c/b;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 77
    iput-object p1, p0, Lcom/d/a/a/c/b;->b:Ljava/lang/String;

    move v0, v1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/d/a/a/c/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/d/a/a/c/b;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 84
    iput-object p1, p0, Lcom/d/a/a/c/b;->c:Ljava/lang/String;

    move v0, v1

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/d/a/a/c/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/d/a/a/c/b;->d:Ljava/util/HashSet;

    if-nez v2, :cond_3

    .line 91
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/d/a/a/c/b;->d:Ljava/util/HashSet;

    .line 92
    iget-object v2, p0, Lcom/d/a/a/c/b;->d:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/d/a/a/c/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/d/a/a/c/b;->d:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/d/a/a/c/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    iget-object v2, p0, Lcom/d/a/a/c/b;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/d/a/a/c/b;->b:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/d/a/a/c/b;->c:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/d/a/a/c/b;->d:Ljava/util/HashSet;

    .line 56
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/d/a/a/c/b;->a:Ljava/lang/Object;

    return-object v0
.end method
