.class public Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;
.super Ljava/lang/Object;
.source "BackgroundMusicView.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private audioDuck:Z

.field private audioFadeIn:Z

.field private audioFadeOut:Z

.field private closeAnimationBottom:Landroid/view/animation/Animation;

.field private closeAnimationTop:Landroid/view/animation/Animation;

.field private listener:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;

.field private musicTopBar:Landroid/widget/RelativeLayout;

.field private musicView:Landroid/widget/ScrollView;

.field private open:Z

.field private openAnimationBottom:Landroid/view/animation/Animation;

.field private openAnimationTop:Landroid/view/animation/Animation;

.field private peakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

.field private project:Lcom/adobe/premiereclip/project/Project;

.field private snapToBeat:Z

.field private soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

.field private toBeOpened:Z

.field private trackNameUi:Landroid/widget/RelativeLayout;

.field private volumeText:Landroid/widget/TextView;

.field private waveContainer:Landroid/widget/RelativeLayout;

.field private waveSpinner:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    .line 79
    iput-object p4, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->listener:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;

    .line 80
    iput-object p3, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->peakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    .line 82
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    .line 84
    const v0, 0x7f12052b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    .line 85
    const v0, 0x7f120110

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicTopBar:Landroid/widget/RelativeLayout;

    .line 86
    const v0, 0x7f1204e0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->waveContainer:Landroid/widget/RelativeLayout;

    .line 87
    const v0, 0x7f1204df

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->waveSpinner:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f120112

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->trackNameUi:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicTopBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->trackNameUi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 94
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->open:Z

    .line 95
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->toBeOpened:Z

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioFadeOut:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioFadeOut:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->snapToBeat:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->snapToBeat:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioDuck:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioDuck:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->volumeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->waveSpinner:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->waveContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->getWaveScrollListener()Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setMusicStartTimeText()V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->listener:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;J)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setMusicStartTimeText(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioFadeIn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioFadeIn:Z

    return p1
.end method

.method private getFullPeakListener()Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$3;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    return-object v0
.end method

.method private getVolumeBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$10;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$10;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    return-object v0
.end method

.method private getWaveScrollListener()Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$4;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    return-object v0
.end method

.method private initWaveForm()V
    .locals 7

    .prologue
    const v5, 0x7f0c03ba

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 246
    new-instance v2, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    const/high16 v0, 0x43480000    # 200.0f

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    .line 247
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v2, v4, v4, v0, v1}, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;-><init>(FFFF)V

    .line 248
    new-instance v3, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getTotalWaveFormLength(Lcom/adobe/premiereclip/project/Project;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    .line 249
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v3, v4, v4, v0, v1}, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;-><init>(FFFF)V

    .line 251
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    .line 253
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->peakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->getFullPeakListener()Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->initPeakGenerator(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;Z)V

    .line 255
    :cond_0
    return-void
.end method

.method private initializeAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    const/16 v0, 0xc8

    .line 187
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationTop:Landroid/view/animation/Animation;

    .line 188
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationTop:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 190
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationTop:Landroid/view/animation/Animation;

    .line 191
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationTop:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 193
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationBottom:Landroid/view/animation/Animation;

    .line 194
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationBottom:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 196
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationBottom:Landroid/view/animation/Animation;

    new-instance v2, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 219
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationBottom:Landroid/view/animation/Animation;

    .line 220
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationBottom:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 222
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationBottom:Landroid/view/animation/Animation;

    new-instance v1, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$2;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 236
    return-void
.end method

.method private isAnimationInitialized()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationBottom:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationTop:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationBottom:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationTop:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final setAudioDuckSwitch()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f120532

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 400
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioDuck:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 401
    new-instance v1, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$9;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$9;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 414
    return-void
.end method

.method private final setAudioFadeInSwitch()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f120533

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 346
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioFadeIn:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 347
    new-instance v1, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$6;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 360
    return-void
.end method

.method private final setAudioFadeOutSwitch()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f120534

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 364
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioFadeOut:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 365
    new-instance v1, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$7;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$7;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 378
    return-void
.end method

.method private setMusicDeleteButton()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f12052e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 335
    new-instance v1, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$5;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    return-void
.end method

.method private setMusicStartTimeText()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v1

    if-lez v1, :cond_0

    .line 318
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 320
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setMusicStartTimeText(J)V

    .line 322
    :cond_0
    return-void
.end method

.method private setMusicStartTimeText(J)V
    .locals 11

    .prologue
    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f12052d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    const-string/jumbo v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 327
    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 328
    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 329
    invoke-virtual {v7, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 328
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 326
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method private final setSnapToBeatSwitch()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f120531

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 382
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->snapToBeat:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 383
    new-instance v1, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$8;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$8;-><init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 396
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f1200eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->peakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancelOngoingTask()V

    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->resetView()V

    .line 166
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->soundWaveView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->setVisibility(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->waveContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 170
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isAnimationInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->initializeAnimations()V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationBottom:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicTopBar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicTopBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->trackNameUi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f120106

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f120127

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->open:Z

    .line 183
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->open:Z

    return v0
.end method

.method public setToBeOpened()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->toBeOpened:Z

    .line 108
    return-void
.end method

.method public showView()V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v1, 0x7f120114

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 115
    iget-object v1, v1, Lcom/adobe/premiereclip/project/sequence/AudioClip;->songName:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setMusicStartTimeText()V

    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioFadeInApplied()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioFadeIn:Z

    .line 121
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioFadeOutApplied()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioFadeOut:Z

    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSnapToBeatApplied()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->snapToBeat:Z

    .line 123
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioDuckApplied()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->audioDuck:Z

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVolume()F

    move-result v1

    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v2, 0x7f120530

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 127
    mul-float v2, v1, v4

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/adobe/premiereclip/util/Utilities;->setSeekBarTheme(Landroid/content/Context;Landroid/widget/SeekBar;)V

    .line 129
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->getVolumeBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v2, 0x7f12052f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->volumeText:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->volumeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setSnapToBeatSwitch()V

    .line 135
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setAudioDuckSwitch()V

    .line 136
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setAudioFadeInSwitch()V

    .line 137
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setAudioFadeOutSwitch()V

    .line 138
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setMusicDeleteButton()V

    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->waveSpinner:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->waveSpinner:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->activity:Landroid/app/Activity;

    const v2, 0x7f05002f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicTopBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->trackNameUi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isAnimationInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->initializeAnimations()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationTop:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->closeAnimationBottom:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationBottom:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicTopBar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->openAnimationTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->initWaveForm()V

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->musicView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->open:Z

    .line 158
    iput-boolean v3, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->toBeOpened:Z

    .line 159
    return-void
.end method

.method public toBeOpened()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->toBeOpened:Z

    return v0
.end method
