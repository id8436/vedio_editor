.class Lcom/a/a/a/x;
.super Ljava/lang/Object;
.source "JobManagerThread.java"

# interfaces
.implements Lcom/a/a/a/h/b;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/a/a/a/k/b;

.field final b:Lcom/a/a/a/aa;

.field final c:Lcom/a/a/a/aa;

.field final d:Lcom/a/a/a/k;

.field final e:Lcom/a/a/a/j;

.field final f:Lcom/a/a/a/d;

.field final g:Lcom/a/a/a/g/g;

.field h:Lcom/a/a/a/j/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private final j:J

.field private final k:Lcom/a/a/a/h/c;

.field private final l:Lcom/a/a/a/d/a;

.field private final m:Lcom/a/a/a/g/c;

.field private n:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/j/c;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method constructor <init>(Lcom/a/a/a/c/a;Lcom/a/a/a/g/g;Lcom/a/a/a/g/c;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/a/a/a/j;

    invoke-direct {v0}, Lcom/a/a/a/j;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    .line 57
    iput-boolean v1, p0, Lcom/a/a/a/x;->p:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/x;->q:Z

    .line 65
    iput-boolean v1, p0, Lcom/a/a/a/x;->r:Z

    .line 73
    iput-object p2, p0, Lcom/a/a/a/x;->g:Lcom/a/a/a/g/g;

    .line 74
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->j()Lcom/a/a/a/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->j()Lcom/a/a/a/f/a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/f/b;->a(Lcom/a/a/a/f/a;)V

    .line 77
    :cond_0
    iput-object p3, p0, Lcom/a/a/a/x;->m:Lcom/a/a/a/g/c;

    .line 78
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->m()Lcom/a/a/a/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    .line 79
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/x;->i:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v0}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/x;->j:J

    .line 81
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->o()Lcom/a/a/a/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    .line 82
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    instance-of v0, v0, Lcom/a/a/a/a;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    iget-object v2, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a;-><init>(Lcom/a/a/a/j/a;Lcom/a/a/a/k/b;)V

    iput-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->d()Lcom/a/a/a/ad;

    move-result-object v0

    iget-wide v2, p0, Lcom/a/a/a/x;->j:J

    .line 87
    invoke-interface {v0, p1, v2, v3}, Lcom/a/a/a/ad;->a(Lcom/a/a/a/c/a;J)Lcom/a/a/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    .line 88
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->d()Lcom/a/a/a/ad;

    move-result-object v0

    iget-wide v2, p0, Lcom/a/a/a/x;->j:J

    .line 89
    invoke-interface {v0, p1, v2, v3}, Lcom/a/a/a/ad;->b(Lcom/a/a/a/c/a;J)Lcom/a/a/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    .line 90
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->g()Lcom/a/a/a/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/x;->k:Lcom/a/a/a/h/c;

    .line 91
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->e()Lcom/a/a/a/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/x;->l:Lcom/a/a/a/d/a;

    .line 92
    iget-object v0, p0, Lcom/a/a/a/x;->k:Lcom/a/a/a/h/c;

    instance-of v0, v0, Lcom/a/a/a/h/a;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/a/a/a/x;->k:Lcom/a/a/a/h/c;

    check-cast v0, Lcom/a/a/a/h/a;

    invoke-interface {v0, p0}, Lcom/a/a/a/h/a;->a(Lcom/a/a/a/h/b;)V

    .line 95
    :cond_2
    new-instance v0, Lcom/a/a/a/k;

    iget-object v1, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-direct {v0, p0, v1, p3, p1}, Lcom/a/a/a/k;-><init>(Lcom/a/a/a/x;Lcom/a/a/a/k/b;Lcom/a/a/a/g/c;Lcom/a/a/a/c/a;)V

    iput-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    .line 96
    new-instance v0, Lcom/a/a/a/d;

    iget-object v1, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-direct {v0, p3, v1}, Lcom/a/a/a/d;-><init>(Lcom/a/a/a/g/c;Lcom/a/a/a/k/b;)V

    iput-object v0, p0, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    .line 97
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/a/a/a/s;
    .locals 5

    .prologue
    .line 201
    if-eqz p1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v0}, Lcom/a/a/a/j;->i()V

    .line 203
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a([Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    sget-object v1, Lcom/a/a/a/ah;->b:Lcom/a/a/a/ah;

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Lcom/a/a/a/ah;)V

    .line 205
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(I)V

    .line 206
    iget-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v0, v1}, Lcom/a/a/a/aa;->d(Lcom/a/a/a/j;)Ljava/util/Set;

    move-result-object v1

    .line 207
    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    iget-object v2, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v0, v2}, Lcom/a/a/a/aa;->d(Lcom/a/a/a/j;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 210
    iget-object v3, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/a/a/a/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    goto :goto_0

    .line 217
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/a/a/a/g/a/a;)V
    .locals 12

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/a/a/a/g/a/a;->c()Lcom/a/a/a/r;

    move-result-object v4

    .line 114
    iget-object v0, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v0}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v6

    .line 115
    invoke-virtual {v4}, Lcom/a/a/a/r;->getDelayInMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 116
    invoke-virtual {v4}, Lcom/a/a/a/r;->getDelayInMs()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    add-long/2addr v0, v6

    .line 118
    :goto_0
    invoke-virtual {v4}, Lcom/a/a/a/r;->getDeadlineInMs()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_5

    .line 119
    invoke-virtual {v4}, Lcom/a/a/a/r;->getDeadlineInMs()J

    move-result-wide v2

    const-wide/32 v8, 0xf4240

    mul-long/2addr v2, v8

    add-long/2addr v2, v6

    .line 121
    :goto_1
    new-instance v5, Lcom/a/a/a/u;

    invoke-direct {v5}, Lcom/a/a/a/u;-><init>()V

    .line 122
    invoke-virtual {v4}, Lcom/a/a/a/r;->getPriority()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/a/a/a/u;->a(I)Lcom/a/a/a/u;

    move-result-object v5

    .line 123
    invoke-virtual {v5, v4}, Lcom/a/a/a/u;->a(Lcom/a/a/a/r;)Lcom/a/a/a/u;

    move-result-object v5

    .line 124
    invoke-virtual {v4}, Lcom/a/a/a/r;->getRunGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/a/a/a/u;->a(Ljava/lang/String;)Lcom/a/a/a/u;

    move-result-object v5

    .line 125
    invoke-virtual {v5, v6, v7}, Lcom/a/a/a/u;->a(J)Lcom/a/a/a/u;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v0, v1}, Lcom/a/a/a/u;->b(J)Lcom/a/a/a/u;

    move-result-object v0

    .line 127
    invoke-virtual {v4}, Lcom/a/a/a/r;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/u;->b(Ljava/lang/String;)Lcom/a/a/a/u;

    move-result-object v0

    .line 128
    invoke-virtual {v4}, Lcom/a/a/a/r;->getTags()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/u;->a(Ljava/util/Set;)Lcom/a/a/a/u;

    move-result-object v0

    .line 129
    invoke-virtual {v4}, Lcom/a/a/a/r;->isPersistent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/u;->a(Z)Lcom/a/a/a/u;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Lcom/a/a/a/u;->b(I)Lcom/a/a/a/u;

    move-result-object v0

    .line 131
    invoke-virtual {v4}, Lcom/a/a/a/r;->shouldCancelOnDeadline()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/a/a/a/u;->a(JZ)Lcom/a/a/a/u;

    move-result-object v0

    iget v1, v4, Lcom/a/a/a/r;->requiredNetworkType:I

    .line 132
    invoke-virtual {v0, v1}, Lcom/a/a/a/u;->c(I)Lcom/a/a/a/u;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    .line 133
    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/u;->d(J)Lcom/a/a/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/u;->a()Lcom/a/a/a/s;

    move-result-object v2

    .line 135
    invoke-virtual {v4}, Lcom/a/a/a/r;->getSingleInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/x;->a(Ljava/lang/String;)Lcom/a/a/a/s;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v3}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 137
    :goto_2
    if-eqz v1, :cond_9

    .line 138
    invoke-virtual {v4}, Lcom/a/a/a/r;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    .line 139
    :goto_3
    if-eqz v3, :cond_8

    .line 140
    iget-object v5, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    sget-object v8, Lcom/a/a/a/ah;->b:Lcom/a/a/a/ah;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4}, Lcom/a/a/a/r;->getSingleInstanceId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v8, v9}, Lcom/a/a/a/k;->b(Lcom/a/a/a/ah;[Ljava/lang/String;)Ljava/util/Set;

    .line 141
    invoke-interface {v0, v2, v3}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/s;Lcom/a/a/a/s;)V

    .line 145
    :goto_4
    invoke-static {}, Lcom/a/a/a/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string/jumbo v0, "added job class: %s priority: %d delay: %d group : %s persistent: %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/a/a/a/r;->getPriority()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    const/4 v5, 0x2

    invoke-virtual {v4}, Lcom/a/a/a/r;->getDelayInMs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v5

    const/4 v5, 0x3

    .line 148
    invoke-virtual {v4}, Lcom/a/a/a/r;->getRunGroupId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const/4 v5, 0x4

    invoke-virtual {v4}, Lcom/a/a/a/r;->isPersistent()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v3, v5

    .line 146
    invoke-static {v0, v3}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/a/a/a/x;->l:Lcom/a/a/a/d/a;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/a/a/a/x;->l:Lcom/a/a/a/d/a;

    invoke-interface {v0, v4}, Lcom/a/a/a/d/a;->a(Lcom/a/a/a/r;)V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/x;->i:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/a/a/a/s;->a(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v2}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/r;->onAdded()V

    .line 159
    iget-object v0, p0, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    invoke-virtual {v2}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/a/d;->a(Lcom/a/a/a/r;)V

    .line 160
    if-eqz v1, :cond_a

    .line 161
    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->a()V

    .line 162
    invoke-virtual {v4}, Lcom/a/a/a/r;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-direct {p0, v2, v6, v7}, Lcom/a/a/a/x;->a(Lcom/a/a/a/s;J)V

    .line 169
    :cond_3
    :goto_6
    return-void

    .line 116
    :cond_4
    const-wide/high16 v0, -0x8000000000000000L

    goto/16 :goto_0

    .line 119
    :cond_5
    const-wide v2, 0x7fffffffffffffffL

    goto/16 :goto_1

    .line 136
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_2

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    goto/16 :goto_3

    .line 143
    :cond_8
    invoke-interface {v0, v2}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/s;)Z

    goto/16 :goto_4

    .line 151
    :cond_9
    const-string/jumbo v0, "another job with same singleId: %s was already queued"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/a/a/a/r;->getSingleInstanceId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v0, v3}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 166
    :cond_a
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/a/a/a/x;->a(Lcom/a/a/a/s;I)V

    .line 167
    iget-object v0, p0, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    invoke-virtual {v2}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/d;->b(Lcom/a/a/a/r;)V

    goto :goto_6
