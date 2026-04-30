.class Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView$1;
.super Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;
.source "BehanceSDKEndlessScrollRecyclerView.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-direct {p0, p2}, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public onLoadMore(I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;)V

    .line 40
    return-void
.end method
