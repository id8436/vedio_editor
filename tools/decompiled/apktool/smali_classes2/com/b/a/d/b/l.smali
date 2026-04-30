.class Lcom/b/a/d/b/l;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/b/a/d/b/v;


# static fields
.field private static final a:Lcom/b/a/d/b/n;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/h/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/b/a/d/b/n;

.field private final e:Lcom/b/a/d/b/p;

.field private final f:Lcom/b/a/d/c;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Z

.field private j:Z

.field private k:Lcom/b/a/d/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b/z",
            "<*>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/lang/Exception;

.field private n:Z

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/h/f;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/b/a/d/b/u;

.field private q:Lcom/b/a/d/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b/s",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile r:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/b/a/d/b/n;

    invoke-direct {v0}, Lcom/b/a/d/b/n;-><init>()V

    sput-object v0, Lcom/b/a/d/b/l;->a:Lcom/b/a/d/b/n;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/b/a/d/b/o;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/b/a/d/b/o;-><init>(Lcom/b/a/d/b/m;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/b/a/d/b/l;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/d/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/b/a/d/b/p;)V
    .locals 7

    .prologue
    .line 53
    sget-object v6, Lcom/b/a/d/b/l;->a:Lcom/b/a/d/b/n;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/d/b/l;-><init>(Lcom/b/a/d/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/b/a/d/b/p;Lcom/b/a/d/b/n;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/b/a/d/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/b/a/d/b/p;Lcom/b/a/d/b/n;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/b/l;->c:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/b/a/d/b/l;->f:Lcom/b/a/d/c;

    .line 59
    iput-object p2, p0, Lcom/b/a/d/b/l;->g:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-object p3, p0, Lcom/b/a/d/b/l;->h:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-boolean p4, p0, Lcom/b/a/d/b/l;->i:Z

    .line 62
    iput-object p5, p0, Lcom/b/a/d/b/l;->e:Lcom/b/a/d/b/p;

    .line 63
    iput-object p6, p0, Lcom/b/a/d/b/l;->d:Lcom/b/a/d/b/n;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/b/a/d/b/l;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/b/a/d/b/l;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/b/a/d/b/l;->j:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/b/a/d/b/l;->k:Lcom/b/a/d/b/z;

    invoke-interface {v0}, Lcom/b/a/d/b/z;->d()V

    .line 163
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/b/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/b/a/d/b/l;->d:Lcom/b/a/d/b/n;

    iget-object v1, p0, Lcom/b/a/d/b/l;->k:Lcom/b/a/d/b/z;

    iget-boolean v2, p0, Lcom/b/a/d/b/l;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/b/n;->a(Lcom/b/a/d/b/z;Z)Lcom/b/a/d/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/b/l;->q:Lcom/b/a/d/b/s;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/b/l;->l:Z

    .line 152
    iget-object v0, p0, Lcom/b/a/d/b/l;->q:Lcom/b/a/d/b/s;

    invoke-virtual {v0}, Lcom/b/a/d/b/s;->e()V

    .line 153
    iget-object v0, p0, Lcom/b/a/d/b/l;->e:Lcom/b/a/d/b/p;

    iget-object v1, p0, Lcom/b/a/d/b/l;->f:Lcom/b/a/d/c;

    iget-object v2, p0, Lcom/b/a/d/b/l;->q:Lcom/b/a/d/b/s;

    invoke-interface {v0, v1, v2}, Lcom/b/a/d/b/p;->a(Lcom/b/a/d/c;Lcom/b/a/d/b/s;)V

    .line 155
    iget-object v0, p0, Lcom/b/a/d/b/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/h/f;

    .line 156
    invoke-direct {p0, v0}, Lcom/b/a/d/b/l;->d(Lcom/b/a/h/f;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/b/a/d/b/l;->q:Lcom/b/a/d/b/s;

    invoke-virtual {v2}, Lcom/b/a/d/b/s;->e()V

    .line 158
    iget-object v2, p0, Lcom/b/a/d/b/l;->q:Lcom/b/a/d/b/s;

    invoke-interface {v0, v2}, Lcom/b/a/h/f;->a(Lcom/b/a/d/b/z;)V

    goto :goto_1

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/b/a/d/b/l;->q:Lcom/b/a/d/b/s;

    invoke-virtual {v0}, Lcom/b/a/d/b/s;->f()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/d/b/l;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/b/a/d/b/l;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/b/a/d/b/l;->j:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/b/a/d/b/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/b/l;->n:Z

    .line 179
    iget-object v0, p0, Lcom/b/a/d/b/l;->e:Lcom/b/a/d/b/p;

    iget-object v1, p0, Lcom/b/a/d/b/l;->f:Lcom/b/a/d/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/b/a/d/b/p;->a(Lcom/b/a/d/c;Lcom/b/a/d/b/s;)V

    .line 181
    iget-object v0, p0, Lcom/b/a/d/b/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/h/f;

    .line 182
    invoke-direct {p0, v0}, Lcom/b/a/d/b/l;->d(Lcom/b/a/h/f;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/b/a/d/b/l;->m:Ljava/lang/Exception;

    invoke-interface {v0, v2}, Lcom/b/a/h/f;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c(Lcom/b/a/h/f;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/b/a/d/b/l;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/b/l;->o:Ljava/util/Set;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/b/l;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private d(Lcom/b/a/h/f;)Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/b/a/d/b/l;->o:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d/b/l;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-boolean v0, p0, Lcom/b/a/d/b/l;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/d/b/l;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/d/b/l;->j:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/b/a/d/b/l;->p:Lcom/b/a/d/b/u;

    invoke-virtual {v0}, Lcom/b/a/d/b/u;->a()V

    .line 121
    iget-object v0, p0, Lcom/b/a/d/b/l;->r:Ljava/util/concurrent/Future;

    .line 122
    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 125
    :cond_2
    iput-boolean v1, p0, Lcom/b/a/d/b/l;->j:Z

    .line 126
    iget-object v0, p0, Lcom/b/a/d/b/l;->e:Lcom/b/a/d/b/p;

    iget-object v1, p0, Lcom/b/a/d/b/l;->f:Lcom/b/a/d/c;

    invoke-interface {v0, p0, v1}, Lcom/b/a/d/b/p;->a(Lcom/b/a/d/b/l;Lcom/b/a/d/c;)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/d/b/u;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/b/a/d/b/l;->p:Lcom/b/a/d/b/u;

    .line 68
    iget-object v0, p0, Lcom/b/a/d/b/l;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/b/l;->r:Ljava/util/concurrent/Future;

    .line 69
    return-void
.end method

.method public a(Lcom/b/a/d/b/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/z",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/b/a/d/b/l;->k:Lcom/b/a/d/b/z;

    .line 137
    sget-object v0, Lcom/b/a/d/b/l;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public a(Lcom/b/a/h/f;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 78
    iget-boolean v0, p0, Lcom/b/a/d/b/l;->l:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/b/a/d/b/l;->q:Lcom/b/a/d/b/s;

    invoke-interface {p1, v0}, Lcom/b/a/h/f;->a(Lcom/b/a/d/b/z;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/d/b/l;->n:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/b/a/d/b/l;->m:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/b/a/h/f;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/b/a/d/b/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 167
    iput-object p1, p0, Lcom/b/a/d/b/l;->m:Ljava/lang/Exception;

    .line 168
    sget-object v0, Lcom/b/a/d/b/l;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public b(Lcom/b/a/d/b/u;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/b/a/d/b/l;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/b/l;->r:Ljava/util/concurrent/Future;

    .line 74
    return-void
.end method

.method public b(Lcom/b/a/h/f;)V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 89
    iget-boolean v0, p0, Lcom/b/a/d/b/l;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/d/b/l;->n:Z

    if-eqz v0, :cond_2

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/b/a/d/b/l;->c(Lcom/b/a/h/f;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/b/a/d/b/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/b/a/d/b/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/b/a/d/b/l;->a()V

    goto :goto_0
.end method