.end method

.method private a(Lcom/a/a/a/g/a/c;)V
    .locals 4

    .prologue
    .line 452
    new-instance v0, Lcom/a/a/a/g;

    invoke-virtual {p1}, Lcom/a/a/a/g/a/c;->c()Lcom/a/a/a/ah;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/a/g/a/c;->d()[Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-virtual {p1}, Lcom/a/a/a/g/a/c;->e()Lcom/a/a/a/i;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/a/g;-><init>(Lcom/a/a/a/ah;[Ljava/lang/String;Lcom/a/a/a/i;)V

    .line 454
    iget-object v1, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v0, p0, v1}, Lcom/a/a/a/g;->a(Lcom/a/a/a/x;Lcom/a/a/a/k;)V

    .line 455
    invoke-virtual {v0}, Lcom/a/a/a/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {v0, p0}, Lcom/a/a/a/g;->a(Lcom/a/a/a/x;)V

    .line 463
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/x;->n:Ljava/util/List;

    if-nez v1, :cond_1

    .line 459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/a/a/a/x;->n:Ljava/util/List;

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/a/a/a/x;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/a/a/a/g/a/e;)V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p1}, Lcom/a/a/a/g/a/e;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/a/a/a/x;->g:Lcom/a/a/a/g/g;

    invoke-virtual {v0}, Lcom/a/a/a/g/g;->b()V

    .line 372
    iget-object v0, p0, Lcom/a/a/a/x;->g:Lcom/a/a/a/g/g;

    invoke-virtual {v0}, Lcom/a/a/a/g/g;->a()V

    .line 374
    :cond_0
    return-void
