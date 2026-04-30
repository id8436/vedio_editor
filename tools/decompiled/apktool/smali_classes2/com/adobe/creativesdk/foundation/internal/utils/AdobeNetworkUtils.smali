.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;
.super Ljava/lang/Object;
.source "AdobeNetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertHeaderKeyToLowerCaseAndDecode(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;->getRFC2047DecodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 104
    :cond_1
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 111
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static defaultPortWithScheme(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/16 v0, 0x50

    .line 152
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const/16 v0, 0x1bb

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static generateUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRFC2047DecodedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    .line 117
    if-eqz p0, :cond_0

    const-string/jumbo v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "?="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object p0

    .line 125
    :cond_1
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 126
    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 128
    const/4 v3, 0x1

    aget-object v0, v0, v3

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string/jumbo v0, "b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 132
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string/jumbo v0, "q"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 228
    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    .line 231
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 232
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 233
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getApplicationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getApplicationVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";Android;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static isURLCompatibleWithServiceEndpointAtURL(Ljava/net/URI;Ljava/net/URI;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, v4

    .line 207
    :goto_0
    return v0

    .line 159
    :cond_1
    invoke-virtual {p1, p0}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 160
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 167
    if-nez v0, :cond_3

    move v0, v4

    .line 168
    goto :goto_0

    .line 169
    :cond_3
    if-nez v1, :cond_4

    move v0, v3

    .line 170
    goto :goto_0

    .line 171
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    .line 172
    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 177
    if-nez v0, :cond_6

    .line 178
    const-string/jumbo v0, "http"

    .line 180
    :cond_6
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 182
    if-nez v1, :cond_7

    .line 183
    const-string/jumbo v1, "http"

    .line 189
    :cond_7
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    .line 191
    if-ne v2, v6, :cond_8

    .line 192
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;->defaultPortWithScheme(Ljava/lang/String;)I

    move-result v2

    .line 194
    :cond_8
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 196
    if-ne v5, v6, :cond_9

    .line 197
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;->defaultPortWithScheme(Ljava/lang/String;)I

    move-result v5

    .line 200
    :cond_9
    if-eq v2, v5, :cond_a

    move v0, v4

    .line 201
    goto :goto_0

    .line 204
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v4

    .line 205
    goto :goto_0

    :cond_b
    move v0, v3

    .line 207
    goto :goto_0
.end method

.method public static isURLIncompatibleWithURL(Ljava/net/URI;Ljava/net/URI;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 217
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    .line 220
    goto :goto_0

    .line 224
    :cond_3
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;->isURLCompatibleWithServiceEndpointAtURL(Ljava/net/URI;Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static parseAndDecodeHTTPHeadersFromString(Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 27
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 28
    new-instance v6, Ljava/util/HashMap;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    const-string/jumbo v0, "^([^:]+):(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 33
    array-length v8, v5

    move v3, v4

    move-object v1, v2

    :goto_0
    if-ge v3, v8, :cond_7

    aget-object v9, v5, v3

    .line 35
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 33
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 42
    if-eqz v1, :cond_4

    const/16 v10, 0x9

    if-eq v0, v10, :cond_1

    const/16 v10, 0x20

    if-ne v0, v10, :cond_4

    .line 44
    :cond_1
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    :goto_2
    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 49
    const-string/jumbo v10, ",%s"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v9, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v6, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v1

    .line 54
    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 44
    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v13, :cond_8

    .line 64
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    :goto_3
    if-eqz v0, :cond_6

    .line 71
    const-string/jumbo v10, ",%s"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v9, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v6, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 75
    goto/16 :goto_1

    :cond_5
    move-object v0, v2

    .line 67
    goto :goto_3

    .line 78
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_1

    .line 86
    :cond_7
    invoke-static {v6}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;->convertHeaderKeyToLowerCaseAndDecode(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_8
    move-object v0, v2

    goto/16 :goto_1
.end method
