.class public Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field protected final challenge:[B

.field protected clientChallenge:[B

.field protected clientChallenge2:[B

.field protected final domain:Ljava/lang/String;

.field protected lanManagerSessionKey:[B

.field protected lm2SessionResponse:[B

.field protected lmHash:[B

.field protected lmResponse:[B

.field protected lmUserSessionKey:[B

.field protected lmv2Hash:[B

.field protected lmv2Response:[B

.field protected ntlm2SessionResponse:[B

.field protected ntlm2SessionResponseUserSessionKey:[B

.field protected ntlmHash:[B

.field protected ntlmResponse:[B

.field protected ntlmUserSessionKey:[B

.field protected ntlmv2Blob:[B

.field protected ntlmv2Hash:[B

.field protected ntlmv2Response:[B

.field protected ntlmv2UserSessionKey:[B

.field protected final password:Ljava/lang/String;

.field protected secondaryKey:[B

.field protected final target:Ljava/lang/String;

.field protected final targetInformation:[B

.field protected timestamp:[B

.field protected final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V
    .locals 11

    .prologue
    .line 312
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B[B[B)V

    .line 313
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B[B[B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmHash:[B

    .line 278
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmResponse:[B

    .line 279
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmHash:[B

    .line 280
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmResponse:[B

    .line 281
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Hash:[B

    .line 282
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmv2Hash:[B

    .line 283
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmv2Response:[B

    .line 284
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Blob:[B

    .line 285
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Response:[B

    .line 286
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlm2SessionResponse:[B

    .line 287
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lm2SessionResponse:[B

    .line 288
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmUserSessionKey:[B

    .line 289
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmUserSessionKey:[B

    .line 290
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2UserSessionKey:[B

    .line 291
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlm2SessionResponseUserSessionKey:[B

    .line 292
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lanManagerSessionKey:[B

    .line 298
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->domain:Ljava/lang/String;

    .line 299
    iput-object p5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->target:Ljava/lang/String;

    .line 300
    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->user:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->password:Ljava/lang/String;

    .line 302
    iput-object p4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    .line 303
    iput-object p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->targetInformation:[B

    .line 304
    iput-object p7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->clientChallenge:[B

    .line 305
    iput-object p8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->clientChallenge2:[B

    .line 306
    iput-object p9, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->secondaryKey:[B

    .line 307
    iput-object p10, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->timestamp:[B

    .line 308
    return-void
.end method


# virtual methods
.method public getClientChallenge()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->clientChallenge:[B

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$000()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->clientChallenge:[B

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->clientChallenge:[B

    return-object v0
.end method

.method public getClientChallenge2()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->clientChallenge2:[B

    if-nez v0, :cond_0

    .line 328
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$000()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->clientChallenge2:[B

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->clientChallenge2:[B

    return-object v0
.end method

.method public getLM2SessionResponse()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lm2SessionResponse:[B

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getClientChallenge()[B

    move-result-object v0

    .line 453
    const/16 v1, 0x18

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lm2SessionResponse:[B

    .line 454
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lm2SessionResponse:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lm2SessionResponse:[B

    array-length v0, v0

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lm2SessionResponse:[B

    array-length v2, v2

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lm2SessionResponse:[B

    return-object v0
.end method

.method public getLMHash()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmHash:[B

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->password:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$200(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmHash:[B

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmHash:[B

    return-object v0
.end method

.method public getLMResponse()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmResponse:[B

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMHash()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    invoke-static {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$300([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmResponse:[B

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmResponse:[B

    return-object v0
.end method

.method public getLMUserSessionKey()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 463
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmUserSessionKey:[B

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMHash()[B

    move-result-object v0

    .line 465
    new-array v1, v4, [B

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmUserSessionKey:[B

    .line 466
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmUserSessionKey:[B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmUserSessionKey:[B

    invoke-static {v0, v3, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmUserSessionKey:[B

    return-object v0
.end method

.method public getLMv2Hash()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmv2Hash:[B

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->domain:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->user:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMHash()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$500(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmv2Hash:[B

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmv2Hash:[B

    return-object v0
.end method

.method public getLMv2Response()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmv2Response:[B

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Hash()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getClientChallenge()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$800([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmv2Response:[B

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lmv2Response:[B

    return-object v0
.end method

.method public getLanManagerSessionKey()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lanManagerSessionKey:[B

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMHash()[B

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v1

    .line 517
    const/16 v2, 0xe

    :try_start_0
    new-array v2, v2, [B

    .line 518
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    const/16 v0, 0x8

    array-length v3, v2

    const/16 v4, -0x43

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 520
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$900([BI)Ljava/security/Key;

    move-result-object v0

    .line 521
    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$900([BI)Ljava/security/Key;

    move-result-object v2

    .line 522
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 523
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    const-string/jumbo v1, "DES/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 525
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 526
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 527
    const-string/jumbo v1, "DES/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 528
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 529
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 530
    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lanManagerSessionKey:[B

    .line 531
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lanManagerSessionKey:[B

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lanManagerSessionKey:[B

    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->lanManagerSessionKey:[B

    return-object v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNTLM2SessionResponse()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlm2SessionResponse:[B

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMHash()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getClientChallenge()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->ntlm2SessionResponse([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlm2SessionResponse:[B

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlm2SessionResponse:[B

    return-object v0
.end method

.method public getNTLM2SessionResponseUserSessionKey()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 499
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlm2SessionResponseUserSessionKey:[B

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B

    move-result-object v0

    .line 501
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object v1

    .line 502
    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    array-length v2, v2

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 503
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    array-length v3, v3

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    invoke-static {v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->hmacMD5([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlm2SessionResponseUserSessionKey:[B

    .line 507
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlm2SessionResponseUserSessionKey:[B

    return-object v0
.end method

.method public getNTLMHash()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmHash:[B

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->password:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$400(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmHash:[B

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmHash:[B

    return-object v0
.end method

.method public getNTLMResponse()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmResponse:[B

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMHash()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    invoke-static {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$300([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmResponse:[B

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmResponse:[B

    return-object v0
.end method

.method public getNTLMUserSessionKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmUserSessionKey:[B

    if-nez v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMHash()[B

    move-result-object v0

    .line 477
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;

    invoke-direct {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;-><init>()V

    .line 478
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->update([B)V

    .line 479
    invoke-virtual {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->getOutput()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmUserSessionKey:[B

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmUserSessionKey:[B

    return-object v0
.end method

.method public getNTLMv2Blob()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Blob:[B

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getClientChallenge2()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->targetInformation:[B

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getTimestamp()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$700([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Blob:[B

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Blob:[B

    return-object v0
.end method

.method public getNTLMv2Hash()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Hash:[B

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->domain:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->user:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMHash()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$600(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Hash:[B

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Hash:[B

    return-object v0
.end method

.method public getNTLMv2Response()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Response:[B

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Hash()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->challenge:[B

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Blob()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$800([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Response:[B

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2Response:[B

    return-object v0
.end method

.method public getNTLMv2UserSessionKey()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 487
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2UserSessionKey:[B

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Hash()[B

    move-result-object v0

    .line 489
    new-array v1, v4, [B

    .line 490
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    invoke-static {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->hmacMD5([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2UserSessionKey:[B

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->ntlmv2UserSessionKey:[B

    return-object v0
.end method

.method public getSecondaryKey()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->secondaryKey:[B

    if-nez v0, :cond_0

    .line 337
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$100()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->secondaryKey:[B

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->secondaryKey:[B

    return-object v0
.end method

.method public getTimestamp()[B
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 398
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->timestamp:[B

    if-nez v0, :cond_0

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 400
    const-wide v2, 0xa9730b66800L

    add-long/2addr v0, v2

    .line 401
    const-wide/16 v2, 0x2710

    mul-long/2addr v2, v0

    .line 403
    new-array v0, v5, [B

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->timestamp:[B

    .line 404
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 405
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->timestamp:[B

    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 406
    ushr-long/2addr v2, v5

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->timestamp:[B

    return-object v0
.end method
