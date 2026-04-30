.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;
.super Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;
.source "BehanceSDKProjectEditorTeamsSelectorDialog.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog$Callbacks;

.field private task:Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;

.field private teams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomSheetDialog;

    .line 36
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->teams:Ljava/util/List;

    if-nez v1, :cond_0

    .line 37
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->teams:Ljava/util/List;

    .line 43
    :cond_0
    :goto_0
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->teams:Ljava/util/List;

    invoke-direct {v1, v2, v3, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->attachTouchHelperAndSetAdapter(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;)V

    .line 46
    return-object v0

    .line 40
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->teams:Ljava/util/List;

    goto :goto_0
.end method

.method public onGetTeamsFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;

    .line 84
    return-void
.end method

.method public onGetTeamsSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;

    .line 89
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    .line 93
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->teams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    .line 94
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getId()I

    move-result v4

    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getId()I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->updateSelectableItems(Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->teams:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    return-void
.end method

.method public onSelectedItemsChanged(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog$Callbacks;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog$Callbacks;->onTeamsChangeComplete(Ljava/util/List;)V

    .line 65
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

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;->cancel(Z)Z

    .line 54
    :cond_0
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;

    .line 55
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;->setSearchString(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDK;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;->setClientId(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->task:Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog$Callbacks;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog$Callbacks;

    .line 79
    return-void
.end method

.method public setTeams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->teams:Ljava/util/List;

    .line 69
    return-void
.end method
