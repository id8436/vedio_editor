.class Lcom/adobe/premiereclip/music/TrackActivity$1;
.super Ljava/lang/Object;
.source "TrackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/music/TrackActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/music/TrackActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackActivity$1;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$1;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$000(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 226
    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackActivity$1;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/music/TrackActivity;->access$000(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    .line 228
    iget-object v4, p0, Lcom/adobe/premiereclip/music/TrackActivity$1;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v4, v2, v3, v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity;->access$100(Lcom/adobe/premiereclip/music/TrackActivity;JJ)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$1;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->access$200(Lcom/adobe/premiereclip/music/TrackActivity;)Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->getCurrentSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 232
    :cond_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$1;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$300(Lcom/adobe/premiereclip/music/TrackActivity;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$1;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$400(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
