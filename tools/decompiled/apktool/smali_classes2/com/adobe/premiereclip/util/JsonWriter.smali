.class public Lcom/adobe/premiereclip/util/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeDataToJsonFile([FLjava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;)V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x1

    new-instance v1, Lcom/adobe/premiereclip/util/JsonWriter$1;

    invoke-direct {v1, p2, p1, p0, p3}, Lcom/adobe/premiereclip/util/JsonWriter$1;-><init>(Ljava/lang/String;Ljava/lang/String;[FLcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;)V

    invoke-static {p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->MD5HashOfFile(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V

    .line 102
    return-void
.end method

.method public static writeJsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 48
    const-string/jumbo v0, "Utilities"

    const-string/jumbo v2, "started writing json object to file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "Utilities"

    const-string/jumbo v2, "finished writing json object to file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 52
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 53
    return-void
.end method
