.class Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;
.super Ljava/lang/Object;
.source "SequencePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

.field final synthetic val$forced:Z

.field final synthetic val$offset:F


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;FZ)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;->val$offset:F

    iput-boolean p3, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;->val$forced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->access$000(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;->val$offset:F

    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;->val$forced:Z

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;->setClipTime(FZ)V

    .line 114
    return-void
.end method
