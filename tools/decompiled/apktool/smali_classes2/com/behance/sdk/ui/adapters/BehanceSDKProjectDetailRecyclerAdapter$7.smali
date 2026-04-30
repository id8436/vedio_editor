.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDetailRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

.field final synthetic val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$color;->bsdk_project_detail_appreciated_badge_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 507
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateThumb:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->thankYouText:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$602(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;Z)Z

    .line 510
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;->onProjectAppreciated()V

    .line 512
    :cond_0
    return-void
.end method
