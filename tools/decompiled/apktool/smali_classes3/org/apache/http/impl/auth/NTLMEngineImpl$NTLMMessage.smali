.class Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field private currentOutputPosition:I

.field private messageContents:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    .line 844
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    .line 848
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    .line 844
    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    .line 852
    const-string/jumbo v1, "ASCII"

    invoke-static {p1, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    .line 855
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v1, v1

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1000()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 856
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM message decoding error - packet too short"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 859
    :cond_1
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1000()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 860
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    aget-byte v1, v1, v0

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1000()[B

    move-result-object v2

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 861
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM message expected - instead got unrecognized bytes"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_2
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1000()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->readULong(I)I

    move-result v0

    .line 869
    if-eq v0, p2, :cond_3

    .line 870
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NTLM type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " message expected - instead got type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 874
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    .line 875
    return-void
.end method


# virtual methods
.method protected addByte(B)V
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    aput-byte p1, v0, v1

    .line 944
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    .line 945
    return-void
.end method

.method protected addBytes([B)V
    .locals 5

    .prologue
    .line 954
    if-nez p1, :cond_1

    .line 961
    :cond_0
    return-void

    .line 957
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p1, v0

    .line 958
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    aput-byte v2, v3, v4

    .line 959
    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected addULong(I)V
    .locals 1

    .prologue
    .line 971
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    .line 972
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    .line 973
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    .line 974
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    .line 975
    return-void
.end method

.method protected addUShort(I)V
    .locals 1

    .prologue
    .line 965
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    .line 966
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    .line 967
    return-void
.end method

.method protected getMessageLength()I
    .locals 1

    .prologue
    .line 887
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    return v0
.end method

.method protected getPreambleLength()I
    .locals 1

    .prologue
    .line 882
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1000()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method getResponse()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 985
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    if-le v0, v1, :cond_0

    .line 986
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    new-array v0, v0, [B

    .line 987
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    :goto_0
    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 990
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    goto :goto_0
.end method

.method protected prepareResponse(II)V
    .locals 1

    .prologue
    .line 930
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    .line 931
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    .line 932
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1000()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 933
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 934
    return-void
.end method

.method protected readByte(I)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    .line 893
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM: Message too short"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method protected readBytes([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 901
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM: Message too short"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    return-void
.end method

.method protected readSecurityBuffer(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 918
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1300([BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected readULong(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1200([BI)I

    move-result v0

    return v0
.end method

.method protected readUShort(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1100([BI)I

    move-result v0

    return v0
.end method