.end method

.method private a(Lcom/a/a/a/g/a/h;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->d()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot handle public query with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :sswitch_0
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->c()Lcom/a/a/a/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/x;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/a/a/q;->a(I)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 386
    :sswitch_1
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->c()Lcom/a/a/a/q;

    move-result-object v0

    invoke-direct {p0}, Lcom/a/a/a/x;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/a/a/a/x;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/a/a/q;->a(I)V

    goto :goto_0

    .line 389
    :sswitch_2
    const-string/jumbo v0, "handling start request..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-boolean v0, p0, Lcom/a/a/a/x;->p:Z

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/x;->p:Z

    .line 394
    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->b()Z

    goto :goto_0

    .line 397
    :sswitch_3
    const-string/jumbo v0, "handling stop request..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iput-boolean v2, p0, Lcom/a/a/a/x;->p:Z

    .line 399
    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->c()V

    goto :goto_0

    .line 402
    :sswitch_4
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/x;->b(Ljava/lang/String;)Lcom/a/a/a/ab;

    move-result-object v0

    .line 403
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->c()Lcom/a/a/a/q;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/ab;->ordinal()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/a/a/a/q;->a(I)V

    goto :goto_0

    .line 406
    :sswitch_5
    invoke-direct {p0}, Lcom/a/a/a/x;->f()V

    .line 407
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->c()Lcom/a/a/a/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->c()Lcom/a/a/a/q;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/a/a/a/q;->a(I)V

    goto :goto_0

    .line 412
    :sswitch_6
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->c()Lcom/a/a/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v1}, Lcom/a/a/a/k;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/a/a/q;->a(I)V

    goto :goto_0

    .line 415
    :sswitch_7
    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->c()Lcom/a/a/a/q;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/a/a/a/q;->a(I)V

    goto :goto_0

    .line 381
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x65 -> :sswitch_7
    .end sparse-switch
