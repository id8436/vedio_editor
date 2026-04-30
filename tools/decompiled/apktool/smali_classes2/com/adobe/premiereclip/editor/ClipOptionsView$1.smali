.class Lcom/adobe/premiereclip/editor/ClipOptionsView$1;
.super Ljava/lang/Object;
.source "ClipOptionsView.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/ClipOptionsView;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$1;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 181
    const-string/jumbo v1, "cov"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tab selected for pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$1;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->access$000(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 183
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$1;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectClipOption(I)V

    .line 184
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
