.class Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;
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
    .line 433
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 439
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$900(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 440
    if-gez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;I)V

    .line 445
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 446
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 448
    :cond_1
    return-void
.end method
