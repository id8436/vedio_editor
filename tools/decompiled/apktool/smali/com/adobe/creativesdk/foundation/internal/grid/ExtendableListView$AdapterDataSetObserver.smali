.class Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ExtendableListView.java"


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V
    .locals 1

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 2108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 2109
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$702(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Z)Z

    .line 2068
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$400(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$802(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 2069
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$402(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 2071
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$900(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->clearTransientStateViews()V

    .line 2075
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    .line 2076
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$800(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$400(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 2084
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1000(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    .line 2085
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->requestLayout()V

    .line 2086
    return-void

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2090
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$702(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Z)Z

    .line 2092
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$400(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$802(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 2100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$402(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I

    .line 2101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    .line 2103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1000(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    .line 2104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->requestLayout()V

    .line 2105
    return-void
.end method
