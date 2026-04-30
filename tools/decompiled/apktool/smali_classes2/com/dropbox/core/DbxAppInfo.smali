.class public Lcom/dropbox/core/DbxAppInfo;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxAppInfo.java"


# static fields
.field public static final KeyReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/DbxAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SecretReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final host:Lcom/dropbox/core/DbxHost;

.field private final key:Ljava/lang/String;

.field private final secret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/dropbox/core/DbxAppInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAppInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAppInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 174
    new-instance v0, Lcom/dropbox/core/DbxAppInfo$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAppInfo$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAppInfo;->KeyReader:Lcom/dropbox/core/json/JsonReader;

    .line 194
    new-instance v0, Lcom/dropbox/core/DbxAppInfo$3;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAppInfo$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAppInfo;->SecretReader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/dropbox/core/DbxAppInfo;->checkKeyArg(Ljava/lang/String;)V

    .line 32
    invoke-static {p2}, Lcom/dropbox/core/DbxAppInfo;->checkSecretArg(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/dropbox/core/DbxAppInfo;->key:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/dropbox/core/DbxAppInfo;->secret:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    iput-object v0, p0, Lcom/dropbox/core/DbxAppInfo;->host:Lcom/dropbox/core/DbxHost;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/dropbox/core/DbxAppInfo;->checkKeyArg(Ljava/lang/String;)V

    .line 46
    invoke-static {p2}, Lcom/dropbox/core/DbxAppInfo;->checkSecretArg(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/dropbox/core/DbxAppInfo;->key:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/dropbox/core/DbxAppInfo;->secret:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/dropbox/core/DbxAppInfo;->host:Lcom/dropbox/core/DbxHost;

    .line 51
    return-void
.end method

.method public static checkKeyArg(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 231
    invoke-static {p0}, Lcom/dropbox/core/DbxAppInfo;->getTokenPartError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad \'key\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkSecretArg(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 238
    invoke-static {p0}, Lcom/dropbox/core/DbxAppInfo;->getTokenPartError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad \'secret\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getKeyFormatError(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Lcom/dropbox/core/DbxAppInfo;->getTokenPartError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecretFormatError(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-static {p0}, Lcom/dropbox/core/DbxAppInfo;->getTokenPartError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenPartError(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    if-nez p0, :cond_0

    const-string/jumbo v0, "can\'t be null"

    .line 226
    :goto_0
    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "can\'t be empty"

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 221
    const/16 v2, 0x21

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7e

    if-le v1, v2, :cond_3

    .line 223
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid character at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "key"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/DbxAppInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 94
    const-string/jumbo v0, "secret"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/DbxAppInfo;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 95
    return-void
.end method

.method public getHost()Lcom/dropbox/core/DbxHost;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/DbxAppInfo;->host:Lcom/dropbox/core/DbxHost;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/DbxAppInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/DbxAppInfo;->secret:Ljava/lang/String;

    return-object v0
.end method
