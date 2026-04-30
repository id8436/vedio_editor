.class Lcom/adobe/premiereclip/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$4;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$4;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$400(Lcom/adobe/premiereclip/MainActivity;)I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$4;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adobe/premiereclip/MainActivity;->access$500(Lcom/adobe/premiereclip/MainActivity;II)V

    .line 330
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$4;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/MainActivity;->access$600(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 332
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 333
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->displayErrorIfNoInternet()V

    .line 334
    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 339
    return-void
.end method
