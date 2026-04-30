.class final Lorg/apache/http/impl/auth/NTLMEngineImpl;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"

# interfaces
.implements Lorg/apache/http/impl/auth/NTLMEngine;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field static final DEFAULT_CHARSET:Ljava/lang/String; = "ASCII"

.field protected static final FLAG_DOMAIN_PRESENT:I = 0x1000

.field protected static final FLAG_REQUEST_128BIT_KEY_EXCH:I = 0x20000000

.field protected static final FLAG_REQUEST_56BIT_ENCRYPTION:I = -0x80000000

.field protected static final FLAG_REQUEST_ALWAYS_SIGN:I = 0x8000

.field protected static final FLAG_REQUEST_EXPLICIT_KEY_EXCH:I = 0x40000000

.field protected static final FLAG_REQUEST_LAN_MANAGER_KEY:I = 0x80

.field protected static final FLAG_REQUEST_NTLM2_SESSION:I = 0x80000

.field protected static final FLAG_REQUEST_NTLMv1:I = 0x200

.field protected static final FLAG_REQUEST_SEAL:I = 0x20

.field protected static final FLAG_REQUEST_SIGN:I = 0x10

.field protected static final FLAG_REQUEST_TARGET:I = 0x4

.field protected static final FLAG_REQUEST_UNICODE_ENCODING:I = 0x1

.field protected static final FLAG_REQUEST_VERSION:I = 0x2000000

.field protected static final FLAG_TARGETINFO_PRESENT:I = 0x800000

.field protected static final FLAG_WORKSTATION_PRESENT:I = 0x2000

.field private static final RND_GEN:Ljava/security/SecureRandom;

