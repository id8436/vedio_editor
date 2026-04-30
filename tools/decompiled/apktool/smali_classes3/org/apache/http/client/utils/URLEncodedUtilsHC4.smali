.class public Lorg/apache/http/client/utils/URLEncodedUtilsHC4;
.super Ljava/lang/Object;
.source "URLEncodedUtilsHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PATHSAFE:Ljava/util/BitSet;

.field private static final PUNCT:Ljava/util/BitSet;

.field private static final QP_SEPS:[C

.field private static final QP_SEP_A:C = '&'

.field private static final QP_SEP_PATTERN:Ljava/lang/String;

.field private static final QP_SEP_S:C = ';'

.field private static final RADIX:I = 0x10

.field private static final RESERVED:Ljava/util/BitSet;

.field private static final UNRESERVED:Ljava/util/BitSet;

.field private static final URIC:Ljava/util/BitSet;

.field private static final URLENCODER:Ljava/util/BitSet;

.field private static final USERINFO:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x2c

    const/16 v6, 0x2b

    const/16 v5, 0x26

    const/16 v4, 0x24

    const/16 v3, 0x100

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEPS:[C

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEPS:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEP_PATTERN:Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    .line 363
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    .line 366
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->USERINFO:Ljava/util/BitSet;

    .line 369
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    .line 372
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URIC:Ljava/util/BitSet;

    .line 382
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    .line 389
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URLENCODER:Ljava/util/BitSet;

    .line 394
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 395
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 398
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 402
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 404
    :cond_2
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 405
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 406
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 407
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 408
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URLENCODER:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 409
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 410
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 411
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 412
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 413
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 415
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 416
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 417
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 418
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 419
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 420
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 421
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 423
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->USERINFO:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 424
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->USERINFO:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 427
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 428
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 429
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 430
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 431
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 432
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 433
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 434
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 435
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 436
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 438
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 439
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 440
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 441
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 442
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 443
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 444
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 445
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 446
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 447
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 448
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 449
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 451
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URIC:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 452
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URIC:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 453
    return-void

    .line 202
    nop

    :array_0
    .array-data 2
        0x26s
        0x3bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    if-nez p0, :cond_0

    .line 534
    const/4 v0, 0x0

    .line 536
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private static decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    if-nez p0, :cond_0

    .line 548
    const/4 v0, 0x0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method static encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 625
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static encUric(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 612
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URIC:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->USERINFO:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 565
    if-nez p0, :cond_0

    .line 566
    const/4 v0, 0x0

    .line 568
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URLENCODER:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private static encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    if-nez p0, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 586
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URLENCODER:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method public static format(Ljava/lang/Iterable;CLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;C",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 337
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 340
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    if-eqz v0, :cond_0

    .line 344
    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 317
    const/16 v0, 0x26

    invoke-static {p0, v0, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->format(Ljava/lang/Iterable;CLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;C",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 290
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 293
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    if-eqz v0, :cond_0

    .line 297
    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    const/16 v0, 0x26

    invoke-static {p0, v0, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->format(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEncoded(Lorg/apache/http/HttpEntity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 134
    array-length v2, v1

    if-lez v2, :cond_0

    .line 135
    aget-object v0, v1, v0

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 139
    :cond_0
    return v0
.end method

.method public static parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEPS:[C

    invoke-static {p0, p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parse(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "[C)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    if-nez p0, :cond_1

    .line 241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 256
    :cond_0
    return-object v0

    .line 243
    :cond_1
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueParserHC4;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParserHC4;

    .line 244
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 245
    invoke-virtual {v2, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 246
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    invoke-virtual {v1, v2, v3, p2}, Lorg/apache/http/message/BasicHeaderValueParserHC4;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v4

    .line 250
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 251
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEP_PATTERN:Ljava/lang/String;

    invoke-static {v0, v2, v1, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    sget-object v1, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, v1}, Lorg/apache/http/util/EntityUtilsHC4;->toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 116
    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 120
    :cond_0
    sget-object v2, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEPS:[C

    invoke-static {v1, v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEP_PATTERN:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p1, p2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 184
    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string/jumbo v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 189
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 197
    :cond_1
    return-void
.end method

.method private static urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x25

    const/16 v7, 0x10

    const/4 v6, -0x1

    .line 496
    if-nez p0, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 522
    :goto_0
    return-object v0

    .line 499
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 500
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 501
    :goto_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 502
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    .line 503
    if-ne v2, v8, :cond_2

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 504
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    .line 505
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    .line 506
    invoke-static {v2, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 507
    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 508
    if-eq v4, v6, :cond_1

    if-eq v5, v6, :cond_1

    .line 509
    shl-int/lit8 v2, v4, 0x4

    add-int/2addr v2, v5

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 512
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 513
    int-to-byte v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 515
    :cond_2
    if-eqz p2, :cond_3

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    .line 516
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 518
    :cond_3
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 521
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 522
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 462
    if-nez p0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 481
    :goto_0
    return-object v0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 467
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 469
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 471
    :cond_1
    if-eqz p3, :cond_2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 472
    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 474
    :cond_2
    const-string/jumbo v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 476
    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 481
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
