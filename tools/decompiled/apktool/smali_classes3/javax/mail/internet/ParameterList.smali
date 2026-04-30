.class public Ljavax/mail/internet/ParameterList;
.super Ljava/lang/Object;
.source "ParameterList.java"


# static fields
.field private static decodeParameters:Z

.field private static decodeParametersStrict:Z

.field private static encodeParameters:Z

.field private static final hex:[C


# instance fields
.field private list:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    sput-boolean v1, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 63
    sput-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 64
    sput-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    .line 68
    :try_start_0
    const-string/jumbo v2, "mail.mime.encodeparameters"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 71
    const-string/jumbo v2, "mail.mime.decodeparameters"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 74
    const-string/jumbo v2, "mail.mime.decodeparameters.strict"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_3
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/mail/internet/ParameterList;->hex:[C

    return-void

    :cond_0
    move v2, v1

    .line 70
    goto :goto_0

    :cond_1
    move v2, v1

    .line 73
    goto :goto_1

    :cond_2
    move v0, v1

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v0

    goto :goto_3

    .line 337
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    .line 133
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string/jumbo v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    .line 142
    if-ne v2, v5, :cond_1

    .line 150
    :cond_0
    return-void

    .line 145
    :cond_1
    int-to-char v2, v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_6

    .line 147
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 152
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 153
    new-instance v0, Ljavax/mail/internet/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Expected parameter name, got \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_3

    .line 160
    new-instance v0, Ljavax/mail/internet/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Expected \'=\', got \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_3
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    .line 167
    if-eq v3, v6, :cond_4

    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    .line 169
    new-instance v0, Ljavax/mail/internet/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Expected parameter value, got \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_4
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 173
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-direct {p0, v2}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 177
    :cond_5
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 179
    :cond_6
    new-instance v0, Ljavax/mail/internet/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Expected \';\', got \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 378
    new-instance v0, Ljavax/mail/internet/ParameterList$Value;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    .line 379
    iput-object p1, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 380
    iput-object p1, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 382
    const/16 v2, 0x27

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 383
    if-gtz v2, :cond_0

    .line 384
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v1, :cond_4

    .line 385
    new-instance v1, Ljavax/mail/internet/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Missing charset in encoded value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 420
    :catch_0
    move-exception v1

    .line 421
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v2, :cond_4

    .line 422
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 390
    const/16 v3, 0x27

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 391
    if-gez v3, :cond_1

    .line 392
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v1, :cond_4

    .line 393
    new-instance v1, Ljavax/mail/internet/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Missing language in encoded value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 423
    :catch_1
    move-exception v1

    .line 424
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v2, :cond_4

    .line 425
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    add-int/lit8 v2, v2, 0x1

    :try_start_2
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 398
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 408
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    new-array v7, v2, [B

    move v3, v1

    move v2, v1

    .line 410
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 411
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 412
    const/16 v4, 0x25

    if-ne v1, v4, :cond_2

    .line 413
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 414
    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    .line 415
    add-int/lit8 v2, v2, 0x2

    .line 417
    :cond_2
    add-int/lit8 v4, v3, 0x1

    int-to-byte v1, v1

    aput-byte v1, v7, v3

    .line 410
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 419
    :cond_3
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v7, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 430
    :cond_4
    return-object v0

    .line 426
    :catch_2
    move-exception v1

    .line 427
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v2, :cond_4

    .line 428
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 9

    .prologue
    const/16 v8, 0x25

    const/4 v1, 0x0

    .line 348
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 371
    :goto_0
    return-object v0

    .line 353
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 357
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v0, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 358
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v4, "\'\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 360
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 362
    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_1

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1

    if-eq v4, v8, :cond_1

    const-string/jumbo v5, "()<>@,;:\\\"\t []/?="

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 364
    :cond_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljavax/mail/internet/ParameterList;->hex:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljavax/mail/internet/ParameterList;->hex:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 355
    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 368
    :cond_3
    new-instance v0, Ljavax/mail/internet/ParameterList$Value;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    .line 369
    iput-object p1, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 370
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    goto :goto_0
.end method

.method private quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string/jumbo v0, "()<>@,;:\\\"\t []/?="

    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    instance-of v1, v0, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v1, :cond_0

    .line 206
    check-cast v0, Ljavax/mail/internet/ParameterList$Value;

    iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 209
    :goto_0
    return-object v0

    .line 208
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljavax/mail/internet/ParameterList$ParamEnum;

    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$ParamEnum;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 236
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0, p2, p3}, Ljavax/mail/internet/ParameterList;->encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x4c

    .line 292
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 295
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 299
    instance-of v4, v1, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v4, :cond_1

    .line 300
    check-cast v1, Ljavax/mail/internet/ParameterList$Value;

    iget-object v1, v1, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 301
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v4, 0x2a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_1
    invoke-direct {p0, v1}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    const-string/jumbo v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    add-int/lit8 v1, p1, 0x2

    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 308
    add-int/2addr v5, v1

    if-le v5, v7, :cond_0

    .line 309
    const-string/jumbo v1, "\r\n\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const/16 v1, 0x8

    .line 312
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    .line 314
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, v7, :cond_3

    .line 316
    invoke-static {v0, v4}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 319
    if-ltz v4, :cond_2

    .line 320
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    :goto_2
    move p1, v0

    .line 323
    goto :goto_0

    .line 303
    :cond_1
    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 322
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 324
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int p1, v0, v1

    goto/16 :goto_0

    .line 329
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
