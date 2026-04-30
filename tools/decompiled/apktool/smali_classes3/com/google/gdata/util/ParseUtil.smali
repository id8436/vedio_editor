.class public Lcom/google/gdata/util/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExtProfile(Lcom/google/gdata/data/BaseEntry;Z)Lcom/google/gdata/data/ExtensionProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;Z)",
            "Lcom/google/gdata/data/ExtensionProfile;"
        }
    .end annotation

    .prologue
    .line 257
    .line 258
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 260
    if-eqz p1, :cond_0

    .line 261
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->setAutoExtending(Z)V

    .line 263
    :cond_0
    return-object v0
.end method

.method private static getExtProfile(Lcom/google/gdata/data/BaseFeed;Z)Lcom/google/gdata/data/ExtensionProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;Z)",
            "Lcom/google/gdata/data/ExtensionProfile;"
        }
    .end annotation

    .prologue
    .line 268
    .line 269
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    .line 270
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 271
    if-eqz p1, :cond_0

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->setAutoExtending(Z)V

    .line 274
    :cond_0
    return-object v0
.end method

.method private static isAdapting(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 249
    const-class v0, Lcom/google/gdata/data/Entry;

    if-eq p0, v0, :cond_0

    const-class v0, Lcom/google/gdata/model/atom/Entry;

    if-eq p0, v0, :cond_0

    const-class v0, Lcom/google/gdata/data/Feed;

    if-eq p0, v0, :cond_0

    const-class v0, Lcom/google/gdata/model/atom/Feed;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseElement(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v1, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    .line 198
    new-instance v0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->setElementMetadata(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->build()Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/util/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/gdata/wireformats/WireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v0

    .line 213
    :goto_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/gdata/wireformats/WireFormatParser;->parse(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 205
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 206
    sget-object v3, Lcom/google/gdata/util/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/gdata/wireformats/WireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gdata/wireformats/WireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Lcom/google/gdata/data/XmlEventSource;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateExtension:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 217
    :catch_1
    move-exception v0

    .line 218
    invoke-virtual {v0}, Lcom/google/gdata/wireformats/ContentValidationException;->toParseException()Lcom/google/gdata/util/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static parseEntry(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 233
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/InputStream;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V

    goto :goto_0

    .line 231
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFeed(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/InputStream;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V

    goto :goto_0

    .line 244
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readEntry(Lcom/google/gdata/data/ParseSource;)Lcom/google/gdata/data/IEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0, v0, v0}, Lcom/google/gdata/util/ParseUtil;->readEntry(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method

.method public static readEntry(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/model/Schema;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null source"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-nez p1, :cond_4

    .line 81
    const-class v0, Lcom/google/gdata/data/Entry;

    .line 82
    const-class p1, Lcom/google/gdata/data/BaseEntry;

    move-object v1, v0

    .line 84
    :goto_0
    invoke-static {v1}, Lcom/google/gdata/util/ParseUtil;->isAdapting(Ljava/lang/Class;)Z

    move-result v2

    .line 89
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    instance-of v3, v0, Lcom/google/gdata/model/Element;

    if-eqz v3, :cond_2

    .line 99
    check-cast v0, Lcom/google/gdata/model/Element;

    invoke-static {p0, v0, p3}, Lcom/google/gdata/util/ParseUtil;->parseElement(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/Element;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;

    .line 120
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lcom/google/gdata/util/ServiceException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateEntry:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    new-instance v1, Lcom/google/gdata/util/ServiceException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateEntry:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v1, v0

    .line 101
    check-cast v1, Lcom/google/gdata/data/BaseEntry;

    .line 104
    if-nez p2, :cond_3

    .line 105
    invoke-static {v1, v2}, Lcom/google/gdata/util/ParseUtil;->getExtProfile(Lcom/google/gdata/data/BaseEntry;Z)Lcom/google/gdata/data/ExtensionProfile;

    move-result-object p2

    .line 108
    :cond_3
    invoke-static {p0, v1, p2}, Lcom/google/gdata/util/ParseUtil;->parseEntry(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 111
    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {v1}, Lcom/google/gdata/data/BaseEntry;->getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v1

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 114
    goto :goto_1

    :cond_4
    move-object v1, p1

    goto :goto_0
.end method

.method public static readFeed(Lcom/google/gdata/data/ParseSource;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0, v0, v0}, Lcom/google/gdata/util/ParseUtil;->readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public static readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IFeed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/model/Schema;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null source"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    if-nez p1, :cond_4

    .line 153
    const-class v0, Lcom/google/gdata/data/Feed;

    .line 154
    const-class p1, Lcom/google/gdata/data/BaseFeed;

    move-object v1, v0

    .line 156
    :goto_0
    invoke-static {v1}, Lcom/google/gdata/util/ParseUtil;->isAdapting(Ljava/lang/Class;)Z

    move-result v2

    .line 161
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    instance-of v3, v0, Lcom/google/gdata/model/Element;

    if-eqz v3, :cond_2

    .line 172
    check-cast v0, Lcom/google/gdata/model/Element;

    invoke-static {p0, v0, p3}, Lcom/google/gdata/util/ParseUtil;->parseElement(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/Element;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IFeed;

    .line 192
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IFeed;

    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Lcom/google/gdata/util/ServiceException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateFeed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 165
    :catch_1
    move-exception v0

    .line 166
    new-instance v1, Lcom/google/gdata/util/ServiceException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateFeed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v1, v0

    .line 174
    check-cast v1, Lcom/google/gdata/data/BaseFeed;

    .line 177
    if-nez p2, :cond_3

    .line 178
    invoke-static {v1, v2}, Lcom/google/gdata/util/ParseUtil;->getExtProfile(Lcom/google/gdata/data/BaseFeed;Z)Lcom/google/gdata/data/ExtensionProfile;

    move-result-object p2

    .line 181
    :cond_3
    invoke-static {p0, v1, p2}, Lcom/google/gdata/util/ParseUtil;->parseFeed(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 184
    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {v1}, Lcom/google/gdata/data/BaseFeed;->getAdaptedFeed()Lcom/google/gdata/data/BaseFeed;

    move-result-object v1

    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 187
    goto :goto_1

    :cond_4
    move-object v1, p1

    goto :goto_0
.end method
