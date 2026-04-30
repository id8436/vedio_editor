.class Lcom/learnncode/mediachooser/o;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/m;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/m;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->c(Lcom/learnncode/mediachooser/m;)Lcom/learnncode/mediachooser/p;

    move-result-object v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    if-eqz p3, :cond_0

    .line 456
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->c(Lcom/learnncode/mediachooser/m;)Lcom/learnncode/mediachooser/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/learnncode/mediachooser/p;->c()I

    move-result v0

    int-to-long v0, v0

    .line 457
    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 458
    iget-object v2, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-static {v2}, Lcom/learnncode/mediachooser/m;->c(Lcom/learnncode/mediachooser/m;)Lcom/learnncode/mediachooser/p;

    move-result-object v2

    long-to-int v0, v0

    invoke-interface {v2, v0}, Lcom/learnncode/mediachooser/p;->a(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/learnncode/mediachooser/m;->a(I)V

    .line 422
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/learnncode/mediachooser/m;->a(Lcom/learnncode/mediachooser/m;Z)Z

    .line 429
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->b(Lcom/learnncode/mediachooser/m;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-static {v0, v1}, Lcom/learnncode/mediachooser/m;->a(Lcom/learnncode/mediachooser/m;Z)Z

    .line 463
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->d(Lcom/learnncode/mediachooser/m;)I

    .line 464
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/m;->d()V

    .line 465
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-virtual {v0, v1}, Lcom/learnncode/mediachooser/m;->a(I)V

    .line 470
    iget-object v0, p0, Lcom/learnncode/mediachooser/o;->a:Lcom/learnncode/mediachooser/m;

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->b(Lcom/learnncode/mediachooser/m;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    return-void
.end method
