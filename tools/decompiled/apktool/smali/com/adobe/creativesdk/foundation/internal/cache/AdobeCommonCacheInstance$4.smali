.class Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;
.super Ljava/lang/Object;
.source "AdobeCommonCacheInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$options:Ljava/util/EnumSet;

.field final synthetic val$startTime:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/util/Date;Ljava/util/EnumSet;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$guid:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$startTime:Ljava/util/Date;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$options:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 692
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got Read lock in getObjectFromDiskWithGUID.Current lock count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$guid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$100(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$key:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disk Miss for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$200(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 736
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Read lock released in getObjectFromDiskWithGUID.Holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 703
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 704
    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 705
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 707
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 708
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$guid:Ljava/lang/String;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$startTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v5, v6, v7, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$300(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;J)V

    .line 709
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$guid:Ljava/lang/String;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$key:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$400(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$500(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/io/File;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$handler:Landroid/os/Handler;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;->AdobeCommonCacheHitLocationDisk:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;

    invoke-static {v0, v4, v5, v2, v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$600(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    .line 714
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$options:Ljava/util/EnumSet;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$700(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$800(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    move-result-object v0

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$guid:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$key:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$400(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 726
    :cond_1
    if-eqz v3, :cond_2

    .line 727
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 728
    :cond_2
    if-eqz v1, :cond_3

    .line 729
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 735
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 736
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Read lock released in getObjectFromDiskWithGUID.Holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    :try_start_5
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 735
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 736
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Read lock released in getObjectFromDiskWithGUID.Holding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    throw v0

    .line 718
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 719
    :goto_2
    :try_start_6
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Unable to read map from cache"

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 720
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$200(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 726
    if-eqz v2, :cond_4

    .line 727
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 728
    :cond_4
    if-eqz v1, :cond_3

    .line 729
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 730
    :catch_2
    move-exception v0

    .line 731
    :try_start_8
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 721
    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 722
    :goto_3
    :try_start_9
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Unable to read map from cache"

    invoke-static {v2, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 723
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->access$200(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 726
    if-eqz v3, :cond_5

    .line 727
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 728
    :cond_5
    if-eqz v1, :cond_3

    .line 729
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 730
    :catch_4
    move-exception v0

    .line 731
    :try_start_b
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 725
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 726
    :goto_4
    if-eqz v3, :cond_6

    .line 727
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 728
    :cond_6
    if-eqz v1, :cond_7

    .line 729
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 733
    :cond_7
    :goto_5
    :try_start_d
    throw v0

    .line 730
    :catch_5
    move-exception v1

    .line 731
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 725
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 721
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_3

    .line 718
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2

    :catch_9
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2
.end method
