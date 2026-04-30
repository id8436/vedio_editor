.class Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;
.super Ljava/lang/Object;
.source "AudioClip.java"

# interfaces
.implements Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/project/sequence/AudioClip$1;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    const-string/jumbo v0, "AudioClip"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$202(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z

    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$102(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z

    .line 153
    return-void
.end method

.method public onProgress(F)V
    .locals 3

    .prologue
    .line 145
    const-string/jumbo v0, "AudioClip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public onSuccess([F)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$202(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z

    .line 125
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->val$impactDataStorage:Lcom/adobe/premiereclip/editor/ImpactDataStorage;

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    new-instance v2, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;

    invoke-direct {v2, p0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;-><init>(Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;[F)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/adobe/premiereclip/editor/ImpactDataStorage;->writeImpactDataToJsonFile([FLcom/adobe/premiereclip/project/sequence/AudioClip;Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;)V

    .line 141
    return-void
.end method
