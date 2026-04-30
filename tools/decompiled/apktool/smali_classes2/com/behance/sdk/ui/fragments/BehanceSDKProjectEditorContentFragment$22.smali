.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

.field final synthetic val$files:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;->val$files:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1415
    return-void
.end method
