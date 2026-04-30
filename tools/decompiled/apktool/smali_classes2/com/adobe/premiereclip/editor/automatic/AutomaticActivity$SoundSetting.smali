.class public Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;
.super Landroid/support/v4/app/Fragment;
.source "AutomaticActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private songStart:Landroid/widget/TextView;

.field private songTitle:Landroid/widget/TextView;

.field private soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

.field private waveContainer:Landroid/widget/RelativeLayout;

.field private waveSpinner:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 837
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 838
    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->waveSpinner:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->waveContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getWaveScrollListener()Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->setMusicStartTimeText()V

    return-void
.end method

.method static synthetic access$1700(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;J)V
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->setMusicStartTimeText(J)V

    return-void
.end method

.method private getFullPeakListener()Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;
    .locals 1

    .prologue
    .line 895
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$2;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V

    return-object v0
.end method

.method private getWaveScrollListener()Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;
    .locals 1

    .prologue
    .line 921
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$3;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V

    return-object v0
.end method

.method private initWaveForm()V
    .locals 7

    .prologue
    const v5, 0x7f0c03ba

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 883
    new-instance v2, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    const/high16 v0, 0x43480000    # 200.0f

    .line 884
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v2, v4, v4, v0, v1}, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;-><init>(FFFF)V

    .line 885
    new-instance v3, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getTotalWaveFormLength(Lcom/adobe/premiereclip/project/Project;)I

    move-result v0

    int-to-float v0, v0

    .line 886
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v3, v4, v4, v0, v1}, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;-><init>(FFFF)V

    .line 888
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 889
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {v0, v6}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    .line 890
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$1100(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getFullPeakListener()Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->initPeakGenerator(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;Z)V

    .line 892
    :cond_0
    return-void
.end method

.method private setMusicStartTimeText()V
    .locals 4

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 957
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v1

    if-lez v1, :cond_0

    .line 958
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 960
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->setMusicStartTimeText(J)V

    .line 962
    :cond_0
    return-void
.end method

.method private setMusicStartTimeText(J)V
    .locals 9

    .prologue
    .line 965
    const-string/jumbo v0, "%d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 966
    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 967
    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 968
    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 967
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 965
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 969
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->songStart:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    return-void
.end method

.method private updateTrackName()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 973
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 974
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->waveSpinner:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->waveSpinner:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f05002f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 976
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->songTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->songName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->setMusicStartTimeText()V

    .line 978
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->initWaveForm()V

    .line 980
    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 844
    .line 845
    const v0, 0x7f04012a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 848
    const v0, 0x7f1204e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 849
    new-instance v2, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$1;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    const v0, 0x7f1204de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->songTitle:Landroid/widget/TextView;

    .line 857
    const v0, 0x7f1204e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->songStart:Landroid/widget/TextView;

    .line 858
    const v0, 0x7f1204e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->waveContainer:Landroid/widget/RelativeLayout;

    .line 859
    const v0, 0x7f1204df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->waveSpinner:Landroid/widget/ImageView;

    .line 861
    invoke-static {v1}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 862
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$1100(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancelOngoingTask()V

    .line 874
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->resetView()V

    .line 876
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->setVisibility(I)V

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->waveContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 879
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 880
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 867
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 868
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->updateTrackName()V

    .line 869
    return-void
.end method
