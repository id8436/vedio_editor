.class Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$6;
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
    .line 200
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$6;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$6;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->finish()V

    .line 204
    return-void
.end method
