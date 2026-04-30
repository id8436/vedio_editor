.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;
.super Ljava/lang/Object;
.source "Adobe360WorkflowActionsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 151
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Z)Z

    .line 153
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Ljava/util/List;)Ljava/util/List;

    .line 157
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 158
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v5

    .line 160
    const/4 v0, 0x1

    new-array v3, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-boolean v1, v3, v0

    .line 161
    const/4 v0, 0x1

    new-array v4, v0, [Lorg/json/JSONArray;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v4, v0

    .line 164
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    move-result-object v7

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;Ljava/util/concurrent/locks/ReentrantLock;[Z[Lorg/json/JSONArray;Ljava/util/concurrent/locks/Condition;)V

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$2;

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;Ljava/util/concurrent/locks/ReentrantLock;[ZLjava/util/concurrent/locks/Condition;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v1, v9}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->actionRegistryArrayFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 189
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 191
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    aget-boolean v0, v3, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    .line 193
    :try_start_3
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 200
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 235
    :catch_1
    move-exception v0

    .line 236
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 238
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    monitor-enter v1

    .line 239
    :try_start_7
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Z)Z

    .line 240
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 242
    :goto_1
    return-void

    .line 153
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 199
    :cond_0
    :try_start_9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    const/4 v0, 0x0

    aget-object v0, v4, v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 203
    :goto_2
    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 204
    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_1

    const-string/jumbo v2, "platform"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->createActionFromActionRegistryData(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 213
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->getSharedInsatnce()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->fetchActionsFromInstalledApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_4

    .line 215
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 216
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    .line 218
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 238
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    monitor-enter v1

    .line 239
    :try_start_a
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Z)Z

    .line 240
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 241
    throw v0

    .line 220
    :cond_3
    :try_start_b
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 238
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    monitor-enter v1

    .line 239
    :try_start_c
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Z)Z

    .line 240
    monitor-exit v1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    .line 232
    :cond_6
    :try_start_d
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_4

    .line 240
    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0
.end method
