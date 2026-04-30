.class Lcom/e/a/a/a/b/q;
.super Landroid/os/Handler;
.source "RecyclerViewDragDropManager.java"


# instance fields
.field private a:Lcom/e/a/a/a/b/l;

.field private b:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/b/l;)V
    .locals 0

    .prologue
    .line 1582
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1583
    iput-object p1, p0, Lcom/e/a/a/a/b/q;->a:Lcom/e/a/a/a/b/l;

    .line 1584
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1587
    invoke-virtual {p0, v0}, Lcom/e/a/a/a/b/q;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1588
    iput-object v0, p0, Lcom/e/a/a/a/b/q;->a:Lcom/e/a/a/a/b/l;

    .line 1589
    return-void
.end method

.method public a(Landroid/view/MotionEvent;I)V
    .locals 6

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/e/a/a/a/b/q;->b()V

    .line 1602
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/a/a/b/q;->b:Landroid/view/MotionEvent;

    .line 1603
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/e/a/a/a/b/q;->sendEmptyMessageAtTime(IJ)Z

    .line 1604
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1607
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/b/q;->removeMessages(I)V

    .line 1608
    iget-object v0, p0, Lcom/e/a/a/a/b/q;->b:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/e/a/a/a/b/q;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a/a/b/q;->b:Landroid/view/MotionEvent;

    .line 1612
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1593
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1598
    :goto_0
    return-void

    .line 1595
    :pswitch_0
    iget-object v0, p0, Lcom/e/a/a/a/b/q;->a:Lcom/e/a/a/a/b/l;

    iget-object v1, p0, Lcom/e/a/a/a/b/q;->b:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/e/a/a/a/b/l;->a(Lcom/e/a/a/a/b/l;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
