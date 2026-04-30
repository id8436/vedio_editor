.class Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

.field final synthetic val$project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    iput-object p2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->val$project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 370
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$000(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->val$project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setProject(Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;)V

    .line 371
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INTENT_EXTRA_PARAMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$000(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "INTENT_EXTRA_PARAMS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setProjectDetailsFromParams(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$202(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;I)I

    .line 374
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$600(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    iget-object v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v3}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$200(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$700(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    iget-object v4, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v4}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$200(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$300(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 375
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$000(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->onModuleCountChanged(I)V

    .line 376
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$000(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isPublishEligible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->onPublishEligibilityChanged(Z)V

    .line 377
    return-void
.end method
