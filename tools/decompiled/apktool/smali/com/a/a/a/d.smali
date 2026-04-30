.class public Lcom/a/a/a/d;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# instance fields
.field final a:Lcom/a/a/a/g/h;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/a/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/a/g/c;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lcom/a/a/a/k/b;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/a/a/a/g/c;Lcom/a/a/a/k/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/a/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-object p2, p0, Lcom/a/a/a/d;->e:Lcom/a/a/a/k/b;

    .line 39
    new-instance v0, Lcom/a/a/a/g/h;

    const-string/jumbo v1, "jq_callback"

    invoke-direct {v0, p2, p1, v1}, Lcom/a/a/a/g/h;-><init>(Lcom/a/a/a/k/b;Lcom/a/a/a/g/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/d;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    iput-object p1, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/g/c;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/a/a/a/d;)Lcom/a/a/a/k/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/a/a/a/d;->e:Lcom/a/a/a/k/b;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/a/a/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/a/a/a/d;->b()V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/a/a/a/d;Lcom/a/a/a/g/a/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/a/a/a/d;->a(Lcom/a/a/a/g/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/d;Lcom/a/a/a/g/a/d;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/a/a/a/d;->a(Lcom/a/a/a/g/a/d;)V

    return-void
.end method

.method private a(Lcom/a/a/a/g/a/b;)V
    .locals 3
    .param p1    # Lcom/a/a/a/g/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->f()Lcom/a/a/a/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/d;->d(Lcom/a/a/a/r;)V

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->f()Lcom/a/a/a/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/d;->d(Lcom/a/a/a/r;I)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->f()Lcom/a/a/a/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->g()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/a/a/a/d;->b(Lcom/a/a/a/r;ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 148
    :pswitch_3
    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->f()Lcom/a/a/a/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/d;->c(Lcom/a/a/a/r;)V

    goto :goto_0

    .line 151
    :pswitch_4
    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->f()Lcom/a/a/a/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/g/a/b;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/d;->c(Lcom/a/a/a/r;I)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/a/a/a/g/a/d;)V
    .locals 2
    .param p1    # Lcom/a/a/a/g/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/a/a/a/g/a/d;->c()Lcom/a/a/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/g/a/d;->d()Lcom/a/a/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/i;->a(Lcom/a/a/a/h;)V

    .line 133
    invoke-direct {p0}, Lcom/a/a/a/d;->a()V

    .line 134
    return-void
.end method

.method static synthetic b(Lcom/a/a/a/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/a/a/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/a/a/a/e;

    invoke-direct {v1, p0}, Lcom/a/a/a/e;-><init>(Lcom/a/a/a/d;)V

    const-string/jumbo v2, "job-manager-callbacks"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method private b(Lcom/a/a/a/r;ZLjava/lang/Throwable;)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    iget-object v0, p0, Lcom/a/a/a/d;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b/a;

    .line 158
    invoke-interface {v0, p1, p2, p3}, Lcom/a/a/a/b/a;->a(Lcom/a/a/a/r;ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method private c(Lcom/a/a/a/r;)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    iget-object v0, p0, Lcom/a/a/a/d;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b/a;

    .line 176
    invoke-interface {v0, p1}, Lcom/a/a/a/b/a;->b(Lcom/a/a/a/r;)V

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method private c(Lcom/a/a/a/r;I)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    iget-object v0, p0, Lcom/a/a/a/d;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b/a;

    .line 164
    invoke-interface {v0, p1, p2}, Lcom/a/a/a/b/a;->a(Lcom/a/a/a/r;I)V

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/a/a/a/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/a/a/a/r;)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    iget-object v0, p0, Lcom/a/a/a/d;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b/a;

    .line 182
    invoke-interface {v0, p1}, Lcom/a/a/a/b/a;->a(Lcom/a/a/a/r;)V

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private d(Lcom/a/a/a/r;I)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    iget-object v0, p0, Lcom/a/a/a/d;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b/a;

    .line 170
    invoke-interface {v0, p1, p2}, Lcom/a/a/a/b/a;->b(Lcom/a/a/a/r;I)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a/h;Lcom/a/a/a/i;)V
    .locals 2
    .param p1    # Lcom/a/a/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/a/a/a/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/d;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/d;

    .line 237
    invoke-virtual {v0, p2, p1}, Lcom/a/a/a/g/a/d;->a(Lcom/a/a/a/i;Lcom/a/a/a/h;)V

    .line 238
    iget-object v1, p0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    .line 239
    invoke-direct {p0}, Lcom/a/a/a/d;->a()V

    .line 240
    return-void
.end method

.method public a(Lcom/a/a/a/r;)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/a/a/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/b;

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/g/a/b;->a(Lcom/a/a/a/r;I)V

    .line 223
    iget-object v1, p0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/r;I)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/a/a/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/b;

    .line 191
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p2}, Lcom/a/a/a/g/a/b;->a(Lcom/a/a/a/r;II)V

    .line 192
    iget-object v1, p0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/r;ZLjava/lang/Throwable;)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/a/a/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/b;

    .line 213
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/a/a/a/g/a/b;->a(Lcom/a/a/a/r;IZLjava/lang/Throwable;)V

    .line 214
    iget-object v1, p0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    goto :goto_0
.end method

.method public b(Lcom/a/a/a/r;)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/a/a/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/b;

    .line 231
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/g/a/b;->a(Lcom/a/a/a/r;I)V

    .line 232
    iget-object v1, p0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    goto :goto_0
.end method

.method public b(Lcom/a/a/a/r;I)V
    .locals 2
    .param p1    # Lcom/a/a/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/a/a/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/b;

    .line 204
    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1, p2}, Lcom/a/a/a/g/a/b;->a(Lcom/a/a/a/r;II)V

    .line 205
    iget-object v1, p0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    goto :goto_0
.end method
