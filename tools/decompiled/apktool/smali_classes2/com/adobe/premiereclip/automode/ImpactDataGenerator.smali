.class public Lcom/adobe/premiereclip/automode/ImpactDataGenerator;
.super Ljava/lang/Object;
.source "ImpactDataGenerator.java"

# interfaces
.implements Lcom/adobe/premiereclip/automode/AddSamplesTask$Listener;


# static fields
.field private static ADD_SAMPLES_FACTOR:F = 0.0f

.field private static DECODE_FACTOR:F = 0.0f

.field private static MAX_BINS_PER_TASK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImpactDataGenerator"

.field private static VELOSYNC_FACTOR:F


# instance fields
.field private mAddSamplesPercent:F

.field private mBinSize:I

.field private mDecodePercent:F

.field private mDecodedSamples:J

.field private mHaveAllSamples:Z

.field private mImpactStartTime:J

.field private mNumWorkingAddTasks:I

.field private mPaddingSize:I

.field private mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

.field private mProcessedSamples:J

.field private mResults:Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;

.field private mTotalSamples:J

.field private mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

.field private mVeloSyncPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x64

    sput v0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->MAX_BINS_PER_TASK:I

    .line 31
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->DECODE_FACTOR:F

    .line 32
    const/high16 v0, 0x3f400000    # 0.75f

    sput v0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->ADD_SAMPLES_FACTOR:F

    .line 33
    const v0, 0x3d4ccccd    # 0.05f

    sput v0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->VELOSYNC_FACTOR:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/adobe/premiereclip/automode/VeloBridge;

    invoke-direct {v0}, Lcom/adobe/premiereclip/automode/VeloBridge;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mDecodePercent:F

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;F)F
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mDecodePercent:F

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->sendProgressNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->processLastSamples()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mDecodedSamples:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mDecodedSamples:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mTotalSamples:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mTotalSamples:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;Lcom/adobe/premiereclip/automode/AudioSamples;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->processSamples(Lcom/adobe/premiereclip/automode/AudioSamples;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)Lcom/adobe/premiereclip/automode/VeloBridge;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    return p1
.end method

