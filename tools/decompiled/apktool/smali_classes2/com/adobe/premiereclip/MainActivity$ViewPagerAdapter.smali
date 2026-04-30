.class Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/MainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1469
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1470
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1484
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1474
    packed-switch p1, :pswitch_data_0

    .line 1479
    invoke-static {}, Lcom/adobe/premiereclip/ProjectsListFragment;->newInstance()Lcom/adobe/premiereclip/ProjectsListFragment;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1475
    :pswitch_0
    invoke-static {}, Lcom/adobe/premiereclip/ProjectsListFragment;->newInstance()Lcom/adobe/premiereclip/ProjectsListFragment;

    move-result-object v0

    goto :goto_0

    .line 1476
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->newInstance(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityFeedTitleListener;)Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    move-result-object v0

    goto :goto_0

    .line 1477
    :pswitch_2
    invoke-static {}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->newInstance()Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    move-result-object v0

    goto :goto_0

    .line 1474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1400(Lcom/adobe/premiereclip/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
