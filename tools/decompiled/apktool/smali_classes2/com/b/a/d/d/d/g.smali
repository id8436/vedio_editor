.class Lcom/b/a/d/d/d/g;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# instance fields
.field private final a:Lcom/b/a/d/d/d/j;

.field private final b:Lcom/b/a/b/a;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lcom/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/e",
            "<",
            "Lcom/b/a/b/a;",
            "Lcom/b/a/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/b/a/d/d/d/i;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/d/d/d/j;Lcom/b/a/b/a;II)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/b/a/h;->a(Landroid/content/Context;)Lcom/b/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/h;->a()Lcom/b/a/d/b/a/e;

    move-result-object v1

    invoke-static {p1, p3, p4, p5, v1}, Lcom/b/a/d/d/d/g;->a(Landroid/content/Context;Lcom/b/a/b/a;IILcom/b/a/d/b/a/e;)Lcom/b/a/e;

    move-result-object v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/b/a/d/d/d/g;-><init>(Lcom/b/a/d/d/d/j;Lcom/b/a/b/a;Landroid/os/Handler;Lcom/b/a/e;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/b/a/d/d/d/j;Lcom/b/a/b/a;Landroid/os/Handler;Lcom/b/a/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/d/d/j;",
            "Lcom/b/a/b/a;",
            "Landroid/os/Handler;",
            "Lcom/b/a/e",
            "<",
            "Lcom/b/a/b/a;",
            "Lcom/b/a/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/b/a/d/d/d/g;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/b/a/d/d/d/g;->e:Z

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/b/a/d/d/d/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/b/a/d/d/d/k;-><init>(Lcom/b/a/d/d/d/g;Lcom/b/a/d/d/d/h;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/b/a/d/d/d/g;->a:Lcom/b/a/d/d/d/j;

    .line 53
    iput-object p2, p0, Lcom/b/a/d/d/d/g;->b:Lcom/b/a/b/a;

    .line 54
    iput-object p3, p0, Lcom/b/a/d/d/d/g;->c:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lcom/b/a/d/d/d/g;->f:Lcom/b/a/e;

    .line 56
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/b/a/b/a;IILcom/b/a/d/b/a/e;)Lcom/b/a/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/b/a;",
            "II",
            "Lcom/b/a/d/b/a/e;",
            ")",
            "Lcom/b/a/e",
            "<",
            "Lcom/b/a/b/a;",
            "Lcom/b/a/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/b/a/d/d/d/o;

    invoke-direct {v0, p4}, Lcom/b/a/d/d/d/o;-><init>(Lcom/b/a/d/b/a/e;)V

    .line 173
    new-instance v1, Lcom/b/a/d/d/d/m;

    invoke-direct {v1}, Lcom/b/a/d/d/d/m;-><init>()V

    .line 174
    invoke-static {}, Lcom/b/a/d/d/a;->b()Lcom/b/a/d/b;

    move-result-object v2

    .line 175
    invoke-static {p0}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v3

    const-class v4, Lcom/b/a/b/a;

    invoke-virtual {v3, v1, v4}, Lcom/b/a/l;->a(Lcom/b/a/d/c/s;Ljava/lang/Class;)Lcom/b/a/o;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/b/a/o;->a(Ljava/lang/Object;)Lcom/b/a/p;

    move-result-object v1

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/b/a/p;->a(Ljava/lang/Class;)Lcom/b/a/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/b/a/g;->b(Lcom/b/a/d/b;)Lcom/b/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/e;->b(Lcom/b/a/d/e;)Lcom/b/a/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/e;->b(Z)Lcom/b/a/e;

    move-result-object v0

    sget-object v1, Lcom/b/a/d/b/e;->b:Lcom/b/a/d/b/e;

    invoke-virtual {v0, v1}, Lcom/b/a/e;->b(Lcom/b/a/d/b/e;)Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/b/a/e;->b(II)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/b/a/d/d/d/g;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/d/d/d/g;->e:Z

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/d/d/g;->e:Z

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/b/a/d/d/d/g;->b:Lcom/b/a/b/a;

    invoke-virtual {v2}, Lcom/b/a/b/a;->b()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 101
    iget-object v2, p0, Lcom/b/a/d/d/d/g;->b:Lcom/b/a/b/a;

    invoke-virtual {v2}, Lcom/b/a/b/a;->a()V

    .line 102
    new-instance v2, Lcom/b/a/d/d/d/i;

    iget-object v3, p0, Lcom/b/a/d/d/d/g;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/b/a/d/d/d/g;->b:Lcom/b/a/b/a;

    invoke-virtual {v4}, Lcom/b/a/b/a;->d()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/b/a/d/d/d/i;-><init>(Landroid/os/Handler;IJ)V

    .line 103
    iget-object v0, p0, Lcom/b/a/d/d/d/g;->f:Lcom/b/a/e;

    new-instance v1, Lcom/b/a/d/d/d/l;

    invoke-direct {v1}, Lcom/b/a/d/d/d/l;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/e;->b(Lcom/b/a/d/c;)Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/b/a/e;->a(Lcom/b/a/h/b/k;)Lcom/b/a/h/b/k;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/b/a/d/d/d/g;->d:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/d/d/g;->d:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/d/d/d/g;->h:Z

    .line 73
    invoke-direct {p0}, Lcom/b/a/d/d/d/g;->e()V

    goto :goto_0
.end method

.method a(Lcom/b/a/d/d/d/i;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 110
    iget-boolean v0, p0, Lcom/b/a/d/d/d/g;->h:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/b/a/d/d/d/g;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/d/d/g;->g:Lcom/b/a/d/d/d/i;

    .line 116
    iput-object p1, p0, Lcom/b/a/d/d/d/g;->g:Lcom/b/a/d/d/d/i;

    .line 117
    iget-object v1, p0, Lcom/b/a/d/d/d/g;->a:Lcom/b/a/d/d/d/j;

    invoke-static {p1}, Lcom/b/a/d/d/d/i;->a(Lcom/b/a/d/d/d/i;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/b/a/d/d/d/j;->b(I)V

    .line 119
    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/b/a/d/d/d/g;->c:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/d/d/d/g;->e:Z

    .line 124
    invoke-direct {p0}, Lcom/b/a/d/d/d/g;->e()V

    goto :goto_0
.end method

.method public a(Lcom/b/a/d/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/d/d/g;->f:Lcom/b/a/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/b/a/d/g;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/b/a/e;->b([Lcom/b/a/d/g;)Lcom/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/d/d/g;->f:Lcom/b/a/e;

    .line 64
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/d/d/d/g;->d:Z

    .line 78
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/b/a/d/d/d/g;->b()V

    .line 82
    iget-object v0, p0, Lcom/b/a/d/d/d/g;->g:Lcom/b/a/d/d/d/i;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/b/a/d/d/d/g;->g:Lcom/b/a/d/d/d/i;

    invoke-static {v0}, Lcom/b/a/h;->a(Lcom/b/a/h/b/k;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/d/d/d/g;->g:Lcom/b/a/d/d/d/i;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/d/d/g;->h:Z

    .line 88
    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/b/a/d/d/d/g;->g:Lcom/b/a/d/d/d/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d/d/d/g;->g:Lcom/b/a/d/d/d/i;

    invoke-virtual {v0}, Lcom/b/a/d/d/d/i;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
