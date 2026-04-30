.class public Lcom/adobe/premiereclip/automode/AutoModeAudio;
.super Ljava/lang/Object;
.source "AutoModeAudio.java"


# static fields
.field private static EPSILON:F = 0.0f

.field public static FAST_PACE:F = 0.0f

.field private static FLOAT_SIZE:I = 0x0

.field private static MAX_BINS_PER_TASK:I = 0x0

.field public static MEDIUM_PACE:F = 0.0f

.field public static SLOW_PACE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AutoModeAudio"

.field public static VERY_FAST_PACE:F

.field public static VERY_VERY_FAST_PACE:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x32

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;->MAX_BINS_PER_TASK:I

    .line 53
    const/4 v0, 0x4

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;->FLOAT_SIZE:I

    .line 54
    const v0, 0x3c23d70a    # 0.01f

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;->EPSILON:F

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;->SLOW_PACE:F

    .line 92
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;->MEDIUM_PACE:F

    .line 93
    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;->FAST_PACE:F

    .line 94
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;->VERY_FAST_PACE:F

    .line 95
    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;->VERY_VERY_FAST_PACE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getGravityData([F)[F
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Lcom/adobe/premiereclip/automode/VeloBridge;->PrepareForTransitions([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getImpactData(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lcom/adobe/decoderfactory/DecoderFactory;->initialize(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-direct {v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;-><init>()V

    .line 43
    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->getImpactData(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;)V

    .line 45
    return-void
.end method

.method public getPaceInBPM([F)F
    .locals 1

    .prologue
    .line 103
    invoke-static {p1}, Lcom/adobe/premiereclip/automode/VeloBridge;->FindPaceInBPM([F)F

    move-result v0

    return v0
.end method

.method public getTransitionData([F[FFFFLjava/lang/Boolean;)Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;
    .locals 7

    .prologue
    .line 77
    const/4 v0, 0x2

    new-array v6, v0, [[F

    .line 79
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 78
    invoke-static/range {v0 .. v6}, Lcom/adobe/premiereclip/automode/VeloBridge;->CalculateTransitions([F[FFFFZ[[F)V

    .line 80
    new-instance v0, Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;-><init>(Lcom/adobe/premiereclip/automode/AutoModeAudio;)V

    .line 81
    const/4 v1, 0x0

    aget-object v1, v6, v1

    iput-object v1, v0, Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;->transitions:[F

    .line 82
    const/4 v1, 0x1

    aget-object v1, v6, v1

    iput-object v1, v0, Lcom/adobe/premiereclip/automode/AutoModeAudio$TransitionData;->pop:[F

    .line 83
    return-object v0
.end method
