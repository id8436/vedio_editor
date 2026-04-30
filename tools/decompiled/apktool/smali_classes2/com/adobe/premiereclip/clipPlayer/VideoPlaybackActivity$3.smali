.class Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 419
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 421
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$900(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)I

    move-result v2

    add-int/2addr v1, v2

    .line 422
    if-le v1, v0, :cond_1

    .line 425
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;I)V

    .line 427
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 428
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 430
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
