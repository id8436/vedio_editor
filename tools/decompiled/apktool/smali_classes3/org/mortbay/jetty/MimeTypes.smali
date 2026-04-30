.class public Lorg/mortbay/jetty/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field public static final CACHE:Lorg/mortbay/io/BufferCache;

.field public static final FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final FORM_ENCODED_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final FORM_ENCODED_ORDINAL:I = 0x1

.field public static final MESSAGE_HTTP:Ljava/lang/String; = "message/http"

.field public static final MESSAGE_HTTP_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final MESSAGE_HTTP_ORDINAL:I = 0x2

.field public static final MULTIPART_BYTERANGES:Ljava/lang/String; = "multipart/byteranges"

.field public static final MULTIPART_BYTERANGES_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final MULTIPART_BYTERANGES_ORDINAL:I = 0x3

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_HTML_8859_1:Ljava/lang/String; = "text/html; charset=iso-8859-1"

.field public static final TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_8859_1_ORDINAL:I = 0x7

.field public static final TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_ORDINAL:I = 0x4

.field public static final TEXT_HTML_UTF_8:Ljava/lang/String; = "text/html; charset=utf-8"

.field public static final TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_UTF_8_ORDINAL:I = 0xa

.field public static final TEXT_JSON:Ljava/lang/String; = "text/json"

.field public static final TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_JSON_ORDINAL:I = 0xd

.field public static final TEXT_JSON_UTF_8:Ljava/lang/String; = "text/json;charset=UTF-8"

.field public static final TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_JSON_UTF_8_ORDINAL:I = 0xe

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_PLAIN_8859_1:Ljava/lang/String; = "text/plain; charset=iso-8859-1"

.field public static final TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_8859_1_ORDINAL:I = 0x8

.field public static final TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_ORDINAL:I = 0x5

.field public static final TEXT_PLAIN_UTF_8:Ljava/lang/String; = "text/plain; charset=utf-8"

.field public static final TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_UTF_8_ORDINAL:I = 0xb

.field public static final TEXT_XML:Ljava/lang/String; = "text/xml"

.field public static final TEXT_XML_8859_1:Ljava/lang/String; = "text/xml; charset=iso-8859-1"

.field public static final TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_8859_1_ORDINAL:I = 0x9

.field public static final TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_ORDINAL:I = 0x6

.field public static final TEXT_XML_UTF_8:Ljava/lang/String; = "text/xml; charset=utf-8"

.field public static final TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_UTF_8_ORDINAL:I = 0xc

.field private static final __dftMimeMap:Ljava/util/Map;

.field private static final __encodings:Ljava/util/Map;

.field private static __index:I


