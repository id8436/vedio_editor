.class Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;
.super Ljava/lang/Object;
.source "AudioClip.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;

.field final synthetic val$impact:[F


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;[F)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->this$2:Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;

    iput-object p2, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->val$impact:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->this$2:Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->val$impact:[F

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$000(Lcom/adobe/premiereclip/project/sequence/AudioClip;[F)V

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->this$2:Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$102(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z

    .line 139
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->this$2:Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->val$impact:[F

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$000(Lcom/adobe/premiereclip/project/sequence/AudioClip;[F)V

    .line 129
    const-string/jumbo v0, "AudioClip"

    const-string/jumbo v1, "impact data successfully written to json file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->this$2:Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->addImpactDataToAudioTrack(Lcom/adobe/premiereclip/project/sequence/AudioClip;)V

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1$1;->this$2:Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1$1;->this$1:Lcom/adobe/premiereclip/project/sequence/AudioClip$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip$1;->this$0:Lcom/adobe/premiereclip/project/sequence/AudioClip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->access$102(Lcom/adobe/premiereclip/project/sequence/AudioClip;Z)Z

    .line 133
    return-void
.end method
