.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$3;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingSelectorAbstractAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$3;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$3;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$3;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$3;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->selectableItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->notifyItemRangeInserted(II)V

    .line 141
    return-void
.end method
