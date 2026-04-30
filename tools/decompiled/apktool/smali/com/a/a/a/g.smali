.class Lcom/a/a/a/g;
.super Ljava/lang/Object;
.source "CancelHandler.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/a/ah;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/a/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/a/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/a/a/a/i;


# direct methods
.method constructor <init>(Lcom/a/a/a/ah;[Ljava/lang/String;Lcom/a/a/a/i;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/a/a/a/g;->b:Lcom/a/a/a/ah;

    .line 23
    iput-object p2, p0, Lcom/a/a/a/g;->c:[Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/g;->d:Ljava/util/Collection;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/g;->e:Ljava/util/Collection;

    .line 26
    iput-object p3, p0, Lcom/a/a/a/g;->f:Lcom/a/a/a/i;

    .line 27
    return-void
.end method


# virtual methods
.method a(Lcom/a/a/a/s;I)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/a/a/a/g;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/a/a/a/g;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/g;->e:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Lcom/a/a/a/x;)V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/a/a/a/g;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 58
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/a/a/a/s;->c(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    invoke-virtual {v0}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/r;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p1, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    invoke-interface {v2, v0}, Lcom/a/a/a/aa;->c(Lcom/a/a/a/s;)V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    const-string/jumbo v3, "job\'s on cancel has thrown an exception. Ignoring..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/a/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/g;->f:Lcom/a/a/a/i;

    if-eqz v0, :cond_4

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/a/a/a/g;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/a/a/a/g;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    iget-object v0, p0, Lcom/a/a/a/g;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 70
    invoke-virtual {v0}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/g;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 73
    invoke-virtual {v0}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 75
    :cond_3
    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/h;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 76
    iget-object v1, p1, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    iget-object v2, p0, Lcom/a/a/a/g;->f:Lcom/a/a/a/i;

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/d;->a(Lcom/a/a/a/h;Lcom/a/a/a/i;)V

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/a/a/a/g;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 79
    iget-object v2, p1, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    invoke-virtual {v0}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v3

    const/4 v4, 0x1

    .line 80
    invoke-virtual {v0}, Lcom/a/a/a/s;->u()Ljava/lang/Throwable;

    move-result-object v0

    .line 79
    invoke-virtual {v2, v3, v4, v0}, Lcom/a/a/a/d;->a(Lcom/a/a/a/r;ZLjava/lang/Throwable;)V

    goto :goto_4

    .line 82
    :cond_5
    return-void
.end method

.method a(Lcom/a/a/a/x;Lcom/a/a/a/k;)V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/a/a/a/g;->b:Lcom/a/a/a/ah;

    iget-object v1, p0, Lcom/a/a/a/g;->c:[Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/ah;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/g;->a:Ljava/util/Set;

    .line 31
    iget-object v0, p1, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    .line 32
    invoke-virtual {v0}, Lcom/a/a/a/j;->i()V

    .line 33
    iget-object v1, p1, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v1}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/j;->a(J)V

    .line 34
    iget-object v1, p0, Lcom/a/a/a/g;->b:Lcom/a/a/a/ah;

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Lcom/a/a/a/ah;)V

    .line 35
    iget-object v1, p0, Lcom/a/a/a/g;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->b(Ljava/util/Collection;)V

    .line 36
    iget-object v1, p0, Lcom/a/a/a/g;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a([Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Z)V

    .line 38
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(I)V

    .line 39
    iget-object v1, p1, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    .line 40
    invoke-interface {v1, v0}, Lcom/a/a/a/aa;->d(Lcom/a/a/a/j;)Ljava/util/Set;

    move-result-object v1

    .line 41
    iget-object v2, p1, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    .line 42
    invoke-interface {v2, v0}, Lcom/a/a/a/aa;->d(Lcom/a/a/a/j;)Ljava/util/Set;

    move-result-object v2

    .line 43
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 44
    invoke-virtual {v0}, Lcom/a/a/a/s;->m()V

    .line 45
    iget-object v3, p0, Lcom/a/a/a/g;->d:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v3, p1, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    invoke-interface {v3, v0}, Lcom/a/a/a/aa;->d(Lcom/a/a/a/s;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 49
    invoke-virtual {v0}, Lcom/a/a/a/s;->m()V

    .line 50
    iget-object v2, p0, Lcom/a/a/a/g;->d:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v2, p1, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    invoke-interface {v2, v0}, Lcom/a/a/a/aa;->d(Lcom/a/a/a/s;)V

    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/a/a/a/g;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
