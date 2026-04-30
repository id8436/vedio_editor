.class Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$5;
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
    .line 137
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$5;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$5;->this$1:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->access$000(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;->onPaused()V

    .line 141
    return-void
.end method
