.class Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$6;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingsAdvancedDialog.java"

# interfaces
.implements Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersChangeComplete(Ljava/util/List;)V
    .locals 3
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
    .line 189
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setCoOwners(Ljava/util/List;)V

    .line 190
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoOwners()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 191
    return-void
.end method
