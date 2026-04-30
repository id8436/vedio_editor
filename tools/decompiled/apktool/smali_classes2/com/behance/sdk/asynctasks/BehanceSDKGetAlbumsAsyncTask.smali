.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetAlbumsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;

    .line 46
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;)Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;-><init>()V

    .line 52
    const/4 v0, 0x0

    :try_start_0
    aget-object v2, p1, v0

    .line 53
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;->getContextWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;->isShowImageSelectionSources()Z

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/behance/sdk/files/LocalImageLoader;->getAlbumsList(Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->setAlbumsList(Ljava/util/List;)V

    .line 71
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->setExceptionOccurred(Z)V

    .line 60
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "Context is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->setException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v1, v5}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->setExceptionOccurred(Z)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->setException(Ljava/lang/Exception;)V

    .line 65
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem loading albums"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    invoke-virtual {v1, v5}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->setExceptionOccurred(Z)V

    .line 68
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->setException(Ljava/lang/Exception;)V

    .line 69
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem loading albums"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;)Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;->onGetAlbumsTaskFailure(Ljava/lang/Exception;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;->getAlbumsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;->onGetAlbumsTaskSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsTaskResult;)V

    return-void
.end method