.end method

.method private a(Lcom/a/a/a/g/a/j;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/a/a/a/g/a/j;->d()I

    move-result v3

    .line 467
    invoke-virtual {p1}, Lcom/a/a/a/g/a/j;->c()Lcom/a/a/a/s;

    move-result-object v4

    .line 468
    iget-object v0, p0, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    invoke-virtual {v4}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/d;->a(Lcom/a/a/a/r;I)V

    .line 469
    const/4 v0, 0x0

    .line 470
    packed-switch v3, :pswitch_data_0

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown job holder result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/a/a/a/x;->c(Lcom/a/a/a/s;)V

    .line 502
    :goto_0
    iget-object v2, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v2, p1, v4, v0}, Lcom/a/a/a/k;->a(Lcom/a/a/a/g/a/j;Lcom/a/a/a/s;Lcom/a/a/a/ae;)V

    .line 503
    iget-object v0, p0, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    invoke-virtual {v4}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/d;->b(Lcom/a/a/a/r;I)V

    .line 504
    iget-object v0, p0, Lcom/a/a/a/x;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/a/a/a/x;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 506
    :goto_1
    if-ge v1, v2, :cond_0

    .line 507
    iget-object v0, p0, Lcom/a/a/a/x;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g;

    .line 508
    invoke-virtual {v0, v4, v3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/s;I)V

    .line 509
    invoke-virtual {v0}, Lcom/a/a/a/g;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 510
    invoke-virtual {v0, p0}, Lcom/a/a/a/g;->a(Lcom/a/a/a/x;)V

    .line 511
    iget-object v0, p0, Lcom/a/a/a/x;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 512
    add-int/lit8 v0, v1, -0x1

    .line 513
    add-int/lit8 v1, v2, -0x1

    .line 506
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 475
    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v4, v2}, Lcom/a/a/a/x;->a(Lcom/a/a/a/s;I)V

    .line 476
    invoke-direct {p0, v4}, Lcom/a/a/a/x;->c(Lcom/a/a/a/s;)V

    goto :goto_0

    .line 479
    :pswitch_2
    const/4 v2, 0x5

    invoke-direct {p0, v4, v2}, Lcom/a/a/a/x;->a(Lcom/a/a/a/s;I)V

    .line 480
    invoke-direct {p0, v4}, Lcom/a/a/a/x;->c(Lcom/a/a/a/s;)V

    goto :goto_0

    .line 483
    :pswitch_3
    const/4 v2, 0x6

    invoke-direct {p0, v4, v2}, Lcom/a/a/a/x;->a(Lcom/a/a/a/s;I)V

    .line 484
    invoke-direct {p0, v4}, Lcom/a/a/a/x;->c(Lcom/a/a/a/s;)V

    goto :goto_0

    .line 487
    :pswitch_4
    const/4 v2, 0x7

    invoke-direct {p0, v4, v2}, Lcom/a/a/a/x;->a(Lcom/a/a/a/s;I)V

    .line 488
    invoke-direct {p0, v4}, Lcom/a/a/a/x;->c(Lcom/a/a/a/s;)V

    goto :goto_0

    .line 491
    :pswitch_5
    invoke-virtual {v4}, Lcom/a/a/a/s;->t()Lcom/a/a/a/ae;

    move-result-object v0

    .line 492
    invoke-direct {p0, v4}, Lcom/a/a/a/x;->a(Lcom/a/a/a/s;)V

    goto :goto_0

    .line 495
    :pswitch_6
    const-string/jumbo v2, "running job failed and cancelled, doing nothing. Will be removed after it\'s onCancel is called by the CancelHandler"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 517
    :cond_0
    return-void

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_2

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/a/a/a/g/a/k;)V
    .locals 4

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/a/a/a/g/a/k;->c()I

    move-result v0

    .line 306
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/a/a/a/g/a/k;->d()Lcom/a/a/a/j/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/x;->c(Lcom/a/a/a/j/c;)V

    .line 313
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 309
    invoke-virtual {p1}, Lcom/a/a/a/g/a/k;->d()Lcom/a/a/a/j/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/x;->b(Lcom/a/a/a/j/c;)V

    goto :goto_0

    .line 311
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown scheduler message with what "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/a/a/a/s;)V
    .locals 6

    .prologue
    .line 529
    invoke-virtual {p1}, Lcom/a/a/a/s;->t()Lcom/a/a/a/ae;

    move-result-object v2

    .line 530
    if-nez v2, :cond_0

    .line 531
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->b(Lcom/a/a/a/s;)V

    .line 545
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {v2}, Lcom/a/a/a/ae;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {v2}, Lcom/a/a/a/ae;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/a/a/a/s;->a(I)V

    .line 537
    :cond_1
    const-wide/16 v0, -0x1

    .line 538
    invoke-virtual {v2}, Lcom/a/a/a/ae;->b()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 539
    invoke-virtual {v2}, Lcom/a/a/a/ae;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 541
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    .line 542
    invoke-interface {v2}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 541
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/s;->b(J)V

    .line 544
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->b(Lcom/a/a/a/s;)V

    goto :goto_0

    .line 542
    :cond_3
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_1
.end method

