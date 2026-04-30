.class Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# instance fields
.field protected challenge:[B

.field protected flags:I

.field protected target:Ljava/lang/String;

.field protected targetInfo:[B


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x14

    .line 1100
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>(Ljava/lang/String;I)V

    .line 1117
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    .line 1118
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->readBytes([BI)V

    .line 1120
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->readULong(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    .line 1122
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NTLM type 2 message has flags that make no sense: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_0
    iput-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;

    .line 1133
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getMessageLength()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 1134
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->readSecurityBuffer(I)[B

    move-result-object v0

    .line 1135
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 1137
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UnicodeLittleUnmarked"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :cond_1
    iput-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    .line 1147
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getMessageLength()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    .line 1148
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->readSecurityBuffer(I)[B

    move-result-object v0

    .line 1149
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 1150
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    .line 1153
    :cond_2
    return-void

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method getChallenge()[B
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    return-object v0
.end method

.method getFlags()I
    .locals 1

    .prologue
    .line 1172
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    return v0
.end method

.method getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method getTargetInfo()[B
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    return-object v0
.end method
