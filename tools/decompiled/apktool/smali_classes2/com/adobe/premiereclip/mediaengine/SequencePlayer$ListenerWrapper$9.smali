.class Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$9;
.super Ljava/lang/Object;
.source "SequencePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$9;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$9;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->access$000(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;->onReleased()V

    .line 179
    return-void
.end method
