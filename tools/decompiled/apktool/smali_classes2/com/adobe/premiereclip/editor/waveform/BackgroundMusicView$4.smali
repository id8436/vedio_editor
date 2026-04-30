.class Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;
.super Ljava/lang/Object;
.source "BackgroundMusicView.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(F)V
    .locals 6

    .prologue
    .line 287
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 289
    const-string/jumbo v1, "WaveScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pixels scrolled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getDurationOfWave(Lcom/adobe/premiereclip/project/Project;I)J

    move-result-wide v0

    .line 291
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v3

    if-lez v3, :cond_0

    .line 293
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->setStartTimeUs(J)V

    .line 296
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didChangeSoundtrackInPoint(F)V

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$700(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_START_CHANGE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;->audioSettingsUpdated(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 298
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$600(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onScrolling(F)V
    .locals 4

    .prologue
    .line 305
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 307
    const-string/jumbo v1, "WaveScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pixels scrolled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getDurationOfWave(Lcom/adobe/premiereclip/project/Project;I)J

    move-result-wide v0

    .line 309
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 310
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v2, v0, v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$800(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;J)V

    .line 311
    return-void
.end method
