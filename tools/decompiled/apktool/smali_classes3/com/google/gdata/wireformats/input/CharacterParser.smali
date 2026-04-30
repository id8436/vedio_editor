.class public abstract Lcom/google/gdata/wireformats/input/CharacterParser;
.super Lcom/google/gdata/wireformats/input/AbstractParser;
.source "CharacterParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/input/AbstractParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/wireformats/input/AbstractParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/google/gdata/wireformats/input/InputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_2

    .line 80
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/input/CharacterParser;->getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_3

    .line 83
    const-string/jumbo v0, "UTF-8"

    move-object v1, v0

    .line 85
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "utf-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Lcom/google/gdata/util/io/base/UnicodeReader;

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/util/io/base/UnicodeReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/gdata/wireformats/input/CharacterParser;->parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lcom/google/gdata/util/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "XML event source not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public abstract parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>(",
            "Ljava/io/Reader;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method
