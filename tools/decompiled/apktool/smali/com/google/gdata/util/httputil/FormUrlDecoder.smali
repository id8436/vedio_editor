.class public Lcom/google/gdata/util/httputil/FormUrlDecoder;
.super Ljava/lang/Object;
.source "FormUrlDecoder.java"


# static fields
.field private static parser:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<",
            "Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    sget-object v0, Lcom/google/gdata/util/parser/Chset;->ANYCHAR:Lcom/google/gdata/util/parser/Chset;

    new-instance v1, Lcom/google/gdata/util/parser/Chset;

    const-string/jumbo v2, "&="

    invoke-direct {v1, v2}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/gdata/util/parser/Chset;->difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v0

    .line 211
    sget-object v1, Lcom/google/gdata/util/parser/Chset;->ANYCHAR:Lcom/google/gdata/util/parser/Chset;

    new-instance v2, Lcom/google/gdata/util/parser/Chset;

    const-string/jumbo v3, "&"

    invoke-direct {v2, v3}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/gdata/util/parser/Chset;->difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v1

    .line 212
    invoke-virtual {v0}, Lcom/google/gdata/util/parser/Chset;->star()Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    new-instance v2, Lcom/google/gdata/util/httputil/FormUrlDecoder$NameAction;

    invoke-direct {v2, v4}, Lcom/google/gdata/util/httputil/FormUrlDecoder$NameAction;-><init>(Lcom/google/gdata/util/httputil/FormUrlDecoder$1;)V

    invoke-virtual {v0, v2}, Lcom/google/gdata/util/parser/Parser;->action(Lcom/google/gdata/util/parser/Callback;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    .line 213
    invoke-virtual {v1}, Lcom/google/gdata/util/parser/Chset;->plus()Lcom/google/gdata/util/parser/Parser;

    move-result-object v1

    new-instance v2, Lcom/google/gdata/util/httputil/FormUrlDecoder$ValueAction;

    invoke-direct {v2, v4}, Lcom/google/gdata/util/httputil/FormUrlDecoder$ValueAction;-><init>(Lcom/google/gdata/util/httputil/FormUrlDecoder$1;)V

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/parser/Parser;->action(Lcom/google/gdata/util/parser/Callback;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/google/gdata/util/parser/Parser;->optional()Lcom/google/gdata/util/parser/Parser;

    move-result-object v1

    .line 215
    new-instance v2, Lcom/google/gdata/util/parser/Chset;

    const/16 v3, 0x3d

    invoke-direct {v2, v3}, Lcom/google/gdata/util/parser/Chset;-><init>(C)V

    invoke-static {v2, v1}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lcom/google/gdata/util/parser/Parser;->optional()Lcom/google/gdata/util/parser/Parser;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/google/gdata/util/parser/Chset;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Lcom/google/gdata/util/parser/Chset;-><init>(C)V

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/parser/Parser;->list(Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/parser/Parser;->optional()Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/httputil/FormUrlDecoder;->parser:Lcom/google/gdata/util/parser/Parser;

    .line 219
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$100([CIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->decodeString([CIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeString([CIILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v1, Ljava/lang/String;

    sub-int v0, p2, p1

    invoke-direct {v1, p0, p1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 142
    :try_start_0
    invoke-static {p3}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->requiresByteLevelDecoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 161
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 171
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-static {v1, p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 171
    goto :goto_0
.end method

.method private static getCanonicalEncodingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    .line 119
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 128
    :cond_0
    :goto_0
    return-object p0

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Lcom/google/gdata/util/httputil/ParamMap;Ljava/lang/String;)Lcom/google/gdata/util/httputil/ParamMap;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    if-nez p1, :cond_0

    new-instance p1, Lcom/google/gdata/util/httputil/ParamMap;

    invoke-direct {p1}, Lcom/google/gdata/util/httputil/ParamMap;-><init>()V

    .line 107
    :cond_0
    :goto_0
    return-object p1

    .line 96
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 97
    new-instance v1, Lcom/google/gdata/util/httputil/FormUrlDecoder$1;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/httputil/FormUrlDecoder$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {p0, p2, v1}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->parseWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;)V

    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/httputil/ParamMap;

    move-object p1, v0

    goto :goto_0
.end method

.method public static parseWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;

    invoke-direct {v0, p1}, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;-><init>(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/google/gdata/util/httputil/FormUrlDecoder;->parser:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v1, p0, v0}, Lcom/google/gdata/util/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/Object;)I

    .line 76
    iget-object v0, v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;->params:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;

    .line 77
    iget-object v2, v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;->value:Ljava/lang/String;

    invoke-interface {p2, v2, v0}, Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;->handleParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static requiresByteLevelDecoding(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 180
    invoke-static {p0}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->getCanonicalEncodingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "SHIFT_JIS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "WINDOWS-31J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