.field private static final SIGNATURE:[B


# instance fields
.field private credentialCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v0, 0x0

    .line 78
    :try_start_0
    const-string/jumbo v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    sput-object v0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    .line 94
    const-string/jumbo v0, "NTLMSSP"

    const-string/jumbo v1, "ASCII"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    .line 96
    sget-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    sget-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    array-length v0, v0

    aput-byte v3, v1, v0

    .line 98
    return-void

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string/jumbo v0, "ASCII"

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;

    .line 1589
    return-void
.end method

.method static F(III)I
    .locals 2

    .prologue
    .line 1403
    and-int v0, p0, p1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method static G(III)I
    .locals 2

    .prologue
    .line 1407
    and-int v0, p0, p1

    and-int v1, p0, p2

    or-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method static H(III)I
    .locals 1

    .prologue
    .line 1411
    xor-int v0, p0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method static RC4([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 553
    :try_start_0
    const-string/jumbo v0, "RC4"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 554
    const/4 v1, 0x1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "RC4"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 555
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->makeRandomChallenge()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->makeSecondaryKey()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()[B
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    return-object v0
.end method

.method static synthetic access$1100([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readUShort([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readULong([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300([BI)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readSecurityBuffer([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->convertHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->convertDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmv2Hash(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700([B[B[B)[B
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createBlob([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800([B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmv2Response([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900([BI)Ljava/security/Key;
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method private static convertDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createBlob([B[B[B)[B
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 767
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 768
    new-array v1, v3, [B

    fill-array-data v1, :array_1

    .line 769
    new-array v2, v3, [B

    fill-array-data v2, :array_2

    .line 770
    new-array v3, v3, [B

    fill-array-data v3, :array_3

    .line 771
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    array-length v5, p2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, p1

    add-int/2addr v4, v5

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 774
    array-length v5, v0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    array-length v0, v0

    add-int/2addr v0, v6

    .line 776
    array-length v5, v1

    invoke-static {v1, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    array-length v1, v1

    add-int/2addr v0, v1

    .line 778
    array-length v1, p2

    invoke-static {p2, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    array-length v1, p2

    add-int/2addr v0, v1

    .line 780
    const/16 v1, 0x8

    invoke-static {p0, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    add-int/lit8 v0, v0, 0x8

    .line 782
    array-length v1, v2

    invoke-static {v2, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    array-length v1, v2

    add-int/2addr v0, v1

    .line 784
    array-length v1, p1

    invoke-static {p1, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    array-length v1, p1

    add-int/2addr v0, v1

    .line 786
    array-length v1, v3

    invoke-static {v3, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    array-length v1, v3

    add-int/2addr v0, v1

    .line 788
    return-object v4

    .line 767
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 768
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 769
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 770
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static createDESKey([BI)Ljava/security/Key;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 804
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 805
    const/4 v1, 0x7

    invoke-static {p0, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 807
    aget-byte v2, v0, v3

    aput-byte v2, v1, v3

    .line 808
    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x7

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 809
    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 810
    aget-byte v2, v0, v5

    shl-int/lit8 v2, v2, 0x5

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 811
    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, v0, v7

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 812
    const/4 v2, 0x5

    aget-byte v3, v0, v7

    shl-int/lit8 v3, v3, 0x3

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 813
    const/4 v2, 0x6

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x2

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 814
    const/4 v2, 0x7

    const/4 v3, 0x6

    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 815
    invoke-static {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->oddParity([B)V

    .line 816
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "DES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static hmacMD5([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 545
    invoke-virtual {v0, p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 546
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object v0

    return-object v0
.end method

.method private static lmHash(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 612
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 613
    array-length v1, v0

    const/16 v2, 0xe

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 614
    const/16 v2, 0xe

    new-array v2, v2, [B

    .line 615
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    .line 617
    const/4 v1, 0x7

    invoke-static {v2, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v1

    .line 618
    const-string/jumbo v2, "KGS!@#$%"

    const-string/jumbo v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 619
    const-string/jumbo v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 620
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 621
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 622
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 623
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 624
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 625
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    return-object v2

    .line 628
    :catch_0
    move-exception v0

    .line 629
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static lmResponse([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 707
    const/16 v0, 0x15

    :try_start_0
    new-array v0, v0, [B

    .line 708
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v1

    .line 710
    const/4 v2, 0x7

    invoke-static {v0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v2

    .line 711
    const/16 v3, 0xe

    invoke-static {v0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    .line 712
    const-string/jumbo v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 713
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 714
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 715
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 716
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 717
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 718
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 719
    const/16 v3, 0x18

    new-array v3, v3, [B

    .line 720
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    const/4 v1, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v4, 0x8

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    return-object v3

    .line 724
    :catch_0
    move-exception v0

    .line 725
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static lmv2Hash(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 662
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 664
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 665
    if-eqz p0, :cond_0

    .line 666
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 668
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode not supported! "

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

.method private static lmv2Response([B[B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 745
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 746
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 747
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 748
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object v0

    .line 749
    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 750
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    array-length v0, v0

    array-length v2, p2

    invoke-static {p2, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    return-object v1
.end method

.method private static makeRandomChallenge()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 239
    sget-object v0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "Random generator not available"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 243
    sget-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    monitor-enter v1

    .line 244
    :try_start_0
    sget-object v2, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 245
    monitor-exit v1

    .line 246
    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static makeSecondaryKey()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "Random generator not available"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 255
    sget-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    monitor-enter v1

    .line 256
    :try_start_0
    sget-object v2, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 257
    monitor-exit v1

    .line 258
    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static ntlm2SessionResponse([B[B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 585
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 586
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 587
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 588
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 590
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 591
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    invoke-static {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    instance-of v1, v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    if-eqz v1, :cond_0

    .line 595
    check-cast v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    throw v0

    .line 597
    :cond_0
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static ntlmHash(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 644
    :try_start_0
    const-string/jumbo v0, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 645
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;

    invoke-direct {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;-><init>()V

    .line 646
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->update([B)V

    .line 647
    invoke-virtual {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->getOutput()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode not supported: "

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

.method private static ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 683
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 685
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 686
    if-eqz p0, :cond_0

    .line 687
    const-string/jumbo v1, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 689
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode not supported! "

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

.method private static oddParity([B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 826
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 827
    aget-byte v2, p0, v0

    .line 828
    ushr-int/lit8 v3, v2, 0x7

    ushr-int/lit8 v4, v2, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 830
    :goto_1
    if-eqz v2, :cond_1

    .line 831
    aget-byte v2, p0, v0

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 826
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 828
    goto :goto_1

    .line 833
    :cond_1
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    goto :goto_2

    .line 836
    :cond_2
    return-void
.end method

.method private static readSecurityBuffer([BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readUShort([BI)I

    move-result v0

    .line 227
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readULong([BI)I

    move-result v1

    .line 228
    array-length v2, p0

    add-int v3, v1, v0

    if-ge v2, v3, :cond_0

    .line 229
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM authentication - buffer too small for data item"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    new-array v2, v0, [B

    .line 233
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    return-object v2
.end method

.method private static readULong([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 211
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_0

    .line 212
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM authentication - buffer too small for DWORD"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static readUShort([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 219
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    .line 220
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM authentication - buffer too small for WORD"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static rotintlft(II)I
    .locals 2

    .prologue
    .line 1415
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    if-nez p0, :cond_1

    .line 191
    const/4 p0, 0x0

    .line 197
    :cond_0
    :goto_0
    return-object p0

    .line 193
    :cond_1
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 194
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static writeULong([BII)V
    .locals 2

    .prologue
    .line 1396
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    .line 1397
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1398
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1399
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1400
    return-void
.end method


# virtual methods
.method public generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 1656
    invoke-virtual {p0, p2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 1665
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;

    invoke-direct {v0, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getChallenge()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getFlags()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getTargetInfo()[B

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCredentialCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;

    return-object v0
.end method

.method final getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0, p4, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 124
    :cond_1
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getChallenge()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getFlags()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getTargetInfo()[B

    move-result-object v8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;

    invoke-direct {v0, p2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;

    move-object v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setCredentialCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;

    .line 186
    return-void
.end method