.method static synthetic access$802(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPaddingSize:I

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mResults:Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;

    return-object v0
.end method

.method private addTask(Lcom/adobe/premiereclip/automode/AutoModeManager$Task;)V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mNumWorkingAddTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mNumWorkingAddTasks:I

    .line 192
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-static {}, Lcom/adobe/premiereclip/automode/AutoModeManager;->getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/automode/AutoModeManager;->StartTask(Lcom/adobe/premiereclip/automode/AutoModeManager$Task;)V

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private processLastSamples()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v0, v0, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget v1, v1, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v2, v2, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([FIIF)V

    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget v0, v0, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    div-int v5, v0, v1

    .line 154
    new-instance v0, Lcom/adobe/premiereclip/automode/AddSamplesTask;

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v2, v2, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v4, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-wide v6, v4, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    iget v4, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    int-to-long v8, v4

    div-long/2addr v6, v8

    long-to-int v4, v6

    iget v6, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/automode/AddSamplesTask;-><init>(Lcom/adobe/premiereclip/automode/VeloBridge;[FIIIILcom/adobe/premiereclip/automode/AddSamplesTask$Listener;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->addTask(Lcom/adobe/premiereclip/automode/AutoModeManager$Task;)V

    .line 158
    monitor-enter p0

    .line 159
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mHaveAllSamples:Z

    .line 160
    iget v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mNumWorkingAddTasks:I

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->doneAddSamplesTask(I)V

    .line 165
    :cond_0
    return-void

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private processSamples(Lcom/adobe/premiereclip/automode/AudioSamples;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    if-eqz v0, :cond_0

    .line 112
    iget v0, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPaddingSize:I

    if-lt v0, v1, :cond_1

    .line 113
    iget-object v0, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v1, v1, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget v2, v2, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget v4, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPaddingSize:I

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget v0, v0, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    div-int v5, v0, v1

    .line 121
    new-instance v0, Lcom/adobe/premiereclip/automode/AddSamplesTask;

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v2, v2, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v4, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-wide v6, v4, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    iget v4, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    int-to-long v8, v4

    div-long/2addr v6, v8

    long-to-int v4, v6

    iget v6, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/automode/AddSamplesTask;-><init>(Lcom/adobe/premiereclip/automode/VeloBridge;[FIIIILcom/adobe/premiereclip/automode/AddSamplesTask$Listener;)V

    .line 122
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->addTask(Lcom/adobe/premiereclip/automode/AutoModeManager$Task;)V

    .line 124
    :cond_0
    iget v0, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPaddingSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    div-int v1, v0, v1

    .line 125
    if-lez v1, :cond_4

    .line 127
    sget v0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->MAX_BINS_PER_TASK:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v2, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->MAX_BINS_PER_TASK:I

    div-int v12, v0, v2

    .line 128
    div-int v0, v1, v12

    .line 130
    iget-wide v4, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    iget v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    int-to-long v6, v2

    div-long/2addr v4, v6

    long-to-int v8, v4

    move v2, v3

    move v7, v3

    .line 131
    :goto_1
    if-ge v2, v12, :cond_3

    .line 132
    new-instance v4, Lcom/adobe/premiereclip/automode/AddSamplesTask;

    iget-object v5, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    iget-object v6, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    add-int/lit8 v9, v12, -0x1

    if-ge v2, v9, :cond_2

    move v9, v0

    :goto_2
    iget v10, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    move-object v11, p0

    invoke-direct/range {v4 .. v11}, Lcom/adobe/premiereclip/automode/AddSamplesTask;-><init>(Lcom/adobe/premiereclip/automode/VeloBridge;[FIIIILcom/adobe/premiereclip/automode/AddSamplesTask$Listener;)V

    .line 134
    invoke-direct {p0, v4}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->addTask(Lcom/adobe/premiereclip/automode/AutoModeManager$Task;)V

    .line 135
    iget v4, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    mul-int/2addr v4, v0

    add-int/2addr v7, v4

    .line 136
    add-int/2addr v8, v0

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v1, v1, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget v2, v2, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget v4, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v0, v0, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget v1, v1, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget v2, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v2, v2, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([FIIF)V

    goto/16 :goto_0

    .line 132
    :cond_2
    add-int/lit8 v9, v12, -0x1

    mul-int/2addr v9, v0

    sub-int v9, v1, v9

    goto :goto_2

    :cond_3
    move v0, v1

    .line 143
    :goto_3
    new-instance v1, Lcom/adobe/premiereclip/automode/AudioSamples;

    iget v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    iget v4, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPaddingSize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    new-array v2, v2, [F

    iget v4, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget v5, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    iget-wide v6, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    iget v5, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    mul-int/2addr v5, v0

    int-to-long v8, v5

    add-long v5, v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/adobe/premiereclip/automode/AudioSamples;-><init>([FIIJ)V

    iput-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    .line 148
    iget-object v1, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mBinSize:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v2, v2, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget-object v4, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    iget v4, v4, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    return-void

    :cond_4
    move v0, v3

    .line 141
    goto :goto_3
.end method

.method private sendProgressNotification()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mResults:Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;

    iget v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mDecodePercent:F

    sget v2, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->DECODE_FACTOR:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mAddSamplesPercent:F

    sget v3, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->ADD_SAMPLES_FACTOR:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVeloSyncPercent:F

    sget v3, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->VELOSYNC_FACTOR:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;->onProgress(F)V

    .line 106
    return-void
.end method


# virtual methods
.method public doneAddSamplesTask(I)V
    .locals 8

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mProcessedSamples:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mProcessedSamples:J

    .line 172
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mProcessedSamples:J

    long-to-float v0, v0

    mul-float/2addr v0, v4

    iget-wide v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mTotalSamples:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mAddSamplesPercent:F

    .line 173
    iget v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mAddSamplesPercent:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 174
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mAddSamplesPercent:F

    .line 176
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mNumWorkingAddTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mNumWorkingAddTasks:I

    .line 177
    iget v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mNumWorkingAddTasks:I

    .line 178
    iget-boolean v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mHaveAllSamples:Z

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->sendProgressNotification()V

    .line 182
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/automode/VeloBridge;->ProcessRequest()[F

    move-result-object v0

    .line 183
    const-string/jumbo v1, "ImpactDataGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finished getImpactData  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mImpactStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mResults:Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;->onSuccess([F)V

    .line 186
    :cond_1
    return-void

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/automode/VeloBridge;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 208
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 207
    throw v0
.end method

.method public getImpactData(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVeloSyncPercent:F

    iput v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mAddSamplesPercent:F

    iput v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mDecodePercent:F

    .line 57
    iput-object p3, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mResults:Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;

    .line 58
    iput v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mNumWorkingAddTasks:I

    .line 59
    iput-boolean v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mHaveAllSamples:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mPrevSamples:Lcom/adobe/premiereclip/automode/AudioSamples;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mProcessedSamples:J

    iput-wide v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mDecodedSamples:J

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mImpactStartTime:J

    .line 63
    new-instance v0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    new-instance v2, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;-><init>(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/premiereclip/automode/VeloBridge;Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;)V

    .line 96
    invoke-static {}, Lcom/adobe/premiereclip/automode/AutoModeManager;->getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/automode/AutoModeManager;->StartTask(Lcom/adobe/premiereclip/automode/AutoModeManager$Task;)V

    .line 98
    return-void
.end method
