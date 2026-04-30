.class public Lcom/adobe/premiereclip/project/sequence/Sequence;
.super Ljava/lang/Object;
.source "Sequence.java"


# static fields
.field public static final BASE_TRACK_INDEX:I = 0x0

.field public static final EXPORT_FHD_HEIGHT:I = 0x438

.field public static final EXPORT_FHD_WIDTH:I = 0x780

.field public static final EXPORT_HD_HEIGHT:I = 0x2d0

.field public static final EXPORT_HD_WIDTH:I = 0x500

.field public static final EXPORT_UHD_HEIGHT:I = 0x870

.field public static final EXPORT_UHD_WIDTH:I = 0xf00

.field public static MODE_PLAYBACK:Z = false

.field public static final PLAYBACK_HEIGHT:I = 0x168

.field public static final PLAYBACK_WIDTH:I = 0x280

.field public static final VIDEO_BUG_TRACK_INDEX:I = 0x1

.field private static timePrecision:I


# instance fields
.field private _audioClipsCount:I

.field private _channel:I

.field private _sampleRate:I

.field private _stillImageClipsCount:I

.field private _storycardClipsCount:I

.field private _titleClipsCount:I

.field private _videoClipsCount:I

.field private audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

.field private look:Lcom/adobe/premiereclip/looks/BaseLook;

.field private photoMotion:Z

