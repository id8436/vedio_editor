.class public Ljavax/servlet/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static lStrings:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/HttpUtils;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestURL(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/StringBuffer;
    .locals 5

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v2

    .line 295
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const-string/jumbo v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string/jumbo v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x50

    if-ne v2, v4, :cond_1

    :cond_0
    const-string/jumbo v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1bb

    if-eq v2, v1, :cond_2

    .line 305
    :cond_1
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 306
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 312
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    return-object v0
.end method

.method private static parseName(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 234
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 236
    sparse-switch v1, :sswitch_data_0

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 234
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :sswitch_0
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 242
    :sswitch_1
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 249
    :catch_1
    move-exception v1

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method public static parsePostData(ILjavax/servlet/ServletInputStream;)Ljava/util/Hashtable;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 183
    if-gtz p0, :cond_0

    .line 184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 217
    :goto_0
    return-object v0

    .line 186
    :cond_0
    if-nez p1, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 193
    :cond_1
    new-array v1, p0, [B

    .line 198
    :cond_2
    sub-int v2, p0, v0

    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Ljavax/servlet/ServletInputStream;->read([BII)I

    move-result v2

    .line 199
    if-gtz v2, :cond_3

    .line 200
    sget-object v0, Ljavax/servlet/http/HttpUtils;->lStrings:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "err.io.short_read"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_3
    add-int/2addr v0, v2

    .line 204
    sub-int v2, p0, v0

    if-gtz v2, :cond_2

    .line 216
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "8859_1"

    invoke-direct {v0, v1, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 217
    invoke-static {v0}, Ljavax/servlet/http/HttpUtils;->parseQueryString(Ljava/lang/String;)Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseQueryString(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 100
    .line 102
    if-nez p0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :cond_0
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 106
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    new-instance v6, Ljava/util/StringTokenizer;

    const-string/jumbo v0, "&"

    invoke-direct {v6, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 110
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 111
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 116
    :cond_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljavax/servlet/http/HttpUtils;->parseName(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v7

    .line 117
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljavax/servlet/http/HttpUtils;->parseName(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 118
    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 120
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v2

    .line 121
    :goto_1
    array-length v9, v0

    if-ge v1, v9, :cond_2

    .line 122
    aget-object v9, v0, v1

    aput-object v9, v3, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_2
    array-length v0, v0

    aput-object v8, v3, v0

    move-object v0, v3

    .line 128
    :goto_2
    invoke-virtual {v4, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 126
    aput-object v8, v0, v2

    goto :goto_2

    .line 130
    :cond_4
    return-object v4
.end method
