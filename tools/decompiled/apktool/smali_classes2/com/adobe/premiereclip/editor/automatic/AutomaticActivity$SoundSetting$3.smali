.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(F)V
    .locals 6

    .prologue
    .line 924
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 928
    const-string/jumbo v0, "WaveScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pixels scrolled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getDurationOfWave(Lcom/adobe/premiereclip/project/Project;I)J

    move-result-wide v2

    .line 930
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v1

    if-lez v1, :cond_0

    .line 932
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 934
    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setStartTimeUs(J)V

    .line 935
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    long-to-float v1, v2

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didChangeSoundtrackInPoint(F)V

    .line 936
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_START_CHANGE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 937
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V

    .line 938
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    goto/16 :goto_0
.end method

.method public onScrolling(F)V
    .locals 4

    .prologue
    .line 945
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 947
    const-string/jumbo v0, "WaveScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pixels scrolled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getDurationOfWave(Lcom/adobe/premiereclip/project/Project;I)J

    move-result-wide v0

    .line 949
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 950
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v2, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1700(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;J)V

    .line 951
    return-void
.end method
