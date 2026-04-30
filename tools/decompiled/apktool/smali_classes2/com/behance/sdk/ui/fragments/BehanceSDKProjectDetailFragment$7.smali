.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDetailFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

.field final synthetic val$activeProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->val$activeProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 908
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 909
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 913
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->setHeaderHeight(I)V

    .line 915
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 917
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    .line 919
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->val$activeProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->isBgImageRepeat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsBackgroundImageContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 921
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 930
    :cond_0
    return-void

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
