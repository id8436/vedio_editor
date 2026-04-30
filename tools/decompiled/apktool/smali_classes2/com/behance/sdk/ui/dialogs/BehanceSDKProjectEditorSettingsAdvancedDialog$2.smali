.class Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingsAdvancedDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setCommentsDisabled(Z)V

    .line 98
    return-void
.end method
