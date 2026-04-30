.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;
.super Ljava/lang/Object;
.source "Adobe360WorkflowRequestIntentReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "360#action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 132
    const-string/jumbo v2, "action_id"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 133
    const-string/jumbo v2, "request_message_snapshot_uri"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/net/Uri;

    .line 134
    const-string/jumbo v2, "own_request_message"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 135
    const-string/jumbo v2, "response_message_snapshot_uri"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/net/Uri;

    .line 136
    const-string/jumbo v2, "action_sub_type"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    .line 138
    const/4 v2, 0x1

    new-array v12, v2, [Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v12, v2

    .line 139
    const/4 v2, 0x1

    new-array v6, v2, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v6, v2

    .line 141
    if-eqz v15, :cond_0

    .line 143
    :try_start_0
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 144
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    .line 145
    const/4 v2, 0x1

    new-array v5, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v5, v2

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 151
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 152
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    .line 154
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 157
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

    invoke-virtual {v9, v2, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->readFromBuffer(Ljava/io/InputStream;[B)I

    move-result v9

    .line 158
    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 163
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 164
    const/16 v21, 0x0

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;Ljava/util/concurrent/locks/ReentrantLock;[Z[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/util/concurrent/locks/Condition;)V

    new-instance v8, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3$2;

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;Ljava/util/concurrent/locks/ReentrantLock;[Z[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/util/concurrent/locks/Condition;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->readFromPath(Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    .line 190
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

    invoke-virtual {v2, v4, v7, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->loopUntilCondition(Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;[Z)V

    .line 192
    invoke-static/range {v20 .. v20}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 194
    if-eqz v18, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v15, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_1
    const/4 v2, 0x0

    aget-object v2, v12, v2

    if-eqz v2, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

    const/4 v3, 0x0

    aget-object v3, v12, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->val$handler:Landroid/os/Handler;

    invoke-static {v2, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 229
    :goto_2
    return-void

    .line 160
    :cond_1
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v3, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    .line 199
    const/4 v3, 0x0

    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorFileSystemError:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    aput-object v4, v12, v3

    goto :goto_1

    .line 210
    :cond_2
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;-><init>()V

    .line 211
    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->setRequestMessage(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V

    .line 212
    invoke-virtual {v2, v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->setActionId(Ljava/lang/String;)V

    .line 213
    if-eqz v16, :cond_3

    .line 215
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->setResponseMessagePathInCaller(Landroid/net/Uri;)V

    .line 218
    :cond_3
    if-eqz v17, :cond_4

    .line 220
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->setActionSubType(Ljava/lang/String;)V

    .line 223
    :cond_4
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->getRequestMessage()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 224
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSecondaryAppStart360WorkflowEvent;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->getRequestMessage()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getActionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->getRequestMessage()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getCallingAppPackageName(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSecondaryAppStart360WorkflowEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSecondaryAppStart360WorkflowEvent;->endAndTrackEvent()V

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;->val$handler:Landroid/os/Handler;

    invoke-static {v3, v2, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    goto :goto_2
.end method
