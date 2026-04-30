.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWaveformClear()V
    .locals 0

    .prologue
    .line 916
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
    .line 898
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 899
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 902
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

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

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v0

    if-lez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    .line 904
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getWaveFormLength(Lcom/adobe/premiereclip/project/Project;J)I

    move-result v5

    .line 905
    iget-object v7, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    .line 906
    invoke-static {v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getTotalWaveFormLength(Lcom/adobe/premiereclip/project/Project;)I

    move-result v4

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    .line 907
    invoke-virtual {v6}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v6}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v6

    const-wide/32 v8, 0x4c4b40

    invoke-static {v6, v8, v9}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getWaveFormLength(Lcom/adobe/premiereclip/project/Project;J)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;III)V

    .line 905
    invoke-static {v7, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1402(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    .line 908
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1400(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->addBitmaps(Ljava/util/ArrayList;)V

    .line 909
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1400(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->access$1600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V

    .line 912
    return-void
.end method
