.class Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;
.super Ljava/lang/Object;
.source "ClipPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$100(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->seekTo(I)V

    .line 134
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$000(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$202(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;Z)Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$100(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->start()V

    .line 140
    return-void
.end method
