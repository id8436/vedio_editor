.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;)V
    .locals 0

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;

    iget-object v1, v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;->val$files:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/util/Map;Z)V

    .line 1413
    return-void
.end method
