.class Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1200(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 467
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 468
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1200(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1300(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;II)I

    move-result v0

    .line 478
    const-string/jumbo v1, "TrackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seek position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;I)V

    .line 482
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1400(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V

    .line 483
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 485
    :cond_0
    return-void
.end method
