.class Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;
.super Ljava/lang/Object;
.source "SequencePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

.field final synthetic val$end:F

.field final synthetic val$start:F


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;FF)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;->val$start:F

    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;->val$end:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->access$000(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;->val$start:F

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;->val$end:F

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;->setTrimBar(FF)V

    .line 123
    return-void
.end method
