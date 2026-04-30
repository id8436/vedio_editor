.class Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$5;
.super Ljava/lang/Object;
.source "ClipPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$202(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;Z)Z

    .line 194
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$002(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;I)I

    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$5;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$100(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->resume()V

    .line 196
    return-void
.end method
