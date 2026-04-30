.class Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "ClipPlayerActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;JJ)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    .line 392
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 393
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$800(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$900(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    .line 407
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->cancel()V

    .line 400
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 401
    return-void
.end method
