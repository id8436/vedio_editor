.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$3;
.super Ljava/lang/Object;
.source "Adobe360WorkflowActionsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$3;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$3;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 229
    return-void
.end method
