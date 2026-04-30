.class public Lcom/a/a/a/e/a;
.super Ljava/lang/Object;
.source "SimpleInMemoryPriorityQueue.java"

# interfaces
.implements Lcom/a/a/a/aa;


# instance fields
.field private final a:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/a/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/a/a/a/c/a;J)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/a/a/a/e/b;

    invoke-direct {v1, p0}, Lcom/a/a/a/e/b;-><init>(Lcom/a/a/a/e/a;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/a/a/a/e/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e/a;->d:Ljava/util/List;

    .line 71
    iput-wide p2, p0, Lcom/a/a/a/e/a;->e:J

    .line 72
    return-void
.end method

.method private static a(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1}, Lcom/a/a/a/j;->h()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/a/a/a/s;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/a/a/a/s;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v1

    .line 203
    :goto_0
    if-nez v2, :cond_3

    .line 204
    invoke-virtual {p1}, Lcom/a/a/a/j;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/a/a/a/s;->v()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 223
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v0

    .line 202
    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {p1}, Lcom/a/a/a/j;->f()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/a/a/a/s;->i()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/a/a/a/j;->f()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 211
    :cond_4
    invoke-virtual {p0}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/a/a/a/j;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    :cond_5
    invoke-virtual {p1}, Lcom/a/a/a/j;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/a/a/a/j;->b()Lcom/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 219
    invoke-virtual {p0}, Lcom/a/a/a/s;->l()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    invoke-virtual {p1}, Lcom/a/a/a/j;->b()Lcom/a/a/a/ah;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Lcom/a/a/a/s;->l()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/a/a/a/ah;->a(Ljava/util/Collection;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    move v0, v1

    .line 223
    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/a/a/j;)I
    .locals 6
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 119
    .line 120
    iget-object v0, p0, Lcom/a/a/a/e/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 122
    invoke-virtual {v0}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v4

    .line 123
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/a/a/a/e/a;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {v0, p1, v2}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    if-eqz v4, :cond_1

    .line 126
    iget-object v0, p0, Lcom/a/a/a/e/a;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    move v1, v0

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/e/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    return v1
.end method

.method public a(Ljava/lang/String;)Lcom/a/a/a/s;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 180
    iget-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    return-object v0
.end method

.method public a(Lcom/a/a/a/s;Lcom/a/a/a/s;)V
    .locals 0
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p0, p2}, Lcom/a/a/a/e/a;->c(Lcom/a/a/a/s;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/s;)Z

    .line 104
    return-void
.end method

.method public a(Lcom/a/a/a/s;)Z
    .locals 2
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-object v0, p0, Lcom/a/a/a/e/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/s;->a(J)V

    .line 77
    iget-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot add a job with the same id twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/a/a/a/j;)Lcom/a/a/a/s;
    .locals 4
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 137
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/a/a/a/e/a;->c(Lcom/a/a/a/s;)V

    .line 139
    invoke-virtual {v0}, Lcom/a/a/a/s;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/a/a/s;->b(I)V

    .line 140
    iget-wide v2, p0, Lcom/a/a/a/e/a;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/s;->c(J)V

    .line 144
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 175
    iget-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    return-void
.end method

.method public b(Lcom/a/a/a/s;)Z
    .locals 2
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/a/a/a/s;->c()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/s;)Z

    move-result v0

    .line 97
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/a/a/a/e/a;->c(Lcom/a/a/a/s;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lcom/a/a/a/j;)Ljava/lang/Long;
    .locals 10
    .param p1    # Lcom/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 149
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 151
    invoke-static {v0, p1, v3}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    invoke-virtual {v0}, Lcom/a/a/a/s;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, p1, v4}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 153
    :goto_1
    invoke-virtual {v0}, Lcom/a/a/a/s;->r()Z

    move-result v6

    .line 155
    if-ne v6, v2, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/a/a/a/s;->g()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/a/a/a/s;->i()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 163
    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_5

    .line 164
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 167
    goto :goto_0

    :cond_1
    move v2, v4

    .line 152
    goto :goto_1

    .line 157
    :cond_2
    if-eqz v6, :cond_3

    .line 158
    invoke-virtual {v0}, Lcom/a/a/a/s;->g()J

    move-result-wide v6

    goto :goto_2

    .line 160
    :cond_3
    invoke-virtual {v0}, Lcom/a/a/a/s;->i()J

    move-result-wide v6

    goto :goto_2

    .line 169
    :cond_4
    return-object v1

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public c(Lcom/a/a/a/s;)V
    .locals 2
    .param p1    # Lcom/a/a/a/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public d(Lcom/a/a/a/j;)Ljava/util/Set;
    .locals 4
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
    .line 186
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 187
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 188
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    return-object v1
.end method

.method public d(Lcom/a/a/a/s;)V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/a/a/a/e/a;->c(Lcom/a/a/a/s;)V

    .line 198
    return-void
.end method
