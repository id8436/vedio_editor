.class Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingsAdvancedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    iput-object p2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setDescription(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 148
    return-void
.end method
