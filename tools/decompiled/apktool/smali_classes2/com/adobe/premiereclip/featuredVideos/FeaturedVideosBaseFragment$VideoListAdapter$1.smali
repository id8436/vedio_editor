.class Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$1;
.super Ljava/lang/Object;
.source "FeaturedVideosBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->notifyDataSetChanged()V

    .line 364
    return-void
.end method
