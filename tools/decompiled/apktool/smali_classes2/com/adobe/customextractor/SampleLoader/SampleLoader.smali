.class public Lcom/adobe/customextractor/SampleLoader/SampleLoader;
.super Ljava/lang/Object;
.source "SampleLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SampleLoader"


# instance fields
.field private allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

.field private callback:Lcom/adobe/customextractor/SampleLoader/SampleLoader$LoaderCallback;

.field private currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

.field private currentThread:Ljava/lang/Thread;

.field private dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

.field private parser:Lcom/adobe/customextractor/extractor/Parser;

.field private sourceUri:Landroid/net/Uri;

.field private trackType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/customextractor/SampleLoader/SampleLoader$LoaderCallback;Lcom/adobe/customextractor/DataSource/DataSource;Landroid/net/Uri;Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;Lcom/adobe/customextractor/extractor/Parser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->callback:Lcom/adobe/customextractor/SampleLoader/SampleLoader$LoaderCallback;

    .line 35
    iput-object p2, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    .line 36
    iput-object p3, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->sourceUri:Landroid/net/Uri;

    .line 37
    iput-object p4, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    .line 38
    iput-object p5, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->parser:Lcom/adobe/customextractor/extractor/Parser;

    .line 39
    iput-object p6, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->trackType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string/jumbo v0, "SampleLoader"

    const-string/jumbo v1, "Resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object v2, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    .line 100
    iput-object v2, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentThread:Ljava/lang/Thread;

    .line 101
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-virtual {v1}, Lcom/adobe/customextractor/SampleLoader/Loadable;->isLoadFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 94
    :cond_0
    return v0
.end method

.method public isLoadingFinished()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-virtual {v0}, Lcom/adobe/customextractor/SampleLoader/Loadable;->isLoadFinished()Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "SampleLoader"

    const-string/jumbo v1, "Release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->stopLoading()V

    .line 45
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->callback:Lcom/adobe/customextractor/SampleLoader/SampleLoader$LoaderCallback;

    invoke-interface {v0}, Lcom/adobe/customextractor/SampleLoader/SampleLoader$LoaderCallback;->onLoaderRelease()V

    .line 46
    return-void
.end method

.method public startLoadingAtOffset(JI)V
    .locals 11

    .prologue
    .line 49
    const-string/jumbo v0, "SampleLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StartLoading:offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/adobe/customextractor/SampleLoader/Loadable;

    iget-object v4, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    iget-object v5, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->sourceUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    iget-object v7, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->parser:Lcom/adobe/customextractor/extractor/Parser;

    iget-object v9, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->trackType:Ljava/lang/String;

    move-object v1, p0

    move-wide v2, p1

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/adobe/customextractor/SampleLoader/Loadable;-><init>(Lcom/adobe/customextractor/SampleLoader/SampleLoader;JLcom/adobe/customextractor/DataSource/DataSource;Landroid/net/Uri;Lcom/adobe/customextractor/Util/Allocate/Allocator;Lcom/adobe/customextractor/extractor/Parser;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    .line 51
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-virtual {v0}, Lcom/adobe/customextractor/SampleLoader/Loadable;->runSync()J

    move-result-wide v0

    .line 52
    iget-object v2, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-virtual {v2}, Lcom/adobe/customextractor/SampleLoader/Loadable;->isLoadFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string/jumbo v2, "SampleLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Async Load start at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-virtual {v2, v0, v1}, Lcom/adobe/customextractor/SampleLoader/Loadable;->setOffset(J)V

    .line 55
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentThread:Ljava/lang/Thread;

    .line 56
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    :cond_0
    return-void
.end method

.method public declared-synchronized stopLoading()V
    .locals 4

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SampleLoader"

    const-string/jumbo v1, "StopLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-virtual {v0}, Lcom/adobe/customextractor/SampleLoader/Loadable;->isLoadFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :try_start_1
    const-string/jumbo v0, "SampleLoader"

    const-string/jumbo v1, "StopLoading:Async Loadable found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-virtual {v0}, Lcom/adobe/customextractor/SampleLoader/Loadable;->cancelLoading()V

    .line 66
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 69
    :cond_0
    const-string/jumbo v0, "SampleLoader"

    const-string/jumbo v1, "StopLoading:GoingToWait"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->currentAsyncLoadable:Lcom/adobe/customextractor/SampleLoader/Loadable;

    invoke-virtual {v0}, Lcom/adobe/customextractor/SampleLoader/Loadable;->isLoadCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_2
    const-string/jumbo v1, "SampleLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "StopLoadingWaitReceivedInterrupt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 73
    :cond_2
    :try_start_3
    const-string/jumbo v0, "SampleLoader"

    const-string/jumbo v1, "StopLoading:Notified"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
