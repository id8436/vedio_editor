.class final Lcom/adobe/premiereclip/util/JsonWriter$1;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;


# instance fields
.field final synthetic val$data:[F

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[FLcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$suffix:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$data:[F

    iput-object p4, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 60
    if-eqz p1, :cond_2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string/jumbo v0, "JsonWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suffix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 65
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$data:[F

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$data:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    :try_start_0
    const-string/jumbo v4, "fullImpact"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/JsonWriter;->writeJsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;->onSuccess(Ljava/io/File;)V

    .line 100
    :cond_2
    :goto_1
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 87
    :catch_2
    move-exception v0

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 89
    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonWriter$1;->val$handler:Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;->onError(Ljava/lang/Exception;)V

    goto :goto_1
.end method
