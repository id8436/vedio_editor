.class Lcom/adobe/premiereclip/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$8;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 643
    if-nez p1, :cond_0

    .line 644
    const-string/jumbo v0, "MainActivity"

    const-string/jumbo v1, "page selected 0 calling refresh message view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$8;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1100(Lcom/adobe/premiereclip/MainActivity;)V

    .line 647
    :cond_0
    return-void
.end method
