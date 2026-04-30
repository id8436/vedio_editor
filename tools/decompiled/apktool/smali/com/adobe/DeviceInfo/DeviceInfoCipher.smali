.class final Lcom/adobe/DeviceInfo/DeviceInfoCipher;
.super Ljava/lang/Object;
.source "DeviceInfoProvider.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static sharedInstance:Lcom/adobe/DeviceInfo/DeviceInfoCipher;


# instance fields
.field private final _seed:Ljava/lang/String;

.field sks:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->sharedInstance:Lcom/adobe/DeviceInfo/DeviceInfoCipher;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "EE675CF6-0C14-42F6-90F4-B70EA27F"

    iput-object v0, p0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->_seed:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->sks:Ljavax/crypto/spec/SecretKeySpec;

    .line 39
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "EE675CF6-0C14-42F6-90F4-B70EA27F"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string/jumbo v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->sks:Ljavax/crypto/spec/SecretKeySpec;

    .line 40
    return-void
.end method

.method static getSharedCipher()Lcom/adobe/DeviceInfo/DeviceInfoCipher;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->sharedInstance:Lcom/adobe/DeviceInfo/DeviceInfoCipher;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;

    invoke-direct {v0}, Lcom/adobe/DeviceInfo/DeviceInfoCipher;-><init>()V

    sput-object v0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->sharedInstance:Lcom/adobe/DeviceInfo/DeviceInfoCipher;

    .line 48
    :cond_0
    sget-object v0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->sharedInstance:Lcom/adobe/DeviceInfo/DeviceInfoCipher;

    return-object v0
.end method


# virtual methods
.method _appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3

    .prologue
    .line 55
    const-string/jumbo v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "0123456789ABCDEF"

    and-int/lit8 v2, p2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    return-void
.end method

.method public _toByte(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 75
    new-array v2, v1, [B

    .line 76
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object v2
.end method

.method _tohex([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 66
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 68
    aget-byte v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->_appendHex(Ljava/lang/StringBuffer;B)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    .line 86
    :try_start_0
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 87
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->sks:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->_tohex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 94
    :goto_0
    return-object p1

    .line 90
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
