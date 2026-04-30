.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;
.super Ljava/lang/Object;
.source "Adobe360WorkflowRequestIntentCreator.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3;

.field final synthetic val$completed:[Z

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3;Ljava/util/concurrent/locks/ReentrantLock;[ZLjava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->val$completed:[Z

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->onCompletion(Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->val$completed:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    throw v0
.end method
