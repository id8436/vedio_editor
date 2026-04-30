.class public Lcom/adobe/premiereclip/automode/VeloBridge;
.super Ljava/lang/Object;
.source "VeloBridge.java"


# static fields
.field private static LIB_NAME:Ljava/lang/String;


# instance fields
.field private mVeloSyncHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "VeloBridge"

    sput-object v0, Lcom/adobe/premiereclip/automode/VeloBridge;->LIB_NAME:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/adobe/premiereclip/automode/VeloBridge;->LIB_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNINewVeloSyncObject()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    .line 9
    return-void
.end method

.method public static CalculateTransitions([F[FFFFZ[[F)V
    .locals 0

    .prologue
    .line 40
    invoke-static/range {p0 .. p6}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNICalculateTransitions([F[FFFFZ[[F)V

    .line 41
    return-void
.end method

.method public static FindPaceInBPM([F)F
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIFindPaceInBPM([F)F

    move-result v0

    return v0
.end method

.method private static native JNIAddSFTBin(J[FII)V
.end method

.method public static native JNICalculateTransitions([F[FFFFZ[[F)V
.end method

.method private static native JNIDisposeVeloSyncObject(J)V
.end method

.method private static native JNIFindPaceInBPM([F)F
.end method

.method private static native JNIGetSamplesPerSpectrogramBin(J)I
.end method

.method private static native JNIGetVeloSyncVersion()F
.end method

.method private static native JNIGetWindowBufferPadding(J)I
.end method

.method private static native JNIInitForThreading(JI)V
.end method

.method private static native JNINewVeloSyncObject()J
.end method

.method private static native JNIPrepareForTransitions([F)[F
.end method

.method private static native JNIProcessRequest(J)[F
.end method

.method private static native JNISetAudioDurationInSamples(JI)V
.end method

.method public static PrepareForTransitions([F)[F
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIPrepareForTransitions([F)[F

    move-result-object v0

    return-object v0
.end method

.method public static getVeloSyncVersion()F
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIGetVeloSyncVersion()F

    move-result v0

    return v0
.end method


# virtual methods
.method public AddSFTBin([FII)V
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIAddSFTBin(J[FII)V

    .line 21
    return-void
.end method

.method public GetSamplesPerSpectrogramBin()I
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIGetSamplesPerSpectrogramBin(J)I

    move-result v0

    return v0
.end method

.method public GetWindowBufferPadding()I
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIGetWindowBufferPadding(J)I

    move-result v0

    return v0
.end method

.method public InitForThreading(I)V
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIInitForThreading(JI)V

    .line 13
    return-void
.end method

.method public ProcessRequest()[F
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIProcessRequest(J)[F

    move-result-object v0

    return-object v0
.end method

.method public SetAudioDurationInSamples(I)V
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNISetAudioDurationInSamples(JI)V

    .line 33
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/VeloBridge;->JNIDisposeVeloSyncObject(J)V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/automode/VeloBridge;->mVeloSyncHandle:J

    .line 54
    return-void
.end method
