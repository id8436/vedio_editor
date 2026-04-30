.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$6;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$6;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4

    .prologue
    .line 569
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 585
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$6;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$900(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 586
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$6;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$002(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;I)I

    .line 587
    return-void

    .line 571
    :pswitch_0
    const v0, 0x7f0200a1

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_0

    .line 575
    :pswitch_1
    const v0, 0x7f02009b

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 577
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$6;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$800(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 578
    instance-of v1, v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    if-eqz v1, :cond_0

    .line 579
    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$6;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->setSequenceTime(Ljava/lang/Long;)V

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method
