.class Lcom/adobe/premiereclip/TourViewActivity$1;
.super Ljava/lang/Object;
.source "TourViewActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/TourViewActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/TourViewActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/adobe/premiereclip/TourViewActivity$1;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$1;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$000(Lcom/adobe/premiereclip/TourViewActivity;)Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity$1;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/TourViewActivity;->access$000(Lcom/adobe/premiereclip/TourViewActivity;)Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->pauseVideo(I)V

    .line 113
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$1;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$000(Lcom/adobe/premiereclip/TourViewActivity;)Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->setCurrentPage(I)V

    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$1;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$000(Lcom/adobe/premiereclip/TourViewActivity;)Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->resumeVideo(I)V

    .line 115
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
