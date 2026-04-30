.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setAdultContent(Z)V

    .line 85
    return-void
.end method
