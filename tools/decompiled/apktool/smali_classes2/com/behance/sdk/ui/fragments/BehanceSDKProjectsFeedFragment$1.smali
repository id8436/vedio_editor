.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "BehanceSDKProjectsFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;

.field final synthetic val$columnCount:I


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;I)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;

    iput p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;->val$columnCount:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    .line 162
    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 169
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :pswitch_1
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;->val$columnCount:I

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
