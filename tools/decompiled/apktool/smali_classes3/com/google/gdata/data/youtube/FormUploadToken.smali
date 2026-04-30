.class public Lcom/google/gdata/data/youtube/FormUploadToken;
.super Ljava/lang/Object;
.source "FormUploadToken.java"


# instance fields
.field private final token:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gdata/data/youtube/FormUploadToken;->url:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/google/gdata/data/youtube/FormUploadToken;->token:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/google/gdata/data/youtube/FormUploadToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;-><init>(Lcom/google/gdata/data/youtube/FormUploadToken$1;)V

    .line 73
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string/jumbo v2, ""

    const-string/jumbo v3, "response"

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v1, "Missing or empty \'url\' element in response"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->getToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 78
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v1, "Missing or empty \'token\' element in response"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    new-instance v1, Lcom/google/gdata/data/youtube/FormUploadToken;

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/data/youtube/FormUploadToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/gdata/data/youtube/FormUploadToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/gdata/data/youtube/FormUploadToken;->url:Ljava/lang/String;

    return-object v0
.end method
