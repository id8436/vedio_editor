.class Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$6;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$6;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$6;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->onBackPressed()V

    .line 494
    return-void
.end method
