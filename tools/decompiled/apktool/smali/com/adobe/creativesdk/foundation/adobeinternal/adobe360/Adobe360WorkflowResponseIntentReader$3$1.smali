.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;
.super Ljava/lang/Object;
.source "Adobe360WorkflowResponseIntentReader.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3;

.field final synthetic val$completed:[Z

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic val$resultMessage:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3;Ljava/util/concurrent/locks/ReentrantLock;[Z[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$completed:[Z

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$resultMessage:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$completed:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$resultMessage:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 167
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 170
    throw v0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentReader$3$1;->onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V

    return-void
.end method
