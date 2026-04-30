.class public final Lcom/dropbox/core/android/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source "FixedSecureRandom.java"


# static fields
.field private static final BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

.field private static final VERSION_CODE_JELLY_BEAN_MR2:I = 0x12

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/dropbox/core/android/FixedSecureRandom;->getBuildFingerprintAndDeviceSerial()[B

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/android/FixedSecureRandom;->BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;

    invoke-direct {v0}, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;-><init>()V

    new-instance v1, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomProvider;

    invoke-direct {v1}, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomProvider;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    .line 61
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/dropbox/core/android/FixedSecureRandom;->generateSeed()[B

    move-result-object v0

    return-object v0
.end method

.method private static generateSeed()[B
    .locals 4

    .prologue
    .line 218
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 222
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 223
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 224
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    sget-object v2, Lcom/dropbox/core/android/FixedSecureRandom;->BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 226
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 227
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Failed to generate seed"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static get()Ljava/security/SecureRandom;
    .locals 2

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dropbox/core/android/FixedSecureRandom;

    invoke-direct {v0}, Lcom/dropbox/core/android/FixedSecureRandom;-><init>()V

    goto :goto_0
.end method

.method private static getBuildFingerprintAndDeviceSerial()[B
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 253
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    invoke-static {}, Lcom/dropbox/core/android/FixedSecureRandom;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UTF-8 encoding not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDeviceSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 243
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string/jumbo v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 245
    goto :goto_0
.end method