.method private a(Lcom/a/a/a/s;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 521
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/a/a/a/s;->c(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    invoke-virtual {p1}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/a/s;->u()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/a/a/a/d;->a(Lcom/a/a/a/r;ZLjava/lang/Throwable;)V

    .line 526
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    const-string/jumbo v1, "job\'s onCancel did throw an exception, ignoring..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/a/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/a/a/a/s;J)V
    .locals 10

    .prologue
    .line 172
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v3, p1, Lcom/a/a/a/s;->d:I

    .line 176
    invoke-virtual {p1}, Lcom/a/a/a/s;->i()J

    move-result-wide v6

    .line 177
    invoke-virtual {p1}, Lcom/a/a/a/s;->g()J

    move-result-wide v8

    .line 178
    cmp-long v0, v6, p2

    if-lez v0, :cond_3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v4, v6, p2

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    move-wide v4, v0

    .line 179
    :goto_1
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v8, v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v8, p2

    .line 180
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, v0

    .line 182
    :goto_2
    cmp-long v0, v6, p2

    if-lez v0, :cond_5

    const-wide/16 v0, 0x7530

    cmp-long v0, v4, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    .line 183
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    cmp-long v0, v6, v8

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    .line 184
    :goto_4
    if-nez v3, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 188
    :cond_2
    new-instance v0, Lcom/a/a/a/j/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/j/c;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v3}, Lcom/a/a/a/j/c;->a(I)V

    .line 190
    invoke-virtual {v0, v4, v5}, Lcom/a/a/a/j/c;->a(J)V

    .line 191
    invoke-virtual {v0, v2}, Lcom/a/a/a/j/c;->a(Ljava/lang/Long;)V

    .line 192
    iget-object v1, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    invoke-virtual {v1, v0}, Lcom/a/a/a/j/a;->a(Lcom/a/a/a/j/c;)V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/x;->q:Z

    goto :goto_0

    .line 178
    :cond_3
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_1

    .line 180
    :cond_4
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2

    .line 182
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto :goto_3

    .line 183
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static synthetic a(Lcom/a/a/a/x;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/a/a/a/x;->e()V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/x;Lcom/a/a/a/g/a/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/g/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/x;Lcom/a/a/a/g/a/c;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/g/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/x;Lcom/a/a/a/g/a/e;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/g/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/x;Lcom/a/a/a/g/a/h;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/g/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/x;Lcom/a/a/a/g/a/j;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/g/a/j;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/x;Lcom/a/a/a/g/a/k;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/g/a/k;)V

    return-void
.end method

.method private a(Lcom/a/a/a/j/c;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 316
    iget-object v1, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v1, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/j/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/a/j;->i()V

    .line 321
    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    iget-object v2, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v2}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/j;->a(J)V

    .line 322
    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {p1}, Lcom/a/a/a/j/c;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/j;->a(I)V

    .line 323
    iget-object v1, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    iget-object v2, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v1, v2}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/j;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/a/x;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/a/a/a/x;->r:Z

    return p1
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    iget-object v0, v0, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    invoke-virtual {v0}, Lcom/a/a/a/ag;->a()Ljava/util/Collection;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/a/j;->i()V

    .line 585
    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    iget-object v2, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v2}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/j;->a(J)V

    .line 586
    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v1, p1}, Lcom/a/a/a/j;->a(I)V

    .line 587
    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v1, v0}, Lcom/a/a/a/j;->a(Ljava/util/Collection;)V

    .line 588
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Z)V

    .line 589
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    iget-object v1, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v1}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Ljava/lang/Long;)V

    .line 591
    const/4 v0, 0x0

    .line 592
    iget-object v1, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    iget-object v2, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v1, v2}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    iget-object v1, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    iget-object v2, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v1, v2}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 594
    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/a/a/a/ab;
    .locals 5

    .prologue
    .line 429
    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v0, p1}, Lcom/a/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/a/a/a/ab;->c:Lcom/a/a/a/ab;

    .line 448
    :goto_0
    return-object v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->a(Ljava/lang/String;)Lcom/a/a/a/s;

    move-result-object v0

    .line 434
    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->a(Ljava/lang/String;)Lcom/a/a/a/s;

    move-result-object v0

    .line 437
    :cond_1
    if-nez v0, :cond_2

    .line 438
    sget-object v0, Lcom/a/a/a/ab;->d:Lcom/a/a/a/ab;

    goto :goto_0

    .line 440
    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/x;->g()I

    move-result v1

    .line 441
    iget-object v2, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v2}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v2

    .line 442
    iget v4, v0, Lcom/a/a/a/s;->d:I

    if-ge v1, v4, :cond_3

    .line 443
    sget-object v0, Lcom/a/a/a/ab;->a:Lcom/a/a/a/ab;

    goto :goto_0

    .line 445
    :cond_3
    invoke-virtual {v0}, Lcom/a/a/a/s;->i()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 446
    sget-object v0, Lcom/a/a/a/ab;->a:Lcom/a/a/a/ab;

    goto :goto_0

    .line 448
    :cond_4
    sget-object v0, Lcom/a/a/a/ab;->b:Lcom/a/a/a/ab;

    goto :goto_0
