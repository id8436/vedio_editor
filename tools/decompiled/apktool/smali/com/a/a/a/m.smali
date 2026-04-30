.class Lcom/a/a/a/m;
.super Ljava/lang/Object;
.source "ConsumerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final g:Lcom/a/a/a/g/d;


# instance fields
.field final a:Lcom/a/a/a/g/h;

.field final b:Lcom/a/a/a/g/e;

.field final c:Lcom/a/a/a/g/c;

.field final d:Lcom/a/a/a/k/b;

.field e:Z

.field f:J

.field final h:Lcom/a/a/a/g/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/a/a/a/n;

    invoke-direct {v0}, Lcom/a/a/a/n;-><init>()V

    sput-object v0, Lcom/a/a/a/m;->g:Lcom/a/a/a/g/d;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/g/e;Lcom/a/a/a/g/h;Lcom/a/a/a/g/c;Lcom/a/a/a/k/b;)V
    .locals 2

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Lcom/a/a/a/o;

    invoke-direct {v0, p0}, Lcom/a/a/a/o;-><init>(Lcom/a/a/a/m;)V

    iput-object v0, p0, Lcom/a/a/a/m;->h:Lcom/a/a/a/g/f;

    .line 380
    iput-object p2, p0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    .line 381
    iput-object p3, p0, Lcom/a/a/a/m;->c:Lcom/a/a/a/g/c;

    .line 382
    iput-object p1, p0, Lcom/a/a/a/m;->b:Lcom/a/a/a/g/e;

    .line 383
    iput-object p4, p0, Lcom/a/a/a/m;->d:Lcom/a/a/a/k/b;

    .line 384
    invoke-interface {p4}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/m;->f:J

    .line 385
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    sget-object v1, Lcom/a/a/a/m;->g:Lcom/a/a/a/g/d;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/d;)V

    .line 376
    return-void
.end method

.method private a(Lcom/a/a/a/g/a/e;)V
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p1}, Lcom/a/a/a/g/a/e;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v0, p0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v0}, Lcom/a/a/a/g/h;->a()V

    goto :goto_0

    .line 399
    :pswitch_1
    const-string/jumbo v0, "Consumer has been poked."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/a/a/a/g/a/i;)V
    .locals 4

    .prologue
    .line 405
    const-string/jumbo v0, "running job %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/g/a/i;->c()Lcom/a/a/a/s;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    invoke-virtual {p1}, Lcom/a/a/a/g/a/i;->c()Lcom/a/a/a/s;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Lcom/a/a/a/s;->d()I

    move-result v0

    iget-object v2, p0, Lcom/a/a/a/m;->d:Lcom/a/a/a/k/b;

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/k/b;)I

    move-result v2

    .line 408
    iget-object v0, p0, Lcom/a/a/a/m;->c:Lcom/a/a/a/g/c;

    const-class v3, Lcom/a/a/a/g/a/j;

    invoke-virtual {v0, v3}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/j;

    .line 409
    invoke-virtual {v0, v1}, Lcom/a/a/a/g/a/j;->a(Lcom/a/a/a/s;)V

    .line 410
    invoke-virtual {v0, v2}, Lcom/a/a/a/g/a/j;->a(I)V

    .line 411
    invoke-virtual {v0, p0}, Lcom/a/a/a/g/a/j;->a(Ljava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lcom/a/a/a/m;->b:Lcom/a/a/a/g/e;

    invoke-interface {v1, v0}, Lcom/a/a/a/g/e;->a(Lcom/a/a/a/g/b;)V

    .line 413
    return-void
.end method

.method static synthetic a(Lcom/a/a/a/m;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/a/a/a/m;->a()V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/m;Lcom/a/a/a/g/a/e;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/a/a/a/m;->a(Lcom/a/a/a/g/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/m;Lcom/a/a/a/g/a/i;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/a/a/a/m;->a(Lcom/a/a/a/g/a/i;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    iget-object v1, p0, Lcom/a/a/a/m;->h:Lcom/a/a/a/g/f;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/f;)V

    .line 390
    return-void
.end method
