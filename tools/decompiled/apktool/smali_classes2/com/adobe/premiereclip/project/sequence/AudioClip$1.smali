.class Lcom/adobe/premiereclip/project/sequence/AudioClip$1;
.super Ljava/lang/Object;
.source "AudioClip.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$impactDataStorage:Lcom/adobe/premiereclip/editor/ImpactDataStorage;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/project/sequence/AudioClip;Landroid/content/Context;Lcom/adobe/premiereclip/editor/ImpactDataStorage;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iput-object p2, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->val$impactDataStorage:Lcom/adobe/premiereclip/editor/ImpactDataStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$202(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z

    .line 119
    new-instance v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;

    invoke-direct {v0}, Lcom/adobe/premiereclip/automode/AutoModeAudio;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;-><init>(Lcom/adobe/premiereclip/project/sequence/AudioClip$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/automode/AutoModeAudio;->getImpactData(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;)V

    .line 156
    return-void
.end method

.method public onSuccess([F)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 93
    .line 94
    array-length v0, p1

    if-lez v0, :cond_1

    .line 95
    const-wide/32 v2, 0xf4240

    .line 96
    aget v0, p1, v1

    .line 97
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 98
    int-to-float v4, v4

    mul-float/2addr v0, v4

    const v4, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v4

    float-to-long v4, v0

    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v6

    .line 100
    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Invalid impact data read from .json file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->onError(Ljava/lang/Exception;)V

    .line 113
    :goto_1
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$000(Lcom/adobe/premiereclip/project/sequence/AudioClip;[F)V

    .line 109
    const-string/jumbo v0, "AudioClip"

    const-string/jumbo v2, "impact data successfully read from json file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->addImpactDataToAudioTrack(Lcom/adobe/premiereclip/project/sequence/AudioClip;)V

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$102(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