.end method

.method private b(Lcom/a/a/a/j/c;)V
    .locals 4

    .prologue
    .line 327
    iget-object v2, p0, Lcom/a/a/a/x;->o:Ljava/util/List;

    .line 328
    if-eqz v2, :cond_1

    .line 329
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 330
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/j/c;

    .line 331
    invoke-virtual {v0}, Lcom/a/a/a/j/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/j/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    if-nez v0, :cond_3

    .line 344
    :cond_2
    :goto_1
    return-void

    .line 339
    :cond_3
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/j/c;)Z

    move-result v0

    .line 340
    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a/j/a;->a(Lcom/a/a/a/j/c;)V

    goto :goto_1
.end method

.method private b(Lcom/a/a/a/s;)V
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/a/a/a/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    invoke-virtual {p1}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/r;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->b(Lcom/a/a/a/s;)Z

    .line 557
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->b(Lcom/a/a/a/s;)Z

    goto :goto_0

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not re-adding cancelled job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/a/a/x;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/a/a/a/x;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/a/a/a/x;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/a/a/a/x;->q:Z

    return p1
.end method

.method private c(Lcom/a/a/a/j/c;)V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/a/a/a/x;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/j/a;->a(Lcom/a/a/a/j/c;Z)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/j/c;)Z

    move-result v0

    .line 355
    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/j/a;->a(Lcom/a/a/a/j/c;Z)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/x;->o:Ljava/util/List;

    if-nez v0, :cond_3

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/x;->o:Ljava/util/List;

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/a/a/a/x;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->b()Z

    goto :goto_0