.field private transitionTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/project/sequence/Sequence;->MODE_PLAYBACK:Z

    .line 73
    const/4 v0, 0x6

    sput v0, Lcom/adobe/premiereclip/project/sequence/Sequence;->timePrecision:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_audioClipsCount:I

    .line 66
    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_videoClipsCount:I

    .line 67
    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_storycardClipsCount:I

    .line 68
    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_titleClipsCount:I

    .line 69
    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_stillImageClipsCount:I

    .line 70
    const v0, 0xbb80

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_sampleRate:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_channel:I

    .line 86
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-direct {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    .line 87
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-direct {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    .line 88
    const-string/jumbo v0, "0"

    invoke-static {v0}, Lcom/adobe/premiereclip/looks/LocalLooks;->getClipLook(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V

    .line 89
    const-string/jumbo v0, "Sequence"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got look"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    const/16 v1, 0x280

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->setSize(II)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setPhotoMotion(Z)V

    .line 92
    return-void
.end method

.method private categorizeVideoClips()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    .line 724
    .line 729
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    move-result-object v8

    .line 730
    if-eqz v8, :cond_6

    .line 731
    const/4 v9, 0x1

    move v6, v4

    move v0, v4

    move v1, v4

    move v2, v4

    move v3, v4

    .line 732
    :goto_0
    if-ge v6, v9, :cond_4

    .line 733
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v5

    .line 734
    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v10

    .line 735
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 736
    add-int v7, v3, v11

    move v5, v4

    move v3, v1

    move v1, v2

    move v2, v0

    .line 738
    :goto_1
    if-ge v5, v11, :cond_3

    .line 739
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 740
    if-nez v0, :cond_0

    .line 761
    :goto_2
    return-void

    .line 743
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v12

    sget-object v13, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v12, v13, :cond_1

    .line 745
    add-int/lit8 v1, v1, 0x1

    .line 747
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v12

    sget-object v13, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v12, v13, :cond_2

    .line 748
    add-int/lit8 v0, v3, 0x1

    move v14, v2

    move v2, v0

    move v0, v14

    .line 738
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 750
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v12, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v12, :cond_5

    .line 751
    add-int/lit8 v0, v2, 0x1

    move v2, v3

    goto :goto_3

    .line 732
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v2

    move v2, v1

    move v1, v3

    move v3, v7

    goto :goto_0

    :cond_4
    move v4, v1

    move v1, v2

    move v2, v3

    .line 757
    :goto_4
    iput v2, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_videoClipsCount:I

    .line 758
    iput v1, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_storycardClipsCount:I

    .line 759
    iput v4, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_titleClipsCount:I

    .line 760
    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_stillImageClipsCount:I

    goto :goto_2

    :cond_5
    move v0, v2

    move v2, v3

    goto :goto_3

    :cond_6
    move v0, v4

    move v1, v4

    move v2, v4

    goto :goto_4
.end method

.method public static convertSequenceToAudioSequence(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/Sequence;II)Lcom/adobe/audiomixer/IAudioSequence;
    .locals 24

    .prologue
    .line 614
    invoke-static/range {p0 .. p0}, Lcom/adobe/audiomixer/AudioMixer;->initialize(Landroid/content/Context;)V

    .line 616
    invoke-static {}, Lcom/adobe/audiomixer/AudioMixer;->createSequence()Lcom/adobe/audiomixer/IAudioSequence;

    move-result-object v11

    .line 617
    move/from16 v0, p2

    invoke-interface {v11, v0}, Lcom/adobe/audiomixer/IAudioSequence;->setSampleRate(I)V

    .line 618
    move/from16 v0, p3

    invoke-interface {v11, v0}, Lcom/adobe/audiomixer/IAudioSequence;->setChannels(I)V

    .line 620
    const-wide/16 v8, 0x0

    .line 621
    if-eqz p1, :cond_3

    .line 622
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_2

    .line 623
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 624
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->isBumper()Z

    move-result v10

    if-nez v10, :cond_1

    .line 625
    const-string/jumbo v10, ""

    .line 626
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v12

    sget-object v13, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v12, v13, :cond_0

    .line 627
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v10

    .line 629
    :cond_0
    add-int/lit8 v12, v7, -0x1

    move-object/from16 v0, p1

    invoke-direct {v0, v7, v12}, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionLengthUs(II)J

    move-result-wide v12

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    .line 630
    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p1

    invoke-direct {v0, v14, v7}, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionLengthUs(II)J

    move-result-wide v14

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    .line 631
    invoke-interface {v11}, Lcom/adobe/audiomixer/IAudioSequence;->getAudioTrack()Lcom/adobe/audiomixer/IVideoTrack;

    move-result-object v16

    new-instance v17, Lcom/adobe/audiomixer/VideoTime;

    const-wide/32 v18, 0xf4240

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    new-instance v18, Lcom/adobe/audiomixer/VideoTime;

    .line 633
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v20

    long-to-float v0, v12

    move/from16 v19, v0

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v22

    mul-float v19, v19, v22

    move/from16 v0, v19

    float-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    const-wide/32 v22, 0xf4240

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    new-instance v19, Lcom/adobe/audiomixer/VideoTime;

    .line 634
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    add-long/2addr v12, v14

    long-to-float v12, v12

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v13

    mul-float/2addr v12, v13

    float-to-long v12, v12

    long-to-double v12, v12

    sub-double v12, v20, v12

    double-to-long v12, v12

    const-wide/32 v14, 0xf4240

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    .line 631
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v10, v1, v2, v3}, Lcom/adobe/audiomixer/IVideoTrack;->appendMedia(Ljava/lang/String;Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/IClip;

    move-result-object v10

    .line 636
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeInApplied()Z

    move-result v12

    invoke-interface {v10, v12}, Lcom/adobe/audiomixer/IClip;->setAudioFadeIn(Z)V

    .line 637
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeOutApplied()Z

    move-result v12

    invoke-interface {v10, v12}, Lcom/adobe/audiomixer/IClip;->setAudioFadeOut(Z)V

    .line 638
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSmartVolumeApplied()Z

    move-result v12

    invoke-interface {v10, v12}, Lcom/adobe/audiomixer/IClip;->setAudioSpeechLevel(Z)V

    .line 639
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->isMuted()Z

    move-result v12

    invoke-interface {v10, v12}, Lcom/adobe/audiomixer/IClip;->setAudioMute(Z)V

    .line 640
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getVolume()F

    move-result v12

    invoke-interface {v10, v12}, Lcom/adobe/audiomixer/IClip;->setAudioGainLevel(F)V

    .line 641
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v12

    invoke-interface {v10, v12}, Lcom/adobe/audiomixer/IClip;->setAudioSpeedLevel(F)V

    .line 642
    invoke-interface {v10}, Lcom/adobe/audiomixer/IClip;->release()V

    .line 644
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v12

    add-int/lit8 v6, v7, -0x1

    move-object/from16 v0, p1

    invoke-direct {v0, v7, v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionLengthUs(II)J

    move-result-wide v14

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    sub-long/2addr v12, v14

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p1

    invoke-direct {v0, v6, v7}, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionLengthUs(II)J

    move-result-wide v14

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    sub-long/2addr v12, v14

    add-long/2addr v8, v12

    .line 622
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_0

    .line 648
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v6

    .line 649
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 650
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 651
    if-eqz v6, :cond_3

    .line 652
    invoke-interface {v11}, Lcom/adobe/audiomixer/IAudioSequence;->getBackgroundMusicTrack()Lcom/adobe/audiomixer/IBackgroundMusicTrack;

    move-result-object v7

    .line 653
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/adobe/audiomixer/IBackgroundMusicTrack;->setSource(Ljava/lang/String;)V

    .line 654
    new-instance v8, Lcom/adobe/audiomixer/VideoTime;

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getStartTimeUs()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    invoke-direct {v8, v12, v13, v14, v15}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    invoke-interface {v7, v8}, Lcom/adobe/audiomixer/IBackgroundMusicTrack;->setInTime(Lcom/adobe/audiomixer/VideoTime;)V

    .line 655
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAudioFadeInApplied()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/adobe/audiomixer/IBackgroundMusicTrack;->setAudioFadeIn(Z)V

    .line 656
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAudioFadeOutApplied()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/adobe/audiomixer/IBackgroundMusicTrack;->setAudioFadeOut(Z)V

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioDuckApplied()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/adobe/audiomixer/IBackgroundMusicTrack;->setAudioAutoDuck(Z)V

    .line 658
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getVolume()F

    move-result v6

    invoke-interface {v7, v6}, Lcom/adobe/audiomixer/IBackgroundMusicTrack;->setAudioGainLevel(F)V

    .line 663
    :cond_3
    invoke-interface {v11}, Lcom/adobe/audiomixer/IAudioSequence;->readyForRendering()Z

    .line 665
    return-object v11
.end method

.method public static createClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 370
    invoke-static {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->findAssetProperties(Lcom/adobe/premiereclip/project/sequence/AssetReference;)V

    .line 371
    const-string/jumbo v0, "Sequence"

    const-string/jumbo v1, "Foundmetadata"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 372
    :sswitch_0
    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v7

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 374
    :pswitch_0
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/VideoClip;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/VideoClip;-><init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)V

    goto :goto_1

    .line 376
    :pswitch_1
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/project/sequence/ImageClip;-><init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJZLjava/lang/String;)V

    goto :goto_1

    .line 378
    :pswitch_2
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v7

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/project/sequence/ImageClip;-><init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJZLjava/lang/String;)V

    goto :goto_1

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        0x5faa95b -> :sswitch_1
        0x6942258 -> :sswitch_2
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createEmptyVideoClip(JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 8

    .prologue
    .line 385
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    const/4 v1, 0x0

    sget-object v6, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-wide v2, p0

    move-wide v4, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/project/sequence/Clip;-><init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;)V

    return-object v0
.end method

.method private fadeInLengthUs()J
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInLengthUs()J

    move-result-wide v0

    return-wide v0
.end method

.method private fadeOutLengthUs()J
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutLengthUs()J

    move-result-wide v0

    return-wide v0
.end method

.method private static findAssetProperties(Lcom/adobe/premiereclip/project/sequence/AssetReference;)V
    .locals 14

    .prologue
    const/16 v12, 0xb4

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/16 v11, 0x5a

    const/4 v1, 0x1

    .line 390
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getPropertiesSet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setPropertiesSet(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 448
    const-wide/32 v2, 0x989680

    invoke-virtual {p0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 449
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 450
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 451
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 452
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 453
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 454
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 455
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/premiereclip/util/Utilities;->getBitmapRotation(Ljava/lang/String;)I

    move-result v3

    .line 457
    if-eq v3, v11, :cond_2

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_e

    .line 461
    :cond_2
    if-ne v3, v11, :cond_d

    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_270:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    :goto_2
    move v13, v2

    move v2, v1

    move v1, v13

    .line 466
    :cond_3
    :goto_3
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 467
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    goto :goto_0

    .line 395
    :sswitch_0
    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 398
    :pswitch_0
    :try_start_0
    const-string/jumbo v2, "Sequence"

    const-string/jumbo v3, "Finding metadata"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v5, Lcom/adobe/customextractor/ClipExtractor;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/adobe/customextractor/ClipExtractor;-><init>(Landroid/content/Context;)V

    .line 400
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v5, v2, v3}, Lcom/adobe/customextractor/ClipExtractor;->setDataSource(Landroid/net/Uri;Z)Z

    .line 401
    invoke-virtual {v5}, Lcom/adobe/customextractor/ClipExtractor;->getTrackCount()I

    move-result v6

    move v4, v0

    .line 403
    :goto_4
    if-ge v4, v6, :cond_b

    .line 404
    invoke-virtual {v5, v4}, Lcom/adobe/customextractor/ClipExtractor;->getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v7

    .line 405
    if-nez v7, :cond_5

    .line 403
    :cond_4
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 408
    :cond_5
    iget-object v8, v7, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    .line 409
    invoke-static {v8}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 410
    iget v3, v7, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    .line 411
    iget v2, v7, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    .line 412
    iget v9, v7, Lcom/adobe/customextractor/Util/Media/MediaFormat;->rotation:I

    .line 413
    invoke-static {v9}, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->fromInt(I)Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v0

    .line 414
    if-eq v9, v11, :cond_6

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_a

    .line 418
    :cond_6
    if-ne v9, v11, :cond_9

    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_270:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    :goto_6
    move v13, v3

    move v3, v2

    move v2, v13

    .line 423
    :cond_7
    :goto_7
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 424
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 426
    iget-wide v2, v7, Lcom/adobe/customextractor/Util/Media/MediaFormat;->durationUs:J

    invoke-virtual {p0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    move v0, v1

    .line 429
    :cond_8
    invoke-static {v8}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 430
    iget v2, v7, Lcom/adobe/customextractor/Util/Media/MediaFormat;->channelCount:I

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setNumAudioChannels(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 441
    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 418
    :cond_9
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_90:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    goto :goto_6

    .line 420
    :cond_a
    if-ne v9, v12, :cond_7

    .line 421
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_180:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    goto :goto_7

    .line 433
    :cond_b
    if-nez v0, :cond_c

    .line 434
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 435
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 436
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 437
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 439
    :cond_c
    invoke-virtual {v5}, Lcom/adobe/customextractor/ClipExtractor;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 461
    :cond_d
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_90:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    goto/16 :goto_2

    .line 463
    :cond_e
    if-ne v3, v12, :cond_3

    .line 464
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_180:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    goto/16 :goto_3

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0x5faa95b -> :sswitch_1
        0x6942258 -> :sswitch_2
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static roundToPrecision(DI)F
    .locals 4

    .prologue
    .line 81
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 82
    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method

.method private transitionLengthUs(II)J
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->photoMotion:Z

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setScalingOn(Z)V

    .line 250
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->addClipToVideoTrack(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 251
    monitor-exit p0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addClipAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->photoMotion:Z

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setScalingOn(Z)V

    .line 275
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->addClipToVideoTrackAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 276
    monitor-exit p0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addClipToTrack(Lcom/adobe/premiereclip/project/sequence/Clip;I)V
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getVideoTrack(I)Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 260
    :cond_0
    monitor-exit p0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addClipsAtIndex(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 280
    monitor-enter p0

    .line 282
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 283
    invoke-virtual {p0, v0, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClipAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 284
    add-int/lit8 p2, p2, 0x1

    .line 285
    goto :goto_0

    .line 286
    :cond_0
    monitor-exit p0

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public calculateTransitionTimes()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 778
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 779
    const-wide/16 v2, 0x0

    .line 780
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v10

    .line 781
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 784
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 785
    const-wide/32 v2, 0xf4240

    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x3e8

    invoke-static/range {v0 .. v7}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 787
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-wide v2, v0

    goto :goto_0

    .line 789
    :cond_0
    return-object v9
.end method

.method public clipTimeFromSequenceTime(IJ)J
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->clipTimeFromTrackTime(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public fadeInApplied()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied()Z

    move-result v0

    return v0
.end method

.method public fadeOutApplied()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied()Z

    move-result v0

    return v0
.end method

.method public getAudioDuckApplied()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->isAudioDuckApplied()Z

    move-result v0

    return v0
.end method

.method public getAudioFadeInApplied()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 107
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAudioFadeInApplied()Z

    move-result v0

    return v0
.end method

.method public getAudioFadeOutApplied()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 117
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAudioFadeOutApplied()Z

    move-result v0

    return v0
.end method

.method public getAudioSyncPace()F
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getAudioSyncPace()F

    move-result v0

    return v0
.end method

.method public getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    return-object v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_channel:I

    return v0
.end method

.method public getClips()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getClips(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getOverlayTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipsAtSequenceTimeUs(J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Playable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClipsAtTrackTimeUs(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFirstClipIndexInGroup(I)I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getFirstClipIndexInGroup(I)I

    move-result v0

    return v0
.end method

.method public getGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLastAvailClipIndex()I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getLastAvailClipIndex()I

    move-result v0

    return v0
.end method

.method public getLastClipIndexInGroup(I)I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getLastClipIndexInGroup(I)I

    move-result v0

    return v0
.end method

.method public getLook()Lcom/adobe/premiereclip/looks/BaseLook;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    return-object v0
.end method

.method public getOverlayClip()Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 798
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 799
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v2, :cond_0

    .line 800
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 802
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_sampleRate:I

    return v0
.end method

.method public getSequenceDurationInSeconds()D
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v0

    long-to-double v0, v0

    .line 210
    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSequenceDurationUs()J
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getTrackDurationUS()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()[I
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getWidth()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getHeight()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getSnapToBeatApplied()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->isSnapToBeatApplied()Z

    move-result v0

    return v0
.end method

.method public getTransitionTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    return-object v0
.end method

.method public getVolume()F
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 151
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getVolume()F

    move-result v0

    return v0
.end method

.method public invalidateGroups()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->invalidateGroups()V

    .line 528
    return-void
.end method

.method public isBumperEnabled(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 806
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlayEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 793
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v3, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public moveClip(II)V
    .locals 3

    .prologue
    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    .line 476
    if-le p1, p2, :cond_0

    const/4 v0, -0x1

    .line 478
    :goto_0
    if-eq p1, p2, :cond_1

    .line 479
    add-int v2, p1, v0

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 480
    add-int/2addr p1, v0

    goto :goto_0

    .line 476
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 482
    :cond_1
    monitor-exit p0

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveClips(IIII)V
    .locals 4

    .prologue
    .line 499
    monitor-enter p0

    .line 500
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    if-ge p1, p3, :cond_2

    .line 503
    if-eqz p1, :cond_0

    .line 504
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 506
    :cond_0
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 508
    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 509
    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 522
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setClips(Ljava/util/ArrayList;)V

    .line 523
    monitor-exit p0

    .line 524
    return-void

    .line 513
    :cond_2
    if-eqz p3, :cond_3

    .line 514
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 516
    :cond_3
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 517
    invoke-virtual {v0, p3, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 518
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 519
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveGroup(II)V
    .locals 3

    .prologue
    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getGroups()Ljava/util/ArrayList;

    move-result-object v1

    .line 488
    if-le p1, p2, :cond_0

    const/4 v0, -0x1

    .line 490
    :goto_0
    if-eq p1, p2, :cond_1

    .line 491
    add-int v2, p1, v0

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 492
    add-int/2addr p1, v0

    goto :goto_0

    .line 488
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->reInitClipsFromGroups()V

    .line 495
    monitor-exit p0

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public numAudioClips()I
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_audioClipsCount:I

    .line 672
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_audioClipsCount:I

    if-gez v0, :cond_0

    .line 673
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_audioClipsCount:I

    .line 675
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_audioClipsCount:I

    return v0
.end method

.method public numStillImageClips()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_stillImageClipsCount:I

    if-gez v0, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->categorizeVideoClips()V

    .line 704
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_stillImageClipsCount:I

    return v0
.end method

.method public numStorycardClips()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_storycardClipsCount:I

    if-gez v0, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->categorizeVideoClips()V

    .line 690
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_storycardClipsCount:I

    return v0
.end method

.method public numTitleClips()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_titleClipsCount:I

    if-gez v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->categorizeVideoClips()V

    .line 697
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_titleClipsCount:I

    return v0
.end method

.method public numVideoClips()I
    .locals 1

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->categorizeVideoClips()V

    .line 680
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_videoClipsCount:I

    if-gez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_videoClipsCount:I

    .line 683
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_videoClipsCount:I

    return v0
.end method

.method public photoMotionApplied()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->photoMotion:Z

    return v0
.end method

.method public removeAllClips()V
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    monitor-exit p0

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAllClipsFromTrack(I)V
    .locals 1

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getVideoTrack(I)Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    monitor-exit p0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeClip(I)Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    monitor-exit p0

    return-object v0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeClipFromTrack(II)Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 1

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getVideoTrack(I)Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    monitor-exit p0

    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeClips(II)V
    .locals 2

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 306
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    monitor-exit p0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeGroup(I)V
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sequenceStartTimeOfClip(I)J
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->trackStartTimeOfClip(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public sequenceTimeFromClipTime(IJ)J
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->trackTimeFromClipTime(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAssetDurationUs(IJ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 331
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 332
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUs()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 333
    const-string/jumbo v1, "Sequence"

    const-string/jumbo v2, "first time"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    .line 335
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const-string/jumbo v1, "Sequence"

    const-string/jumbo v2, "n time"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUs()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-lez v1, :cond_0

    .line 340
    invoke-virtual {v0, p2, p3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    goto :goto_0
.end method

.method public setAudioDuckApplied(Z)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->setAudioDuckApplied(Z)V

    .line 131
    return-void
.end method

.method public setAudioFadeInApplied(Z)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 112
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->setAudioFadeInApplied(Z)V

    .line 113
    return-void
.end method

.method public setAudioFadeOutApplied(Z)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 122
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->setAudioFadeOutApplied(Z)V

    .line 123
    return-void
.end method

.method public setAudioSyncPace(F)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->setAudioSyncPace(F)V

    .line 147
    return-void
.end method

.method public setAvailability(IZ)V
    .locals 1

    .prologue
    .line 531
    monitor-enter p0

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAvailability(Z)V

    .line 533
    monitor-exit p0

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setChannel(I)V
    .locals 0

    .prologue
    .line 712
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_channel:I

    .line 713
    return-void
.end method

.method public setClips(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setClips(Ljava/util/ArrayList;)V

    .line 244
    monitor-exit p0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDurationOfOverlayTrack(J)V
    .locals 3

    .prologue
    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 360
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 361
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v1, v2, :cond_0

    .line 362
    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    .line 365
    :cond_0
    return-void
.end method

.method public setEndTimeOfClipUs(IJ)V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0, p2, p3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    .line 355
    return-void
.end method

.method public setFadeIn(Z)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setFadeIn(Z)V

    .line 576
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getOverlayTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setFadeIn(Z)V

    .line 577
    return-void
.end method

.method public setFadeOut(Z)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setFadeOut(Z)V

    .line 581
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getOverlayTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setFadeOut(Z)V

    .line 582
    return-void
.end method

.method public setGlobalTransition(Z)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setGlobalTransition(Z)V

    .line 572
    return-void
.end method

.method public setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V
    .locals 1

    .prologue
    .line 599
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    .line 600
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V

    .line 601
    return-void
.end method

.method public setModeToExport()V
    .locals 5

    .prologue
    const/16 v0, 0x500

    const/4 v4, 0x0

    .line 169
    const/16 v1, 0x2d0

    .line 172
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities;->is1080pExportSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-static {v2}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ClipPreferences;->getExportResolution()I

    move-result v1

    .line 177
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 183
    :goto_0
    :sswitch_0
    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->setSize(II)V

    .line 184
    sput-boolean v4, Lcom/adobe/premiereclip/project/sequence/Sequence;->MODE_PLAYBACK:Z

    .line 185
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 186
    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->setDisableTransition(Z)V

    .line 187
    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->setTempUnavailable(Z)V

    goto :goto_1

    .line 179
    :sswitch_1
    const/16 v0, 0x780

    goto :goto_0

    .line 180
    :sswitch_2
    const/16 v0, 0xf00

    goto :goto_0

    .line 189
    :cond_1
    return-void

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d0 -> :sswitch_0
        0x438 -> :sswitch_1
        0x870 -> :sswitch_2
    .end sparse-switch
.end method

.method public setModeToPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    const/16 v1, 0x280

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->setSize(II)V

    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/project/sequence/Sequence;->MODE_PLAYBACK:Z

    .line 162
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 163
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setDisableTransition(Z)V

    .line 164
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setTempUnavailable(Z)V

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public setPhotoMotion(Z)V
    .locals 2

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->photoMotion:Z

    .line 100
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 101
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->setScalingOn(Z)V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .prologue
    .line 708
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->_sampleRate:I

    .line 709
    return-void
.end method

.method public setSnapToBeatApplied(Z)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->setSnapToBeatApplied(Z)V

    .line 139
    return-void
.end method

.method public setStartTimeOfClipUs(IJ)V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0, p2, p3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setStartTimeUs(J)V

    .line 349
    return-void
.end method

.method public setTrackXYOffset(IFF)V
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getVideoTrack(I)Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p2, p3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setXYOffset(FF)V

    .line 269
    :cond_0
    monitor-exit p0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTransitionTimes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionTimes:Ljava/util/ArrayList;

    .line 774
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->audioTrackGroup:Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 156
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->setVolume(F)V

    .line 157
    return-void
.end method

.method public transitionAppliedOnSequence()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Sequence;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionAppliedOnSequence()Z

    move-result v0

    return v0
.end method
