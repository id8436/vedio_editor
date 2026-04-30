.class Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$1;
.super Ljava/lang/Object;
.source "SequencePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

.field final synthetic val$sequenceTime:J


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;J)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$1;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    iput-wide p2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$1;->val$sequenceTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$1;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->access$000(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$1;->val$sequenceTime:J

    invoke-interface {v0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;->setSequenceTime(J)V

    .line 105
    return-void
.end method
