.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3$1;
.super Ljava/lang/Object;
.source "Adobe360WorkflowAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3$1;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3$1;->val$b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 314
    return-void
.end method
