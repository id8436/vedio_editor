.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;)V
    .locals 0

    .prologue
    .line 1697
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    return-void
.end method


# virtual methods
.method public onImpactDataAvailable(Lcom/adobe/premiereclip/project/sequence/AudioClip;[F)V
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1702
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1706
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    .line 1707
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 1708
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isImpactDataSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1709
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2400(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F

    move-result-object v0

    .line 1710
    if-eqz v0, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;[F)V

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2400(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F

    .line 1719
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$1802(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;Z)Z

    .line 1720
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    goto :goto_0
.end method
