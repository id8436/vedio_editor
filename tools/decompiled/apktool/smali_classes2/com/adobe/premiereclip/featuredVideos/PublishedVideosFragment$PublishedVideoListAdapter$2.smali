.class Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$2;
.super Ljava/lang/Object;
.source "PublishedVideosFragment.java"

# interfaces
.implements Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$2;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$2;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f12051a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    return-void
.end method

.method public onOpened()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$2;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f12051a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    return-void
.end method
