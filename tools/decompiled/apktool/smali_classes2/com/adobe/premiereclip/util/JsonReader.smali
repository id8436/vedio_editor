.class public Lcom/adobe/premiereclip/util/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static readAll(Ljava/io/Reader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 55
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readDataFromJSONFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;)V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    new-instance v1, Lcom/adobe/premiereclip/util/JsonReader$1;

    invoke-direct {v1, p1, p2}, Lcom/adobe/premiereclip/util/JsonReader$1;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;)V

    invoke-static {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->MD5HashOfFile(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V

    .line 151
    return-void
.end method

.method public static readJsonArrayFromFile(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 94
    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    invoke-static {v1}, Lcom/adobe/premiereclip/util/JsonReader;->readAll(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 100
    return-object v2
.end method

.method public static readJsonArrayFromUrl(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    .line 73
    invoke-static {p0}, Lcom/adobe/premiereclip/util/JsonReader;->getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    invoke-static {v1}, Lcom/adobe/premiereclip/util/JsonReader;->readAll(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 78
    return-object v2
.end method

.method public static readJsonObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    .line 106
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 108
    invoke-static {v1}, Lcom/adobe/premiereclip/util/JsonReader;->readAll(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 111
    return-object v2
.end method

.method public static readJsonObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    .line 84
    invoke-static {p0}, Lcom/adobe/premiereclip/util/JsonReader;->getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    invoke-static {v1}, Lcom/adobe/premiereclip/util/JsonReader;->readAll(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 89
    return-object v2
.end method
