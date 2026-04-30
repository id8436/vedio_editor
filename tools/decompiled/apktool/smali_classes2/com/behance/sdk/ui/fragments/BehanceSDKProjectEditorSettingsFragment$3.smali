.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$3;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setTags(Ljava/lang/String;)V

    .line 112
    return-void
.end method
