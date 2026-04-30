.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;
.super Ljava/lang/Object;
.source "Adobe360WorkflowActionsManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;

.field final synthetic val$completed:[Z

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic val$result:[Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;Ljava/util/concurrent/locks/ReentrantLock;[Z[Lorg/json/JSONArray;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$completed:[Z

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$result:[Lorg/json/JSONArray;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->onCompletion(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onCompletion(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$completed:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$result:[Lorg/json/JSONArray;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    throw v0
.end method
