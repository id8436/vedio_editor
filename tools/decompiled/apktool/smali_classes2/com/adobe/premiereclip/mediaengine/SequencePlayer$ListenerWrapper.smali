.class Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;
.super Ljava/lang/Object;
.source "SequencePlayer.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private listener:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->listener:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->listener:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    return-object p1
.end method

.method static synthetic access$602(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method public foundUnavailableClip(I)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$6;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public onLoadingCompleted()V
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    :goto_0
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->access$102(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    .line 166
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$8;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$8;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->access$200(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_CLIP:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->LOADING:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->access$102(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$7;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$7;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public onPaused()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$5;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public onReleased()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$9;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$9;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public setClipTime(FZ)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$2;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;FZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public setCurrentClip(I)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$4;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public setSequenceTime(J)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$1;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public updateTrimBars(FF)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper$3;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method
