.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCoverChosen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;

    iget-object v1, v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_0
    return-void
.end method
