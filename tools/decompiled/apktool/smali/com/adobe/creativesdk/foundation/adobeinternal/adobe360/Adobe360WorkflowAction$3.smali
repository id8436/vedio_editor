.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;
.super Ljava/lang/Object;
.source "Adobe360WorkflowAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0
.end method
