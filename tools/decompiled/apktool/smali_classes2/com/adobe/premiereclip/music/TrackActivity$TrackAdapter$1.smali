.class Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;
.super Ljava/lang/Object;
.source "TrackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$400(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->access$500(Lcom/adobe/premiereclip/music/TrackActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$400(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->access$500(Lcom/adobe/premiereclip/music/TrackActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$000(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$600(Lcom/adobe/premiereclip/music/TrackActivity;II)I

    move-result v0

    .line 344
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

    .line 345
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->access$000(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 348
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->updateProgressBar()V

    .line 349
    return-void
.end method
