.class Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1004
    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 1007
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-static {p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1011
    if-eqz v1, :cond_1

    const-string/jumbo v3, "ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    .line 1012
    if-eqz v2, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    return-void

    :cond_1
    move-object v1, v0

    .line 1011
    goto :goto_0

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x28

    const/4 v1, 0x0

    .line 1027
    .line 1031
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->prepareResponse(II)V

    .line 1034
    const v0, -0x5df77dff

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    .line 1059
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1060
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1063
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    .line 1066
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1067
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1070
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    .line 1073
    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1075
    const/16 v0, 0xa28

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    .line 1077
    const/16 v0, 0xf00

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1087
    invoke-super {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