.end method

.method private c(Lcom/a/a/a/s;)V
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p1}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/r;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->c(Lcom/a/a/a/s;)V

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/x;->f:Lcom/a/a/a/d;

    invoke-virtual {p1}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/d;->b(Lcom/a/a/a/r;)V

    .line 566
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    invoke-interface {v0, p1}, Lcom/a/a/a/aa;->c(Lcom/a/a/a/s;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/a/a/a/x;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/a/a/a/x;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/a/a/a/x;)Lcom/a/a/a/g/c;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/a/a/a/x;->m:Lcom/a/a/a/g/c;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/x;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/x;->o:Ljava/util/List;

    .line 294
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/x;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/a/a/a/x;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/j/c;

    .line 299
    invoke-direct {p0, v0}, Lcom/a/a/a/x;->a(Lcom/a/a/a/j/c;)Z

    move-result v2

    .line 300
    iget-object v3, p0, Lcom/a/a/a/x;->h:Lcom/a/a/a/j/a;

    invoke-virtual {v3, v0, v2}, Lcom/a/a/a/j/a;->a(Lcom/a/a/a/j/c;Z)V

    .line 297
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/a/a/a/x;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/a/a/a/x;->q:Z

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    invoke-interface {v0}, Lcom/a/a/a/aa;->b()V

    .line 425
    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    invoke-interface {v0}, Lcom/a/a/a/aa;->b()V

    .line 426
    return-void
.end method

