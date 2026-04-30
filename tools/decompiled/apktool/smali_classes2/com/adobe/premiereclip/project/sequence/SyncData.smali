.class public Lcom/adobe/premiereclip/project/sequence/SyncData;
.super Ljava/lang/Object;
.source "SyncData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncData"


# instance fields
.field private mAma:Lcom/adobe/premiereclip/automode/AutoModeAudio;

.field private mBPMScaleFactor:F

.field private mDuration:F

.field private mGravity:[F

.field private mImpact:[F

.field private mLoopTransitions:[F

.field private mPace:F

.field private mStartTime:F

.field private mStartTransitions:[F


# direct methods
.method public constructor <init>([FFF)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/SyncData;->init([FFF)V

    .line 42
    return-void
.end method

.method private init([FFF)V
    .locals 7

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mAma:Lcom/adobe/premiereclip/automode/AutoModeAudio;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/adobe/premiereclip/automode/AutoModeManager;->getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/automode/AutoModeManager;->Initialize()V

    .line 47
    new-instance v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;

    invoke-direct {v0}, Lcom/adobe/premiereclip/automode/AutoModeAudio;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mAma:Lcom/adobe/premiereclip/automode/AutoModeAudio;

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    .line 50
    iput p2, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mPace:F

    .line 51
    iput p3, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTime:F

    .line 52
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mBPMScaleFactor:F

    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mAma:Lcom/adobe/premiereclip/automode/AutoModeAudio;

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/automode/AutoModeAudio;->getGravityData([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mGravity:[F

    .line 54
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 55
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 56
    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mDuration:F

    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mAma:Lcom/adobe/premiereclip/automode/AutoModeAudio;

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mGravity:[F

    iget v3, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mPace:F

    iget v4, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTime:F

    iget v5, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mDuration:F

    iget v6, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTime:F

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/automode/AutoModeAudio;->getTransitionData([F[FFFFLjava/lang/Boolean;)Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;->transitions:[F

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTransitions:[F

    .line 58
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTransitions:[F

    :goto_0
    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mLoopTransitions:[F

    .line 59
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBPMScaleFactor()F
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mBPMScaleFactor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 90
    const/high16 v0, 0x431c0000    # 156.0f

    .line 91
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mBPMScaleFactor:F

    .line 92
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mAma:Lcom/adobe/premiereclip/automode/AutoModeAudio;

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/automode/AutoModeAudio;->getPaceInBPM([F)F

    move-result v1

    .line 94
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 95
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mBPMScaleFactor:F

    .line 98
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mBPMScaleFactor:F

    return v0
.end method

.method public getTransition(I)F
    .locals 7

    .prologue
    .line 69
    int-to-float v0, p1

    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTransitions:[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTransitions:[F

    aget v0, v0, p1

    .line 85
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mLoopTransitions:[F

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mAma:Lcom/adobe/premiereclip/automode/AutoModeAudio;

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mGravity:[F

    iget v3, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mPace:F

    const/4 v4, 0x0

    iget v5, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mDuration:F

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/automode/AutoModeAudio;->getTransitionData([F[FFFFLjava/lang/Boolean;)Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;->transitions:[F

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mLoopTransitions:[F

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTransitions:[F

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTransitions:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 78
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mLoopTransitions:[F

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mLoopTransitions:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    .line 79
    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTransitions:[F

    array-length v2, v2

    sub-int v2, p1, v2

    .line 80
    iget-object v3, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mLoopTransitions:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    div-int v3, v2, v3

    .line 81
    iget-object v4, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mLoopTransitions:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    .line 82
    iget-object v4, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mLoopTransitions:[F

    aget v2, v4, v2

    add-float/2addr v0, v2

    int-to-float v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public reset([FFF)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mImpact:[F

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mPace:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/SyncData;->mStartTime:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/SyncData;->init([FFF)V

    .line 65
    :cond_1
    return-void
.end method
