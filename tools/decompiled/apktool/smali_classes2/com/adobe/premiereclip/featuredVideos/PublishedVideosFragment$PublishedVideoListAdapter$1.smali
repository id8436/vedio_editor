.class Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$1;
.super Ljava/lang/Object;
.source "PublishedVideosFragment.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

.field final synthetic val$video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$1;->val$video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 322
    new-instance v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$1;->val$video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;-><init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    return-void
.end method
