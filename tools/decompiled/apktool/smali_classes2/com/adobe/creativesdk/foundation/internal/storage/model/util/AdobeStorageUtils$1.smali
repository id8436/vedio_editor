.class final Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;
.super Ljava/lang/Object;
.source "AdobeStorageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$handler:Lcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;

.field final synthetic val$hexEncoding:Z

.field final synthetic val$iStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;->val$iStream:Ljava/io/InputStream;

    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;->val$hexEncoding:Z

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;->val$handler:Lcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;->val$iStream:Ljava/io/InputStream;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;->val$hexEncoding:Z

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->MD5HashFromStream(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;->val$handler:Lcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;->onCompletion(Ljava/lang/String;)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;->val$iStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
