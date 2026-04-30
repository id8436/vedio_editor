.class Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 338
    check-cast p2, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$ProjectEditorBinder;

    .line 339
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {p2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$ProjectEditorBinder;->getService()Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$502(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    .line 340
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$500(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->setCallbacks(Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;)V

    .line 341
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INTENT_EXTRA_PARAMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INTENT_EXTRA_PARAMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    .line 343
    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$500(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->loadProject(Ljava/lang/String;)V

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$500(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->setProjectPublishListener(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V

    .line 346
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$500(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getNotificationHandlerActivityClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->setNotificationHandlerActivity(Ljava/lang/Class;)V

    .line 348
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$502(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    .line 352
    return-void
.end method
