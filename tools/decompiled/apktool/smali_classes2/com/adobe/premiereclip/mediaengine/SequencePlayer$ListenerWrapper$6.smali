.class Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$6;
.super Ljava/lang/Object;
.source "SequencePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

.field final synthetic val$clipIndex:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$6;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$6;->val$clipIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$6;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->access$000(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$6;->val$clipIndex:I

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;->foundUnavailableClip(I)V

    .line 150
    return-void
.end method
