.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingSelectorAbstractAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

.field final synthetic val$priorSize:I


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;I)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iput p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->val$priorSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->selectableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->val$priorSize:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->notifyItemRangeChanged(II)V

    .line 127
    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->val$priorSize:I

    if-le v0, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->val$priorSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->val$priorSize:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->notifyItemRangeInserted(II)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->val$priorSize:I

    if-le v1, v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$2;->val$priorSize:I

    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_0
.end method
