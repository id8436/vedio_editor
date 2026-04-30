.class final Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger$1;
.super Ljava/lang/Object;
.source "AdobeLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$appLaunch:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger$1;->val$appLaunch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 168
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$100(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$202(I)I

    .line 173
    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logFile:Ljava/io/File;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$302(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    .line 174
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$300()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 175
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger$1;->val$appLaunch:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$300()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "************************ App Launch *********************\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$300()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$300()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 184
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    :try_start_2
    const-class v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    :try_start_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$300()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$300()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 181
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$300()Ljava/io/PrintWriter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 182
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->access$300()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 183
    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
