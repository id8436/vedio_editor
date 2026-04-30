.class Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$1;
.super Ljava/lang/Object;
.source "FeaturedVideosBaseFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$1;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$1;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->refreshVideoListAdapter()V

    .line 129
    return-void
.end method
