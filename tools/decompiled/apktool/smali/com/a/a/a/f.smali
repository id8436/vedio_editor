.class Lcom/a/a/a/f;
.super Lcom/a/a/a/g/f;
.source "CallbackManager.java"


# instance fields
.field a:J

.field final synthetic b:Lcom/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/a/e;)V
    .locals 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/e;

    invoke-direct {p0}, Lcom/a/a/a/g/f;-><init>()V

    .line 92
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/a/a/a/f;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public a(Lcom/a/a/a/g/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p1, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/g/i;

    sget-object v1, Lcom/a/a/a/g/i;->a:Lcom/a/a/a/g/i;

    if-ne v0, v1, :cond_1

    .line 101
    check-cast p1, Lcom/a/a/a/g/a/b;

    .line 102
    iget-object v0, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/e;

    iget-object v0, v0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;

    invoke-static {v0, p1}, Lcom/a/a/a/d;->a(Lcom/a/a/a/d;Lcom/a/a/a/g/a/b;)V

    .line 103
    iget-object v0, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/e;

    iget-object v0, v0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;

    invoke-static {v0}, Lcom/a/a/a/d;->a(Lcom/a/a/a/d;)Lcom/a/a/a/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/f;->a:J

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p1, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/g/i;

    sget-object v1, Lcom/a/a/a/g/i;->b:Lcom/a/a/a/g/i;

    if-ne v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/e;

    iget-object v0, v0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;

    check-cast p1, Lcom/a/a/a/g/a/d;

    invoke-static {v0, p1}, Lcom/a/a/a/d;->a(Lcom/a/a/a/d;Lcom/a/a/a/g/a/d;)V

    .line 106
    iget-object v0, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/e;

    iget-object v0, v0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;

    invoke-static {v0}, Lcom/a/a/a/d;->a(Lcom/a/a/a/d;)Lcom/a/a/a/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/f;->a:J

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p1, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/g/i;

    sget-object v1, Lcom/a/a/a/g/i;->d:Lcom/a/a/a/g/i;

    if-ne v0, v1, :cond_4

    .line 108
    check-cast p1, Lcom/a/a/a/g/a/e;

    .line 109
    invoke-virtual {p1}, Lcom/a/a/a/g/a/e;->c()I

    move-result v0

    .line 110
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/e;

    iget-object v0, v0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;

    iget-object v0, v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v0}, Lcom/a/a/a/g/h;->a()V

    .line 112
    iget-object v0, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/e;

    iget-object v0, v0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;

    invoke-static {v0}, Lcom/a/a/a/d;->b(Lcom/a/a/a/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 113
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/a/a/a/g/a/e;->d()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p1, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/g/i;

    sget-object v1, Lcom/a/a/a/g/i;->e:Lcom/a/a/a/g/i;

    if-ne v0, v1, :cond_0

    .line 117
    check-cast p1, Lcom/a/a/a/g/a/h;

    invoke-virtual {p1}, Lcom/a/a/a/g/a/h;->c()Lcom/a/a/a/q;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/a/a/a/q;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
