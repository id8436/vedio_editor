.class public Lcom/adobe/premiereclip/automode/AddSamplesTask;
.super Ljava/lang/Object;
.source "AddSamplesTask.java"

# interfaces
.implements Lcom/adobe/premiereclip/automode/AutoModeManager$Task;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddSamplesTask"


# instance fields
.field private mBin:I

.field private mDelta:I

.field private mListener:Lcom/adobe/premiereclip/automode/AddSamplesTask$Listener;

.field private mNumBins:I

.field private mOffset:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mSamples:[F

.field private mTaskThread:Ljava/lang/Thread;

.field private mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/automode/VeloBridge;[FIIIILcom/adobe/premiereclip/automode/AddSamplesTask$Listener;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    .line 27
    iput-object p2, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mSamples:[F

    .line 28
    iput p3, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mOffset:I

    .line 29
    iput p4, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mBin:I

    .line 30
    iput p5, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mNumBins:I

    .line 31
    iput p6, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mDelta:I

    .line 32
    iput-object p7, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mListener:Lcom/adobe/premiereclip/automode/AddSamplesTask$Listener;

    .line 33
    new-instance v0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;-><init>(Lcom/adobe/premiereclip/automode/AddSamplesTask;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mRunnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mOffset:I

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/automode/AddSamplesTask;I)I
    .locals 0

    .prologue
    .line 8
    iput p1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mOffset:I

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mNumBins:I

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mBin:I

    return v0
.end method

.method static synthetic access$208(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I
    .locals 2

    .prologue
    .line 8
    iget v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mBin:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mBin:I

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/automode/AddSamplesTask;)[F
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mSamples:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/automode/AddSamplesTask;)Lcom/adobe/premiereclip/automode/VeloBridge;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mDelta:I

    return v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/automode/AddSamplesTask;)Lcom/adobe/premiereclip/automode/AddSamplesTask$Listener;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mListener:Lcom/adobe/premiereclip/automode/AddSamplesTask$Listener;

    return-object v0
.end method


# virtual methods
.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTaskThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/adobe/premiereclip/automode/AutoModeManager;->getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mTaskThread:Ljava/lang/Thread;

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTaskThread(Ljava/lang/Thread;)V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/adobe/premiereclip/automode/AutoModeManager;->getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;

    move-result-object v1

    monitor-enter v1

    .line 78
    :try_start_0
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask;->mTaskThread:Ljava/lang/Thread;

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
