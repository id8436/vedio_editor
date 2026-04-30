.class final Lcom/adobe/premiereclip/util/JsonReader$1;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;


# instance fields
.field final synthetic val$handler:Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;

.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$suffix:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$handler:Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 119
    if-eqz p1, :cond_1

    .line 120
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

    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    :try_start_0
    invoke-static {v0}, Lcom/adobe/premiereclip/util/JsonReader;->readJsonObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    const-string/jumbo v1, "fullImpact"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 126
    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [F

    .line 128
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 129
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$handler:Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$handler:Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;->onSuccess([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_1
    :goto_1
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$handler:Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$handler:Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$handler:Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/util/JsonReader$1;->val$handler:Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;->onError(Ljava/lang/Exception;)V

    goto :goto_1
.end method