# instance fields
.field private _mimeMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    const/16 v0, 0xf

    sput v0, Lorg/mortbay/jetty/MimeTypes;->__index:I

    .line 76
    new-instance v0, Lorg/mortbay/io/BufferCache;

    invoke-direct {v0}, Lorg/mortbay/io/BufferCache;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    .line 79
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->FORM_ENCODED_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 80
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string/jumbo v1, "message/http"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->MESSAGE_HTTP_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 81
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string/jumbo v1, "multipart/byteranges"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 83
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string/jumbo v1, "text/html"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 84
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string/jumbo v1, "text/plain"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 85
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string/jumbo v1, "text/xml"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 87
    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "text/html; charset=iso-8859-1"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 88
    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "text/plain; charset=iso-8859-1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 89
    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "text/xml; charset=iso-8859-1"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 90
    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "text/html; charset=utf-8"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 91
    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "text/plain; charset=utf-8"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 92
    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "text/xml; charset=utf-8"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 94
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string/jumbo v1, "text/json"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 95
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string/jumbo v1, "text/json;charset=UTF-8"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/MimeTypes;->__encodings:Ljava/util/Map;

    .line 106
    :try_start_0
    const-string/jumbo v0, "org/mortbay/jetty/mime"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 108
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    sget-object v4, Lorg/mortbay/jetty/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/mortbay/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lorg/mortbay/jetty/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 123
    :cond_0
    :try_start_1
    const-string/jumbo v0, "org/mortbay/jetty/encoding"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 125
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/jetty/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 128
    sget-object v3, Lorg/mortbay/jetty/MimeTypes;->__encodings:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 131
    :catch_1
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 138
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "ISO-8859-1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 139
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "ISO_8859_1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 140
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "iso-8859-1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 141
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "ISO-8859-1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 142
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "ISO_8859_1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 143
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "iso-8859-1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 144
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "ISO-8859-1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 145
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "ISO_8859_1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 146
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "iso-8859-1"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 148
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "UTF-8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 149
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "UTF8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 150
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "utf8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 151
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "utf-8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 152
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "UTF-8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 153
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "UTF8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 154
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "utf-8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 155
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "UTF-8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 156
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "utf8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 157
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "UTF8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 158
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "utf-8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 160
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "UTF-8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 161
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "utf8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 162
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "UTF8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 163
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string/jumbo v1, "utf-8"

    sget-object v2, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public static getCharsetFromContentType(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/16 v11, 0x22

    const/16 v10, 0x20

    const/16 v6, 0xa

    const/4 v1, 0x0

    .line 269
    instance-of v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 271
    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_0
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    .line 288
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v7

    move v0, v1

    move v3, v1

    move v5, v1

    .line 292
    :goto_0
    if-ge v4, v7, :cond_f

    .line 294
    invoke-interface {p0, v4}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v8

    .line 296
    if-eqz v0, :cond_2

    if-eq v5, v6, :cond_2

    .line 298
    if-ne v11, v8, :cond_1

    move v0, v1

    .line 292
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    :pswitch_0
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    .line 348
    :goto_2
    return-object v0

    .line 283
    :pswitch_1
    const-string/jumbo v0, "UTF-8"

    goto :goto_2

    .line 303
    :cond_2
    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 306
    :pswitch_2
    if-ne v11, v8, :cond_3

    move v0, v2

    .line 309
    goto :goto_1

    .line 311
    :cond_3
    const/16 v9, 0x3b

    if-ne v9, v8, :cond_1

    move v5, v2

    .line 312
    goto :goto_1

    .line 315
    :pswitch_3
    const/16 v9, 0x63

    if-ne v9, v8, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    if-eq v10, v8, :cond_1

    move v5, v1

    goto :goto_1

    .line 316
    :pswitch_4
    const/16 v5, 0x68

    if-ne v5, v8, :cond_5

    const/4 v5, 0x3

    goto :goto_1

    :cond_5
    move v5, v1

    goto :goto_1

    .line 317
    :pswitch_5
    const/16 v5, 0x61

    if-ne v5, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_1

    :cond_6
    move v5, v1

    goto :goto_1

    .line 318
    :pswitch_6
    const/16 v5, 0x72

    if-ne v5, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_1

    :cond_7
    move v5, v1

    goto :goto_1

    .line 319
    :pswitch_7
    const/16 v5, 0x73

    if-ne v5, v8, :cond_8

    const/4 v5, 0x6

    goto :goto_1

    :cond_8
    move v5, v1

    goto :goto_1

    .line 320
    :pswitch_8
    const/16 v5, 0x65

    if-ne v5, v8, :cond_9

    const/4 v5, 0x7

    goto :goto_1

    :cond_9
    move v5, v1

    goto :goto_1

    .line 321
    :pswitch_9
    const/16 v5, 0x74

    if-ne v5, v8, :cond_a

    const/16 v5, 0x8

    goto :goto_1

    :cond_a
    move v5, v1

    goto :goto_1

    .line 323
    :pswitch_a
    const/16 v9, 0x3d

    if-ne v9, v8, :cond_b

    const/16 v5, 0x9

    goto :goto_1

    :cond_b
    if-eq v10, v8, :cond_1

    move v5, v1

    goto :goto_1

    .line 326
    :pswitch_b
    if-eq v10, v8, :cond_1

    .line 328
    if-ne v11, v8, :cond_c

    .line 331
    add-int/lit8 v0, v4, 0x1

    move v3, v0

    move v5, v6

    move v0, v2

    .line 333
    goto :goto_1

    :cond_c
    move v3, v4

    move v5, v6

    .line 337
    goto :goto_1

    .line 340
    :pswitch_c
    if-nez v0, :cond_d

    const/16 v9, 0x3b

    if-eq v9, v8, :cond_e

    if-eq v10, v8, :cond_e

    :cond_d
    if-eqz v0, :cond_1

    if-ne v11, v8, :cond_1

    .line 342
    :cond_e
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    sub-int v1, v4, v3

    invoke-interface {p0, v3, v1}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 346
    :cond_f
    if-ne v5, v6, :cond_10

    .line 347
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    sub-int v1, v4, v3

    invoke-interface {p0, v3, v1}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 348
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 271
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 303
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static declared-synchronized normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;
    .locals 4

    .prologue
    .line 260
    const-class v1, Lorg/mortbay/jetty/MimeTypes;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 261
    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    sget v2, Lorg/mortbay/jetty/MimeTypes;->__index:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/mortbay/jetty/MimeTypes;->__index:I

    invoke-virtual {v0, p0, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 263
    :cond_0
    monitor-exit v1

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/mortbay/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lorg/mortbay/jetty/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;
    .locals 4

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    if-eqz p1, :cond_1

    .line 217
    const/4 v1, -0x1

    .line 218
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 220
    const-string/jumbo v2, "."

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 222
    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 233
    :cond_1
    if-nez v0, :cond_3

    .line 235
    iget-object v1, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 236
    iget-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/Buffer;

    .line 237
    :cond_2
    if-nez v0, :cond_3

    .line 238
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/Buffer;

    .line 241
    :cond_3
    return-object v0

    .line 225
    :cond_4
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    iget-object v3, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 227
    iget-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/Buffer;

    .line 228
    :cond_5
    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/Buffer;

    goto :goto_0
.end method

.method public declared-synchronized getMimeMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMimeMap(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/jetty/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_1
    iput-object v1, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    goto :goto_0
.end method
