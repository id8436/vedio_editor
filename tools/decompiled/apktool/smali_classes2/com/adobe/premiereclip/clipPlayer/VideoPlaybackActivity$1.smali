.class Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$200(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v3, v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v2, v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$302(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;I)I

    .line 98
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v2, v1, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$400(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;II)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    :cond_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_1
    return-void
.end method
