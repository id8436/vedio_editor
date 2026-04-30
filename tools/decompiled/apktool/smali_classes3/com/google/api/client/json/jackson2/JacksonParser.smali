.class final Lcom/google/api/client/json/jackson2/JacksonParser;
.super Lcom/google/api/client/json/JsonParser;
.source "JacksonParser.java"


# instance fields
.field private final factory:Lcom/google/api/client/json/jackson2/JacksonFactory;

.field private final parser:Lcom/d/a/a/k;


# direct methods
.method constructor <init>(Lcom/google/api/client/json/jackson2/JacksonFactory;Lcom/d/a/a/k;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->factory:Lcom/google/api/client/json/jackson2/JacksonFactory;

    .line 45
    iput-object p2, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->close()V

    .line 51
    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->o()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getByteValue()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->k()B

    move-result v0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentToken()Lcom/google/api/client/json/JsonToken;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/json/jackson2/JacksonFactory;->convert(Lcom/d/a/a/o;)Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->r()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->q()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/client/json/jackson2/JacksonParser;->getFactory()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Lcom/google/api/client/json/jackson2/JacksonFactory;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->factory:Lcom/google/api/client/json/jackson2/JacksonFactory;

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->p()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->m()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShortValue()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->l()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/google/api/client/json/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/json/jackson2/JacksonFactory;->convert(Lcom/d/a/a/o;)Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public skipChildren()Lcom/google/api/client/json/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonParser;->parser:Lcom/d/a/a/k;

    invoke-virtual {v0}, Lcom/d/a/a/k;->b()Lcom/d/a/a/k;

    .line 71
    return-object p0
.end method
