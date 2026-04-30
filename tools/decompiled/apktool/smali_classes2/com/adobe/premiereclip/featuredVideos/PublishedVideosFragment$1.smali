.class Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$1;
.super Ljava/lang/Object;
.source "PublishedVideosFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$1;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 114
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$1;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-static {v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->access$000(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$1;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    .line 116
    invoke-static {v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->access$000(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
