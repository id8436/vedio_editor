.class Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$2;
.super Ljava/util/TimerTask;
.source "FeaturedVideosBaseFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$2;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$2;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternetScheduled:Z

    .line 292
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$2;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->access$000(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V

    .line 293
    const-string/jumbo v0, "Timer"

    const-string/jumbo v1, "schedule new task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method
