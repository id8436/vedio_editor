.class public final Ld/a/c;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Ld/bf;

.field public static final d:Ld/az;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/nio/charset/Charset;

.field public static final g:Ljava/util/TimeZone;

.field public static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Le/k;

.field private static final j:Le/k;

.field private static final k:Le/k;

.field private static final l:Le/k;

.field private static final m:Le/k;

.field private static final n:Ljava/nio/charset/Charset;

.field private static final o:Ljava/nio/charset/Charset;

.field private static final p:Ljava/nio/charset/Charset;

.field private static final q:Ljava/nio/charset/Charset;

.field private static final r:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    new-array v0, v1, [B

    sput-object v0, Ld/a/c;->a:[B

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ld/a/c;->b:[Ljava/lang/String;

    .line 51
    sget-object v0, Ld/a/c;->a:[B

    invoke-static {v2, v0}, Ld/bf;->a(Ld/an;[B)Ld/bf;

    move-result-object v0

    sput-object v0, Ld/a/c;->c:Ld/bf;

    .line 52
    sget-object v0, Ld/a/c;->a:[B

    invoke-static {v2, v0}, Ld/az;->create(Ld/an;[B)Ld/az;

    move-result-object v0

    sput-object v0, Ld/a/c;->d:Ld/az;

    .line 54
    const-string/jumbo v0, "efbbbf"

    invoke-static {v0}, Le/k;->c(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/c;->i:Le/k;

    .line 55
    const-string/jumbo v0, "feff"

    invoke-static {v0}, Le/k;->c(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/c;->j:Le/k;

    .line 56
    const-string/jumbo v0, "fffe"

    invoke-static {v0}, Le/k;->c(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/c;->k:Le/k;

    .line 57
    const-string/jumbo v0, "0000ffff"

    invoke-static {v0}, Le/k;->c(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/c;->l:Le/k;

    .line 58
    const-string/jumbo v0, "ffff0000"

    invoke-static {v0}, Le/k;->c(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/c;->m:Le/k;

    .line 60
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ld/a/c;->e:Ljava/nio/charset/Charset;

    .line 61
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ld/a/c;->f:Ljava/nio/charset/Charset;

    .line 62
    const-string/jumbo v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ld/a/c;->n:Ljava/nio/charset/Charset;

    .line 63
    const-string/jumbo v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ld/a/c;->o:Ljava/nio/charset/Charset;

    .line 64
    const-string/jumbo v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ld/a/c;->p:Ljava/nio/charset/Charset;

    .line 65
    const-string/jumbo v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ld/a/c;->q:Ljava/nio/charset/Charset;

    .line 68
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ld/a/c;->g:Ljava/util/TimeZone;

    .line 70
    new-instance v0, Ld/a/d;

    invoke-direct {v0}, Ld/a/d;-><init>()V

    sput-object v0, Ld/a/c;->h:Ljava/util/Comparator;

    .line 86
    const-string/jumbo v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ld/a/c;->r:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(C)I
    .locals 1

    .prologue
    .line 486
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 489
    :goto_0
    return v0

    .line 487
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 488
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 489
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;II)I
    .locals 2

    .prologue
    .line 304
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    .line 316
    :cond_0
    return p2

    .line 304
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;IIC)I
    .locals 2

    .prologue
    .line 362
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_1

    move p2, v0

    .line 365
    :cond_0
    return p2

    .line 362
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3

    .prologue
    .line 351
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move p2, v0

    .line 354
    :cond_0
    return p2

    .line 351
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 473
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 476
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too large."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_3
    long-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 287
    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    .line 289
    :goto_1
    return v0

    .line 286
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .locals 1

    .prologue
    .line 482
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/AssertionError;

    return-object v0
.end method

.method public static a(Ld/ai;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p0}, Ld/ai;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ld/ai;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ld/ai;->g()I

    move-result v1

    invoke-virtual {p0}, Ld/ai;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld/ai;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 255
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ld/ai;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_1
    return-object v0

    .line 253
    :cond_2
    invoke-virtual {p0}, Ld/ai;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 378
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    const-string/jumbo v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v1, v2}, Ld/a/c;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 383
    :goto_0
    if-nez v1, :cond_2

    .line 400
    :cond_0
    :goto_1
    return-object v0

    .line 382
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Ld/a/c;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 385
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Ld/a/c;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 386
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 390
    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    invoke-static {v1}, Ld/a/c;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 398
    goto :goto_1

    .line 399
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x3a

    const/4 v1, 0x0

    .line 603
    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 605
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    move v5, v0

    .line 607
    :goto_1
    if-ge v5, v8, :cond_0

    aget-byte v4, p0, v5

    if-nez v4, :cond_0

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    .line 608
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_1

    .line 610
    :cond_0
    sub-int v4, v5, v0

    .line 611
    if-le v4, v2, :cond_1

    const/4 v6, 0x4

    if-lt v4, v6, :cond_1

    move v2, v4

    move v3, v0

    .line 605
    :cond_1
    add-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 618
    :cond_2
    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    .line 619
    :cond_3
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_6

    .line 620
    if-ne v1, v3, :cond_4

    .line 621
    invoke-virtual {v0, v7}, Le/f;->b(I)Le/f;

    .line 622
    add-int/2addr v1, v2

    .line 623
    if-ne v1, v8, :cond_3

    invoke-virtual {v0, v7}, Le/f;->b(I)Le/f;

    goto :goto_2

    .line 625
    :cond_4
    if-lez v1, :cond_5

    invoke-virtual {v0, v7}, Le/f;->b(I)Le/f;

    .line 626
    :cond_5
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 627
    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Le/f;->j(J)Le/f;

    .line 628
    add-int/lit8 v1, v1, 0x2

    .line 629
    goto :goto_2

    .line 631
    :cond_6
    invoke-virtual {v0}, Le/f;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Le/j;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 449
    sget-object v0, Ld/a/c;->i:Le/k;

    invoke-interface {p0, v2, v3, v0}, Le/j;->a(JLe/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    sget-object v0, Ld/a/c;->i:Le/k;

    invoke-virtual {v0}, Le/k;->g()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Le/j;->h(J)V

    .line 451
    sget-object p1, Ld/a/c;->e:Ljava/nio/charset/Charset;

    .line 469
    :cond_0
    :goto_0
    return-object p1

    .line 453
    :cond_1
    sget-object v0, Ld/a/c;->j:Le/k;

    invoke-interface {p0, v2, v3, v0}, Le/j;->a(JLe/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    sget-object v0, Ld/a/c;->j:Le/k;

    invoke-virtual {v0}, Le/k;->g()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Le/j;->h(J)V

    .line 455
    sget-object p1, Ld/a/c;->n:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 457
    :cond_2
    sget-object v0, Ld/a/c;->k:Le/k;

    invoke-interface {p0, v2, v3, v0}, Le/j;->a(JLe/k;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    sget-object v0, Ld/a/c;->k:Le/k;

    invoke-virtual {v0}, Le/k;->g()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Le/j;->h(J)V

    .line 459
    sget-object p1, Ld/a/c;->o:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 461
    :cond_3
    sget-object v0, Ld/a/c;->l:Le/k;

    invoke-interface {p0, v2, v3, v0}, Le/j;->a(JLe/k;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    sget-object v0, Ld/a/c;->l:Le/k;

    invoke-virtual {v0}, Le/k;->g()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Le/j;->h(J)V

    .line 463
    sget-object p1, Ld/a/c;->p:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 465
    :cond_4
    sget-object v0, Ld/a/c;->m:Le/k;

    invoke-interface {p0, v2, v3, v0}, Le/j;->a(JLe/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Ld/a/c;->m:Le/k;

    invoke-virtual {v0}, Le/k;->g()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Le/j;->h(J)V

    .line 467
    sget-object p1, Ld/a/c;->q:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Ld/a/e;

    invoke-direct {v0, p0, p1}, Ld/a/e;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(JJJ)V
    .locals 4

    .prologue
    .line 93
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 96
    :cond_1
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 108
    if-eqz p0, :cond_0

    .line 110
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    throw v0

    .line 113
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 2

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    throw v0

    .line 130
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static a(Le/ab;ILjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0, p1, p2}, Ld/a/c;->b(Le/ab;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 159
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/AssertionError;)Z
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 100
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private static a(Ljava/lang/String;II[BI)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 566
    move v0, p1

    move v4, p4

    .line 568
    :goto_0
    if-ge v0, p2, :cond_8

    .line 569
    array-length v2, p3

    if-ne v4, v2, :cond_0

    move v0, v1

    .line 595
    :goto_1
    return v0

    .line 572
    :cond_0
    if-eq v4, p4, :cond_2

    .line 573
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    .line 574
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v2, v1

    move v3, v0

    .line 580
    :goto_2
    if-ge v3, p2, :cond_3

    .line 581
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 582
    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    .line 587
    :cond_3
    sub-int v0, v3, v0

    .line 588
    if-nez v0, :cond_7

    move v0, v1

    goto :goto_1

    .line 583
    :cond_4
    if-nez v2, :cond_5

    if-eq v0, v3, :cond_5

    move v0, v1

    goto :goto_1

    .line 584
    :cond_5
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    .line 585
    const/16 v5, 0xff

    if-le v2, v5, :cond_6

    move v0, v1

    goto :goto_1

    .line 580
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 591
    :cond_7
    add-int/lit8 v0, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    move v4, v0

    move v0, v3

    .line 592
    goto :goto_0

    .line 594
    :cond_8
    add-int/lit8 v0, p4, 0x4

    if-eq v4, v0, :cond_9

    move v0, v1

    goto :goto_1

    .line 595
    :cond_9
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p1, v2

    .line 219
    array-length v6, p2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, p2, v0

    .line 220
    invoke-interface {p0, v5, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1

    .line 221
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 219
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 294
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 296
    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 430
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 431
    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1

    .line 435
    :cond_0
    :goto_1
    return v0

    .line 429
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;II)I
    .locals 2

    .prologue
    .line 324
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 333
    add-int/lit8 p1, v0, 0x1

    .line 336
    :cond_0
    return p1

    .line 324
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Le/ab;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 169
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v0

    invoke-virtual {v0}, Le/ac;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v0

    invoke-virtual {v0}, Le/ac;->d()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 172
    :goto_0
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v4

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Le/ac;->a(J)Le/ac;

    .line 174
    :try_start_0
    new-instance v4, Le/f;

    invoke-direct {v4}, Le/f;-><init>()V

    .line 175
    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v4, v8, v9}, Le/ab;->a(Le/f;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {v4}, Le/f;->s()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v4

    .line 180
    const/4 v4, 0x0

    .line 182
    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 183
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v0

    invoke-virtual {v0}, Le/ac;->f()Le/ac;

    :goto_2
    move v0, v4

    .line 180
    :goto_3
    return v0

    :cond_0
    move-wide v0, v2

    .line 171
    goto :goto_0

    .line 178
    :cond_1
    const/4 v4, 0x1

    .line 182
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 183
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v0

    invoke-virtual {v0}, Le/ac;->f()Le/ac;

    :goto_4
    move v0, v4

    .line 178
    goto :goto_3

    .line 185
    :cond_2
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Le/ac;->a(J)Le/ac;

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Le/ac;->a(J)Le/ac;

    goto :goto_2

    .line 182
    :catchall_0
    move-exception v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 183
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v0

    invoke-virtual {v0}, Le/ac;->f()Le/ac;

    .line 185
    :goto_5
    throw v4

    :cond_4
    invoke-interface {p0}, Le/ab;->a()Le/ac;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Le/ac;->a(J)Le/ac;

    goto :goto_5
.end method

.method public static b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 237
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    .line 241
    array-length v5, p2

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v6, p2, v1

    .line 242
    invoke-interface {p0, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_2

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    invoke-static {p0, p1, p2}, Ld/a/c;->a(Ljava/lang/String;II)I

    move-result v0

    .line 342
    invoke-static {p0, v0, p2}, Ld/a/c;->b(Ljava/lang/String;II)I

    move-result v1

    .line 343
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 440
    sget-object v0, Ld/a/c;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 12
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 494
    const/16 v0, 0x10

    new-array v8, v0, [B

    move v0, p1

    move v4, v7

    move v1, v7

    move v2, v5

    .line 499
    :goto_0
    if-ge v0, p2, :cond_2

    .line 500
    array-length v6, v8

    if-ne v2, v6, :cond_0

    move-object v0, v3

    .line 557
    :goto_1
    return-object v0

    .line 503
    :cond_0
    add-int/lit8 v6, v0, 0x2

    if-gt v6, p2, :cond_3

    const-string/jumbo v6, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v0, v6, v5, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 505
    if-eq v1, v7, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 506
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 507
    add-int/lit8 v1, v2, 0x2

    .line 509
    if-ne v0, p2, :cond_e

    move v2, v1

    .line 550
    :cond_2
    :goto_2
    array-length v0, v8

    if-eq v2, v0, :cond_d

    .line 551
    if-ne v1, v7, :cond_c

    move-object v0, v3

    goto :goto_1

    .line 510
    :cond_3
    if-eqz v2, :cond_4

    .line 512
    const-string/jumbo v6, ":"

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 513
    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_3
    move v4, v5

    move v6, v0

    .line 527
    :goto_4
    if-ge v6, p2, :cond_5

    .line 528
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 529
    invoke-static {v9}, Ld/a/c;->a(C)I

    move-result v9

    .line 530
    if-ne v9, v7, :cond_a

    .line 533
    :cond_5
    sub-int v9, v6, v0

    .line 534
    if-eqz v9, :cond_6

    const/4 v10, 0x4

    if-le v9, v10, :cond_b

    :cond_6
    move-object v0, v3

    goto :goto_1

    .line 514
    :cond_7
    const-string/jumbo v6, "."

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 516
    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v4, p2, v8, v0}, Ld/a/c;->a(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_1

    .line 517
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 518
    goto :goto_2

    :cond_9
    move-object v0, v3

    .line 520
    goto :goto_1

    .line 531
    :cond_a
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v9

    .line 527
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 537
    :cond_b
    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    .line 538
    add-int/lit8 v2, v9, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    move v4, v0

    move v0, v6

    .line 539
    goto :goto_0

    .line 552
    :cond_c
    array-length v0, v8

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    sub-int v3, v2, v1

    invoke-static {v8, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    array-length v0, v8

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v8, v1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 557
    :cond_d
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    move v2, v1

    goto :goto_3
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 405
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 406
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 410
    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 420
    :cond_1
    :goto_1
    return v1

    .line 416
    :cond_2
    const-string/jumbo v4, " #%/:?@[\\]"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 417
    goto :goto_1

    .line 405
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
