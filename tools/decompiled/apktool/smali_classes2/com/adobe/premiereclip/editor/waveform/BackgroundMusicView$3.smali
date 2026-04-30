.class Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;
.super Ljava/lang/Object;
.source "BackgroundMusicView.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWaveformClear()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public onWaveformDraw(Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$200(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 262
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$200(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$300(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 265
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getWaveFormLength(Lcom/adobe/premiereclip/project/Project;J)I

    move-result v5

    .line 268
    iget-object v7, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v3}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$500(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    .line 269
    invoke-static {v4}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getTotalWaveFormLength(Lcom/adobe/premiereclip/project/Project;)I

    move-result v4

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    .line 270
    invoke-static {v6}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v6

    const-wide/32 v8, 0x4c4b40

    invoke-static {v6, v8, v9}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getWaveFormLength(Lcom/adobe/premiereclip/project/Project;J)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;III)V

    .line 268
    invoke-static {v7, v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$402(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    .line 271
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$400(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->addBitmaps(Ljava/util/ArrayList;)V

    .line 272
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$300(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$400(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$600(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    .line 275
    return-void
.end method
