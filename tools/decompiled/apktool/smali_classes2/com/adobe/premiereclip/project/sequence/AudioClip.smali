.class public Lcom/adobe/premiereclip/project/sequence/AudioClip;
.super Lcom/adobe/premiereclip/project/sequence/Clip;
.source "AudioClip.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioClip"


# instance fields
.field private detectingImpactData:Z

.field private fetchingImpactData:Z

.field private impactData:[F

.field private impactDataListener:Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;

.field public final isInvalid:Z

.field public final songName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;Z)V
    .locals 11

    .prologue
    .line 56
    sget-object v8, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->AUDIO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/adobe/premiereclip/project/sequence/Clip;-><init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->songName:Ljava/lang/String;

    .line 58
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactData:[F

    .line 59
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isInvalid:Z

    .line 60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->fetchingImpactData:Z

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->detectingImpactData:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 52
    move-object/from16 v0, p9

    move-object v1, p2

    move-wide/from16 v2, p5

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->constructAssetReference(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/project/sequence/AudioClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;Z)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/project/sequence/AudioClip;[F)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->onImpactDataFetched([F)V

    return-void
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->fetchingImpactData:Z

    return p1
.end method

.method static synthetic access$202(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->detectingImpactData:Z

    return p1
.end method

.method private static constructAssetReference(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/AssetReference;
    .locals 8

    .prologue
    .line 66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 67
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    const-string/jumbo v6, "audio"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p2, p3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 69
    return-object v0
.end method

.method private fetchImpactData(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactData:[F

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->fetchingImpactData:Z

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->fetchingImpactData:Z

    .line 89
    new-instance v0, Lcom/adobe/premiereclip/editor/ImpactDataStorage;

    invoke-direct {v0}, Lcom/adobe/premiereclip/editor/ImpactDataStorage;-><init>()V

    .line 90
    new-instance v1, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;-><init>(Lcom/adobe/premiereclip/project/sequence/AudioClip;Landroid/content/Context;Lcom/adobe/premiereclip/editor/ImpactDataStorage;)V

    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/editor/ImpactDataStorage;->readImpactDataFromJsonFile(Lcom/adobe/premiereclip/project/sequence/AudioClip;Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;)V

    goto :goto_0
.end method

.method private onImpactDataFetched([F)V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "AudioClip"

    const-string/jumbo v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactData:[F

    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactDataListener:Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactDataListener:Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactData:[F

    invoke-interface {v0, p0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;->onImpactDataAvailable(Lcom/adobe/premiereclip/project/sequence/AudioClip;[F)V

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactDataListener:Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;

    .line 188
    return-void
.end method

.method public getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactData:[F

    if-nez v0, :cond_0

    .line 180
    iput-object p2, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactDataListener:Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;

    .line 181
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->fetchImpactData(Landroid/content/Context;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactData:[F

    return-object v0
.end method

.method public isDetectingImpactData()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->detectingImpactData:Z

    return v0
.end method

.method public isFetchingImpactData()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->fetchingImpactData:Z

    return v0
.end method

.method public isImpactDataSet()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactData:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImpactData([F)V
    .locals 1

    .prologue
    .line 170
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 171
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->impactData:[F

    .line 173
    :cond_0
    return-void
.end method
