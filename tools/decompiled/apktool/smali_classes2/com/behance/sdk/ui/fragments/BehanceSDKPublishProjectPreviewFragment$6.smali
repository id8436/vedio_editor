.class Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$6;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectPreviewFragment.java"

# interfaces
.implements Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$6;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$6;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->reorderSelectedModules(II)V

    .line 549
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$6;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->moveCheckState(II)V

    .line 550
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$6;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->notifyDataSetChanged()V

    .line 551
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$6;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V

    .line 552
    return-void
.end method
