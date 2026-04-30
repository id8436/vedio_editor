.class public Lc/a/a/a/a/b/m;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Boolean;

.field private static final c:[C

.field private static d:J

.field private static e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    sput-object v2, Lc/a/a/a/a/b/m;->b:Ljava/lang/Boolean;

    .line 104
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc/a/a/a/a/b/m;->c:[C

    .line 117
    const-wide/16 v0, -0x1

    sput-wide v0, Lc/a/a/a/a/b/m;->d:J

    .line 474
    sput-object v2, Lc/a/a/a/a/b/m;->e:Ljava/lang/Boolean;

    .line 722
    new-instance v0, Lc/a/a/a/a/b/n;

    invoke-direct {v0}, Lc/a/a/a/a/b/n;-><init>()V

    sput-object v0, Lc/a/a/a/a/b/m;->a:Ljava/util/Comparator;

    return-void

    .line 104
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lc/a/a/a/a/b/o;->a()Lc/a/a/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/b/o;->ordinal()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 551
    invoke-static {p0}, Lc/a/a/a/a/b/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)I
    .locals 6

    .prologue
    const-wide v4, 0x4058c00000000000L    # 99.0

    .line 631
    invoke-static {p0}, Lc/a/a/a/a/b/m;->c(Landroid/content/Context;)F

    move-result v0

    .line 633
    if-nez p1, :cond_0

    .line 634
    const/4 v0, 0x1

    .line 645
    :goto_0
    return v0

    .line 637
    :cond_0
    if-eqz p1, :cond_1

    float-to-double v2, v0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 638
    const/4 v0, 0x3

    goto :goto_0

    .line 641
    :cond_1
    if-eqz p1, :cond_2

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 642
    const/4 v0, 0x2

    goto :goto_0

    .line 645
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 4

    .prologue
    .line 260
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 262
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 264
    const/4 v1, 0x0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 269
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "com.crashlytics.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 788
    if-gez p0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value must be zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%1$10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    const-string/jumbo v3, "\\s*:\\s*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 139
    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 140
    array-length v3, v1

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const/4 v3, 0x1

    aget-object v0, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    :cond_1
    const-string/jumbo v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 152
    :cond_2
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 147
    :goto_1
    :try_start_2
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    const-string/jumbo v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    const-string/jumbo v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 146
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 316
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 320
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 321
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Could not calculate hash for app icon."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    .line 324
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a/a/b/m;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lc/a/a/a/a/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lc/a/a/a/a/b/m;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 683
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 685
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 686
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 687
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lc/a/a/a/a/b/m;->c:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 688
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lc/a/a/a/a/b/m;->c:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 333
    .line 336
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 346
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 348
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a/a/b/m;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create hashing algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", returning empty string."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 361
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 389
    :goto_0
    return-object v0

    .line 366
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    array-length v3, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p0, v0

    .line 370
    if-eqz v4, :cond_2

    .line 372
    const-string/jumbo v5, "-"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 385
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {v0}, Lc/a/a/a/a/b/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 662
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_0

    .line 663
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Key must be at least 32 bytes."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "AES/ECB/PKCS7Padding"

    invoke-direct {v0, v1, v2, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 668
    :try_start_0
    const-string/jumbo v1, "AES/ECB/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 677
    invoke-virtual {v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 678
    return-object v1

    .line 669
    :catch_0
    move-exception v0

    .line 670
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Could not create Cipher for AES/ECB/PKCS7Padding - should never happen."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 468
    invoke-static {p0}, Lc/a/a/a/a/b/m;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    invoke-interface {v0, p1, v1, p3}, Lc/a/a/a/t;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 448
    invoke-static {p0}, Lc/a/a/a/a/b/m;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 458
    invoke-static {p0}, Lc/a/a/a/a/b/m;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 907
    if-eqz p0, :cond_0

    .line 909
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 910
    :catch_0
    move-exception v0

    .line 911
    throw v0

    .line 912
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 756
    if-eqz p0, :cond_0

    .line 758
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    invoke-interface {v1, v2, p1, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/Flushable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 766
    if-eqz p0, :cond_0

    .line 768
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    invoke-interface {v1, v2, p1, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 839
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 841
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 528
    if-eqz p0, :cond_0

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    .line 532
    const-string/jumbo v1, "bool"

    invoke-static {p0, p1, v1}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 534
    if-lez v1, :cond_1

    .line 535
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 546
    :cond_0
    :goto_0
    return p2

    .line 538
    :cond_1
    const-string/jumbo v0, "string"

    invoke-static {p0, p1, v0}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 540
    if-lez v0, :cond_0

    .line 541
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public static declared-synchronized b()J
    .locals 9

    .prologue
    .line 214
    const-class v3, Lc/a/a/a/a/b/m;

    monitor-enter v3

    :try_start_0
    sget-wide v0, Lc/a/a/a/a/b/m;->d:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 215
    const-wide/16 v0, 0x0

    .line 216
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/proc/meminfo"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "MemTotal"

    invoke-static {v2, v4}, Lc/a/a/a/a/b/m;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 222
    :try_start_1
    const-string/jumbo v2, "KB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    const-string/jumbo v2, "KB"

    const/16 v5, 0x400

    invoke-static {v4, v2, v5}, Lc/a/a/a/a/b/m;->a(Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 241
    :cond_0
    :goto_0
    :try_start_2
    sput-wide v0, Lc/a/a/a/a/b/m;->d:J

    .line 243
    :cond_1
    sget-wide v0, Lc/a/a/a/a/b/m;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-wide v0

    .line 224
    :cond_2
    :try_start_3
    const-string/jumbo v2, "MB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    const-string/jumbo v2, "MB"

    const/high16 v5, 0x100000

    invoke-static {v4, v2, v5}, Lc/a/a/a/a/b/m;->a(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 228
    :cond_3
    const-string/jumbo v2, "GB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    const-string/jumbo v2, "GB"

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v2, v5}, Lc/a/a/a/a/b/m;->a(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 233
    :cond_4
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    .line 237
    :try_start_4
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4, v2}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 399
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 400
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 401
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 412
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 414
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    .line 415
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 416
    sub-long v0, v4, v0

    return-wide v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    packed-switch p0, :pswitch_data_0

    .line 858
    const-string/jumbo v0, "?"

    :goto_0
    return-object v0

    .line 846
    :pswitch_0
    const-string/jumbo v0, "A"

    goto :goto_0

    .line 848
    :pswitch_1
    const-string/jumbo v0, "D"

    goto :goto_0

    .line 850
    :pswitch_2
    const-string/jumbo v0, "E"

    goto :goto_0

    .line 852
    :pswitch_3
    const-string/jumbo v0, "I"

    goto :goto_0

    .line 854
    :pswitch_4
    const-string/jumbo v0, "V"

    goto :goto_0

    .line 856
    :pswitch_5
    const-string/jumbo v0, "W"

    goto :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    const-string/jumbo v0, "string"

    invoke-static {p0, p1, v0}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 742
    if-lez v0, :cond_0

    .line 743
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 746
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)F
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 422
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 424
    const-string/jumbo v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 425
    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 427
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 922
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 777
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 431
    invoke-static {p0}, Lc/a/a/a/a/b/m;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    return v1

    .line 436
    :cond_0
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 438
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 499
    sget-object v0, Lc/a/a/a/a/b/m;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 500
    const-string/jumbo v0, "com.crashlytics.Trace"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc/a/a/a/a/b/m;->b:Ljava/lang/Boolean;

    .line 504
    :cond_0
    sget-object v0, Lc/a/a/a/a/b/m;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string/jumbo v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 571
    invoke-static {p0}, Lc/a/a/a/a/b/m;->f(Landroid/content/Context;)Z

    move-result v1

    .line 572
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 573
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const-string/jumbo v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v0

    .line 578
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/app/Superuser.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    invoke-static {p0}, Lc/a/a/a/a/b/m;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 612
    :cond_0
    invoke-static {p0}, Lc/a/a/a/a/b/m;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    or-int/lit8 v0, v0, 0x2

    .line 616
    :cond_1
    invoke-static {}, Lc/a/a/a/a/b/m;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    or-int/lit8 v0, v0, 0x4

    .line 620
    :cond_2
    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 823
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 824
    if-lez v0, :cond_0

    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 867
    .line 870
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lc/a/a/a/a/b/m;->l(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 871
    :try_start_1
    invoke-static {v2}, Lc/a/a/a/a/b/m;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-static {v1}, Lc/a/a/a/a/b/m;->c(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 876
    :goto_0
    const-string/jumbo v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 879
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 872
    goto :goto_0

    .line 873
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 874
    :goto_2
    :try_start_2
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    const-string/jumbo v5, "Could not calculate hash for app icon."

    invoke-interface {v3, v4, v5, v1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 876
    const-string/jumbo v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    const-string/jumbo v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 873
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static l(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 883
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 892
    const-string/jumbo v1, "io.fabric.android.build_id"

    const-string/jumbo v2, "string"

    invoke-static {p0, v1, v2}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 894
    if-nez v1, :cond_0

    .line 895
    const-string/jumbo v1, "com.crashlytics.android.build_id"

    const-string/jumbo v2, "string"

    invoke-static {p0, v1, v2}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 898
    :cond_0
    if-eqz v1, :cond_1

    .line 899
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Build ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_1
    return-object v0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 975
    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lc/a/a/a/a/b/m;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 978
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 979
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 983
    :goto_0
    return v0

    .line 979
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 983
    goto :goto_0
.end method
