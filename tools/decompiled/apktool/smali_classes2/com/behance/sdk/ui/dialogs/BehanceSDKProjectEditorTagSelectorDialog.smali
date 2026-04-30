.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;
.super Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;
.source "BehanceSDKProjectEditorTagSelectorDialog.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog$Callbacks;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomSheetDialog;

    .line 36
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->tags:Ljava/util/List;

    if-nez v1, :cond_0

    .line 37
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->tags:Ljava/util/List;

    .line 43
    :cond_0
    :goto_0
    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->tags:Ljava/util/List;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    sget-object v5, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->TOOLS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    if-ne v1, v5, :cond_2

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_add_tool:I

    :goto_1
    invoke-direct {v2, v3, v4, p0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;I)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->attachTouchHelperAndSetAdapter(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;)V

    .line 46
    return-object v0

    .line 40
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->tags:Ljava/util/List;

    goto :goto_0

    .line 43
    :cond_2
    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_add_company_school:I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->tags:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 96
    return-void
.end method

.method public onSearchTagsFailure(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onSearchTagsSuccess(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    .line 72
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    .line 73
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->getId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->getId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->updateSelectableItems(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method public onSelectedItemsChanged(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog$Callbacks;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog$Callbacks;->onTagsChangedComplete(Ljava/util/List;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected search(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;)V

    .line 52
    new-instance v1, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;

    invoke-direct {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;-><init>()V

    .line 53
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDK;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->setClientId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->setTextQuery(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->setCategories(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog$Callbacks;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog$Callbacks;

    .line 100
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->tags:Ljava/util/List;

    .line 90
    return-void
.end method
