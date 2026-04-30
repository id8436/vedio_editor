.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorReorderRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;

.field final synthetic val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 109
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;->onDragStarted(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
