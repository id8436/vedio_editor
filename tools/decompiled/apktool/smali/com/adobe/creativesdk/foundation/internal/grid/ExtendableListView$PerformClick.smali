.class Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;
.super Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;
.source "ExtendableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V
    .locals 1

    .prologue
    .line 2733
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$1;)V
    .locals 0

    .prologue
    .line 2733
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$700(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2751
    :cond_0
    :goto_0
    return-void

    .line 2740
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2741
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->mClickMotionPosition:I

    .line 2742
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$400(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2744
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2745
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2747
    if-eqz v2, :cond_0

    .line 2748
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget v4, v4, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v4, v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
