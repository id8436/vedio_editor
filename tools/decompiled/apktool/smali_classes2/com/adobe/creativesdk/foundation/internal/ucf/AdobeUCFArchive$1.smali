.class final Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;
.super Ljava/lang/Object;
.source "AdobeUCFArchive.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$archivePath:Ljava/lang/String;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$mimetype:Ljava/lang/String;

.field final synthetic val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$archivePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$mimetype:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 221
    const/4 v2, 0x0

    .line 222
    const/4 v1, 0x0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$items:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$archivePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$mimetype:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-static {v0, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->createArchiveFileWithItems(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v1, v2

    .line 228
    :goto_0
    if-eqz v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_0
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 226
    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_1
.end method
