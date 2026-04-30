.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator$2;
.super Ljava/lang/Object;
.source "Adobe360WorkflowResponseIntentCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$resultIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator$2;->val$resultIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentCreator$2;->val$resultIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 134
    return-void
.end method
