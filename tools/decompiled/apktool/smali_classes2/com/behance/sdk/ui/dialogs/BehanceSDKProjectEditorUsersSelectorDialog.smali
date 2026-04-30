.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;
.super Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;
.source "BehanceSDKProjectEditorUsersSelectorDialog.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;

.field private task:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
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
    .line 35
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomSheetDialog;

    .line 37
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->users:Ljava/util/List;

    if-nez v1, :cond_0

    .line 38
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->users:Ljava/util/List;

    .line 44
    :cond_0
    :goto_0
    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorUserSelectorRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->users:Ljava/util/List;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    sget-object v5, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->CO_OWNERS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    if-ne v1, v5, :cond_2

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_add_co_owner:I

    :goto_1
    invoke-direct {v2, v3, v4, p0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorUserSelectorRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;I)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->attachTouchHelperAndSetAdapter(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;)V

    .line 47
    return-object v0

    .line 41
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->users:Ljava/util/List;

    goto :goto_0

    .line 44
    :cond_2
    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_add_credit:I

    goto :goto_1
.end method

.method public onGetMessageRecipientSuggestionsTaskCancel()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    .line 103
    return-void
.end method

.method public onGetMessageRecipientSuggestionsTaskFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    .line 108
    return-void
.end method

.method public onGetMessageRecipientSuggestionsTaskSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    .line 85
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 87
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 89
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->users:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 90
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v4

    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorUserSelectorRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorUserSelectorRecyclerAdapter;->updateSelectableItems(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->users:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 76
    return-void
.end method

.method public onSelectedItemsChanged(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;->onUsersChangeComplete(Ljava/util/List;)V

    .line 66
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
    const/4 v2, 0x1

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->cancel(Z)Z

    .line 55
    :cond_0
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    .line 56
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;->setQuery(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDK;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;->setClientId(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;

    .line 80
    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->users:Ljava/util/List;

    .line 70
    return-void
.end method