.method private g()I
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/a/a/a/x;->k:Lcom/a/a/a/h/c;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/x;->k:Lcom/a/a/a/h/c;

    iget-object v1, p0, Lcom/a/a/a/x;->i:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/a/a/a/h/c;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/Collection;)Lcom/a/a/a/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/a/a/a/s;"
        }
    .end annotation

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/x;->a(Ljava/util/Collection;Z)Lcom/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Collection;Z)Lcom/a/a/a/s;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/a/a/a/s;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 646
    iget-boolean v0, p0, Lcom/a/a/a/x;->p:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v0, v3

    .line 650
    :goto_1
    if-nez v0, :cond_4

    .line 651
    invoke-direct {p0}, Lcom/a/a/a/x;->g()I

    move-result v0

    .line 653
    const-string/jumbo v4, "looking for next job"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/a/a/a/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    iget-object v4, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v4}, Lcom/a/a/a/j;->i()V

    .line 655
    iget-object v4, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v4}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v6

    .line 656
    iget-object v4, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v4, v6, v7}, Lcom/a/a/a/j;->a(J)V

    .line 657
    iget-object v4, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v4, v0}, Lcom/a/a/a/j;->a(I)V

    .line 658
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v0, p1}, Lcom/a/a/a/j;->a(Ljava/util/Collection;)V

    .line 659
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Z)V

    .line 660
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/a/a/a/j;->a(Ljava/lang/Long;)V

    .line 661
    iget-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    iget-object v4, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v0, v4}, Lcom/a/a/a/aa;->b(Lcom/a/a/a/j;)Lcom/a/a/a/s;

    move-result-object v4

    .line 662
    const-string/jumbo v0, "non persistent result %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v0, v5}, Lcom/a/a/a/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    if-nez v4, :cond_6

    .line 665
    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    iget-object v4, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v0, v4}, Lcom/a/a/a/aa;->b(Lcom/a/a/a/j;)Lcom/a/a/a/s;

    move-result-object v4

    .line 667
    const-string/jumbo v0, "persistent result %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v0, v5}, Lcom/a/a/a/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 669
    :goto_2
    if-eqz v4, :cond_0

    .line 672
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/x;->l:Lcom/a/a/a/d/a;

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/a/a/a/x;->l:Lcom/a/a/a/d/a;

    invoke-virtual {v4}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/a/a/a/d/a;->a(Lcom/a/a/a/r;)V

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/x;->i:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/a/a/a/s;->a(Landroid/content/Context;)V

    .line 676
    invoke-virtual {v4}, Lcom/a/a/a/s;->g()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-gtz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Lcom/a/a/a/s;->a(Z)V

    .line 677
    invoke-virtual {v4}, Lcom/a/a/a/s;->g()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-gtz v0, :cond_5

    .line 678
    invoke-virtual {v4}, Lcom/a/a/a/s;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 679
    const/4 v0, 0x7

    invoke-direct {p0, v4, v0}, Lcom/a/a/a/x;->a(Lcom/a/a/a/s;I)V

    .line 680
    invoke-direct {p0, v4}, Lcom/a/a/a/x;->c(Lcom/a/a/a/s;)V

    move-object v0, v3

    .line 681
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 676
    goto :goto_3

    :cond_4
    move-object v3, v0

    .line 684
    goto/16 :goto_0

    :cond_5
    move-object v0, v4

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method a(Z)Ljava/lang/Long;
    .locals 6

    .prologue
    .line 603
    iget-object v0, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    iget-object v0, v0, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    invoke-virtual {v0}, Lcom/a/a/a/ag;->b()Ljava/lang/Long;

    move-result-object v2

    .line 604
    invoke-direct {p0}, Lcom/a/a/a/x;->g()I

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/a/a/a/x;->d:Lcom/a/a/a/k;

    iget-object v1, v1, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    invoke-virtual {v1}, Lcom/a/a/a/ag;->a()Ljava/util/Collection;

    move-result-object v1

    .line 606
    iget-object v3, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v3}, Lcom/a/a/a/j;->i()V

    .line 607
    iget-object v3, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    iget-object v4, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v4}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/a/a/a/j;->a(J)V

    .line 608
    iget-object v3, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v3, v0}, Lcom/a/a/a/j;->a(I)V

    .line 609
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Ljava/util/Collection;)V

    .line 610
    iget-object v0, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Z)V

    .line 611
    iget-object v0, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    iget-object v1, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v0, v1}, Lcom/a/a/a/aa;->c(Lcom/a/a/a/j;)Ljava/lang/Long;

    move-result-object v1

    .line 612
    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    iget-object v3, p0, Lcom/a/a/a/x;->e:Lcom/a/a/a/j;

    invoke-interface {v0, v3}, Lcom/a/a/a/aa;->c(Lcom/a/a/a/j;)Ljava/lang/Long;

    move-result-object v3

    .line 613
    const/4 v0, 0x0

    .line 614
    if-eqz v2, :cond_6

    .line 617
    :goto_0
    if-eqz v1, :cond_0

    .line 618
    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 620
    :cond_0
    if-eqz v3, :cond_1

    .line 621
    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 623
    :cond_1
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/a/a/a/x;->k:Lcom/a/a/a/h/c;

    instance-of v0, v0, Lcom/a/a/a/h/a;

    if-nez v0, :cond_5

    .line 625
    iget-object v0, p0, Lcom/a/a/a/x;->a:Lcom/a/a/a/k/b;

    invoke-interface {v0}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v0

    sget-wide v4, Lcom/a/a/a/v;->a:J

    add-long/2addr v0, v4

    .line 626
    if-nez v2, :cond_4

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 628
    :goto_4
    return-object v0

    .line 618
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 621
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_2

    .line 626
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_4

    :cond_6
    move-object v2, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/a/a/a/x;->m:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/f;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/f;

    .line 571
    iget-object v1, p0, Lcom/a/a/a/x;->g:Lcom/a/a/a/g/g;

    invoke-virtual {v1, v0}, Lcom/a/a/a/g/g;->a(Lcom/a/a/a/g/b;)V

    .line 572
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/a/a/a/x;->k:Lcom/a/a/a/h/c;

    instance-of v0, v0, Lcom/a/a/a/h/a;

    return v0
.end method

.method b()I
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/a/a/a/x;->b:Lcom/a/a/a/aa;

    invoke-interface {v0}, Lcom/a/a/a/aa;->a()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/a/x;->c:Lcom/a/a/a/aa;

    invoke-interface {v1}, Lcom/a/a/a/aa;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/a/a/a/x;->p:Z

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/a/a/a/x;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/a/x;->b(I)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/a/a/a/x;->g:Lcom/a/a/a/g/g;

    new-instance v1, Lcom/a/a/a/y;

    invoke-direct {v1, p0}, Lcom/a/a/a/y;-><init>(Lcom/a/a/a/x;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/g;->a(Lcom/a/a/a/g/f;)V

    .line 290
    return-void
.end method
