.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
.super Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;
.source "AdobeStorageResourceItem.java"


# instance fields
.field private data:[B

.field private length:Ljava/lang/Number;

.field private md5:Ljava/lang/String;

.field private optionalMetadata:Lorg/json/JSONObject;

.field private path:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    .line 40
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    .line 41
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->path:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->version:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->md5:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getOptionalMetadata()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->optionalMetadata:Lorg/json/JSONObject;

    .line 45
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getLength()Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->length:Ljava/lang/Number;

    .line 46
    return-void
.end method

.method public static contentsAtPath(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 159
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 161
    new-array v0, v0, [B

    .line 163
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    const/4 v1, 0x0

    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 165
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 178
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 178
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 173
    :catch_2
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method public static escapeAssetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 p0, 0x0

    .line 99
    :goto_0
    return-object p0

    .line 93
    :cond_0
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+"

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static resourceFromAssetName(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 4

    .prologue
    .line 136
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>()V

    .line 137
    iput-object p0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "assets/"

    .line 141
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 3

    .prologue
    .line 66
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>()V

    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    .line 75
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>()V

    .line 59
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    .line 60
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    .line 61
    return-object v0
.end method

.method public static resourceFromPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>()V

    .line 192
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 193
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->path:Ljava/lang/String;

    .line 194
    return-object v0
.end method

.method public static resourceWithContentsOfFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 2

    .prologue
    .line 183
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    .line 184
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->contentsAtPath(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    .line 185
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resourceWithJSONData(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceWithJSONData(Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    return-object v0
.end method

.method public static resourceWithJSONData(Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 218
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>()V

    .line 219
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 220
    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    .line 225
    :goto_0
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    if-eqz v2, :cond_1

    :goto_1
    return-object v0

    .line 223
    :cond_0
    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 225
    goto :goto_1
.end method

.method public static validAssetName(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    const-string/jumbo v1, ".*[\\\\:\\*\\?\"\\/<>\\|\\x00-\\x1F]+.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 120
    const-string/jumbo v2, ".*[\\ \\.]$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 122
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    return-object v0
.end method

.method public getLength()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->length:Ljava/lang/Number;

    return-object v0
.end method

.method public getLinks()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadataLink()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    const-string/jumbo v2, "metadata"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 424
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 423
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 424
    goto :goto_1
.end method

.method public getOptionalMetadata()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->optionalMetadata:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRenditionLink()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    const-string/jumbo v2, "rendition"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 412
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 411
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 412
    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method isCollection()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public isMetaDataLinkTemplated()Z
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    const-string/jumbo v1, "rendition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 430
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "templated"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isRenditionLinkTemplated()Z
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    const-string/jumbo v1, "rendition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 418
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "templated"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 418
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->data:[B

    .line 357
    :cond_0
    return-void
.end method

.method public setLength(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->length:Ljava/lang/Number;

    .line 402
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->md5:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setOptionalMetadata(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->optionalMetadata:Lorg/json/JSONObject;

    .line 393
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->path:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->version:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public updateFromCollectionDictionary(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;
        }
    .end annotation

    .prologue
    .line 239
    .line 240
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 241
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 242
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_0
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_1
    const-string/jumbo v3, "etag"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_2
    const-string/jumbo v3, "size"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->length:Ljava/lang/Number;

    goto :goto_0

    .line 259
    :cond_3
    const-string/jumbo v3, "md5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->md5:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_4
    const-string/jumbo v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->internalID:Ljava/lang/String;

    goto :goto_0

    .line 265
    :cond_5
    const-string/jumbo v3, "created"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 266
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->created:Ljava/lang/String;

    goto/16 :goto_0

    .line 268
    :cond_6
    const-string/jumbo v3, "modified"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 269
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->modified:Ljava/lang/String;

    goto/16 :goto_0

    .line 271
    :cond_7
    const-string/jumbo v3, "ordinal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 272
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->ordinal:J

    goto/16 :goto_0

    .line 274
    :cond_8
    const-string/jumbo v3, "_links"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 275
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->links:Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 279
    :cond_9
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 287
    :cond_a
    const-string/jumbo v0, "page"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 289
    :try_start_1
    const-string/jumbo v0, "page"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :cond_b
    :goto_1
    const-string/jumbo v0, "height"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 298
    :try_start_2
    const-string/jumbo v0, "height"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 305
    :cond_c
    :goto_2
    const-string/jumbo v0, "width"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 307
    :try_start_3
    const-string/jumbo v0, "width"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    :cond_d
    :goto_3
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->optionalMetadata:Lorg/json/JSONObject;

    .line 316
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 317
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v1, "Item doesn\'t have a name."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    .line 319
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    throw v1

    .line 290
    :catch_1
    move-exception v0

    .line 292
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 299
    :catch_2
    move-exception v0

    .line 301
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 308
    :catch_3
    move-exception v0

    .line 310
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 320
    :cond_e
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 321
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v1, "Item doesn\'t have a type."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    .line 323
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    throw v1

    .line 329
    :cond_f
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->modified:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 330
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v1, "Item doesn\'t have a modified time."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    throw v1

    .line 337
    :cond_10
    return-void
.end method
