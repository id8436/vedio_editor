.class Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$3;
.super Ljava/util/TimerTask;
.source "FeaturedVideosBaseFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$3;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$3;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->refreshVideoListAdapter()V

    .line 317
    return-void
.end method
