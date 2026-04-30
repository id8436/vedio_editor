.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;
.super Ljava/lang/Object;
.source "Adobe360WorkflowRequestIntentReader.java"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private requestIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->contentResolver:Landroid/content/ContentResolver;

    .line 61
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->requestIntent:Landroid/content/Intent;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->requestIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->handleErrorCallback(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->handleCompletionCallback(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private handleCompletionCallback(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p2, :cond_0

    .line 93
    if-eqz p3, :cond_1

    .line 95
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-interface {p2, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleErrorCallback(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p2, :cond_0

    .line 70
    if-eqz p3, :cond_1

    .line 72
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-interface {p2, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public loopUntilCondition(Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;[Z)V
    .locals 4

    .prologue
    .line 238
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    aget-boolean v0, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 240
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    :try_start_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Adobe360WorkflowRequestIntentReader"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    throw v0

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 248
    return-void
.end method

.method public readDataFromIntent(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->contentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->requestIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorBadRequest:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;->handleErrorCallback(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 234
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentReader;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 232
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public readFromBuffer(Ljava/io/InputStream;[B)I
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 257
    :goto_0
    return v0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
