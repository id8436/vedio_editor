.class Lcom/learnncode/mediachooser/q;
.super Landroid/os/Handler;
.source "VideoControllerView.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/learnncode/mediachooser/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/m;)V
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 504
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/q;->a:Ljava/lang/ref/WeakReference;

    .line 505
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, Lcom/learnncode/mediachooser/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/m;

    .line 509
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->c(Lcom/learnncode/mediachooser/m;)Lcom/learnncode/mediachooser/p;

    move-result-object v1

    if-nez v1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 516
    :pswitch_0
    invoke-virtual {v0}, Lcom/learnncode/mediachooser/m;->c()V

    goto :goto_0

    .line 519
    :pswitch_1
    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->d(Lcom/learnncode/mediachooser/m;)I

    move-result v1

    .line 520
    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->e(Lcom/learnncode/mediachooser/m;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->f(Lcom/learnncode/mediachooser/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->c(Lcom/learnncode/mediachooser/m;)Lcom/learnncode/mediachooser/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/learnncode/mediachooser/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/q;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 522
    rem-int/lit16 v1, v1, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/learnncode/mediachooser/q;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
