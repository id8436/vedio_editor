.class public Lcom/adobe/xmp/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field public static final UUID_LENGTH:I = 0x24

.field public static final UUID_SEGMENT_COUNT:I = 0x4

.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/adobe/xmp/impl/Utils;->initCharTables()V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 274
    .line 278
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    move v3, v4

    .line 283
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 293
    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-ne v3, v2, :cond_0

    const/16 v2, 0x24

    if-ne v2, v0, :cond_0

    move v1, v4

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_4

    .line 287
    add-int/lit8 v5, v2, 0x1

    .line 288
    if-eqz v3, :cond_5

    .line 289
    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    const/16 v2, 0x12

    if-eq v0, v2, :cond_3

    const/16 v2, 0x17

    if-ne v0, v2, :cond_5

    :cond_3
    move v2, v4

    :goto_2
    move v3, v2

    move v2, v5

    .line 283
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    .line 288
    goto :goto_2
.end method

.method public static escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 373
    move v0, v1

    .line 374
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 387
    :goto_1
    if-nez v0, :cond_4

    .line 421
    :goto_2
    return-object p0

    .line 376
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 378
    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    .line 379
    if-eqz p2, :cond_1

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_2

    .line 380
    :cond_1
    if-eqz p1, :cond_3

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    .line 382
    :cond_2
    const/4 v0, 0x1

    .line 383
    goto :goto_1

    .line 374
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 396
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 398
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    if-eqz p2, :cond_6

    if-eq v0, v4, :cond_8

    if-eq v0, v5, :cond_8

    if-eq v0, v6, :cond_8

    .line 401
    :cond_6
    sparse-switch v0, :sswitch_data_0

    .line 409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 405
    :sswitch_0
    const-string/jumbo v0, "&lt;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 406
    :sswitch_1
    const-string/jumbo v0, "&gt;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 407
    :sswitch_2
    const-string/jumbo v0, "&amp;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 408
    :sswitch_3
    if-eqz p1, :cond_7

    const-string/jumbo v0, "&quot;"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    const-string/jumbo v0, "\""

    goto :goto_5

    .line 416
    :cond_8
    const-string/jumbo v3, "&#x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static initCharTables()V
    .locals 5

    .prologue
    const/16 v2, 0x100

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 497
    new-array v0, v2, [Z

    sput-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    .line 498
    new-array v0, v2, [Z

    sput-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    move v0, v1

    .line 500
    :goto_0
    sget-object v2, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 518
    return-void

    .line 502
    :cond_0
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 503
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_7

    .line 504
    const/16 v2, 0x41

    if-gt v2, v0, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_7

    .line 505
    :cond_1
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_7

    .line 506
    const/16 v2, 0x61

    if-gt v2, v0, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_7

    .line 507
    :cond_2
    const/16 v2, 0xc0

    if-gt v2, v0, :cond_3

    const/16 v2, 0xd6

    if-le v0, v2, :cond_7

    .line 508
    :cond_3
    const/16 v2, 0xd8

    if-gt v2, v0, :cond_4

    const/16 v2, 0xf6

    if-le v0, v2, :cond_7

    .line 509
    :cond_4
    const/16 v2, 0xf8

    if-gt v2, v0, :cond_5

    const/16 v2, 0xff

    .line 502
    if-le v0, v2, :cond_7

    :cond_5
    move v2, v1

    :goto_1
    aput-boolean v2, v4, v0

    .line 511
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    .line 512
    sget-object v2, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_8

    .line 513
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_8

    .line 514
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_8

    .line 515
    const/16 v2, 0x30

    if-gt v2, v0, :cond_6

    const/16 v2, 0x39

    if-le v0, v2, :cond_8

    .line 516
    :cond_6
    const/16 v2, 0xb7

    if-eq v0, v2, :cond_8

    move v2, v1

    .line 511
    :goto_2
    aput-boolean v2, v4, v0

    .line 500
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_7
    move v2, v3

    .line 502
    goto :goto_1

    :cond_8
    move v2, v3

    .line 511
    goto :goto_2
.end method

.method static isControlChar(C)Z
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    .line 354
    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    .line 353
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 163
    .line 165
    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    const-string/jumbo v2, "dc:format"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "dc:language"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 255
    :cond_1
    :goto_0
    return v0

    .line 172
    :cond_2
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    const-string/jumbo v2, "xmp:BaseURL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "xmp:CreatorTool"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    const-string/jumbo v2, "xmp:Format"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "xmp:Locale"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    const-string/jumbo v2, "xmp:MetadataDate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "xmp:ModifyDate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    .line 180
    goto :goto_0

    .line 181
    :cond_4
    const-string/jumbo v2, "http://ns.adobe.com/pdf/1.3/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    const-string/jumbo v2, "pdf:BaseURL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "pdf:Creator"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 184
    const-string/jumbo v2, "pdf:ModDate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "pdf:PDFVersion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 185
    const-string/jumbo v2, "pdf:Producer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    move v0, v1

    .line 189
    goto :goto_0

    .line 190
    :cond_6
    const-string/jumbo v2, "http://ns.adobe.com/tiff/1.0/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 193
    const-string/jumbo v2, "tiff:ImageDescription"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "tiff:Artist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    const-string/jumbo v2, "tiff:Copyright"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_7
    move v0, v1

    goto/16 :goto_0

    .line 199
    :cond_8
    const-string/jumbo v2, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 202
    const-string/jumbo v2, "exif:UserComment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 207
    :cond_9
    const-string/jumbo v2, "http://ns.adobe.com/exif/1.0/aux/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 210
    goto/16 :goto_0

    .line 211
    :cond_a
    const-string/jumbo v2, "http://ns.adobe.com/photoshop/1.0/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 213
    const-string/jumbo v2, "photoshop:ICCProfile"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 217
    goto/16 :goto_0

    .line 218
    :cond_b
    const-string/jumbo v2, "http://ns.adobe.com/camera-raw-settings/1.0/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 220
    const-string/jumbo v2, "crs:Version"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "crs:RawFileName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 221
    const-string/jumbo v2, "crs:ToneCurveName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_c
    move v0, v1

    .line 225
    goto/16 :goto_0

    .line 226
    :cond_d
    const-string/jumbo v2, "http://ns.adobe.com/StockPhoto/1.0/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    .line 229
    goto/16 :goto_0

    .line 230
    :cond_e
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    .line 233
    goto/16 :goto_0

    .line 234
    :cond_f
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/t/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    .line 237
    goto/16 :goto_0

    .line 238
    :cond_10
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/t/pg/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 241
    goto/16 :goto_0

    .line 242
    :cond_11
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/g/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    .line 245
    goto/16 :goto_0

    .line 246
    :cond_12
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/g/img/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    .line 249
    goto/16 :goto_0

    .line 250
    :cond_13
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/sType/Font#"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 252
    goto/16 :goto_0
.end method

.method private static isNameChar(C)Z
    .locals 1

    .prologue
    .line 483
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_3

    .line 484
    :cond_0
    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 485
    const/16 v0, 0x300

    if-lt p0, v0, :cond_1

    const/16 v0, 0x36f

    if-le p0, v0, :cond_3

    .line 486
    :cond_1
    const/16 v0, 0x203f

    if-lt p0, v0, :cond_2

    const/16 v0, 0x2040

    .line 482
    if-le p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNameStartChar(C)Z
    .locals 1

    .prologue
    .line 458
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_b

    .line 459
    :cond_0
    const/16 v0, 0x100

    if-lt p0, v0, :cond_1

    const/16 v0, 0x2ff

    if-le p0, v0, :cond_b

    .line 460
    :cond_1
    const/16 v0, 0x370

    if-lt p0, v0, :cond_2

    const/16 v0, 0x37d

    if-le p0, v0, :cond_b

    .line 461
    :cond_2
    const/16 v0, 0x37f

    if-lt p0, v0, :cond_3

    const/16 v0, 0x1fff

    if-le p0, v0, :cond_b

    .line 462
    :cond_3
    const/16 v0, 0x200c

    if-lt p0, v0, :cond_4

    const/16 v0, 0x200d

    if-le p0, v0, :cond_b

    .line 463
    :cond_4
    const/16 v0, 0x2070

    if-lt p0, v0, :cond_5

    const/16 v0, 0x218f

    if-le p0, v0, :cond_b

    .line 464
    :cond_5
    const/16 v0, 0x2c00

    if-lt p0, v0, :cond_6

    const/16 v0, 0x2fef

    if-le p0, v0, :cond_b

    .line 465
    :cond_6
    const/16 v0, 0x3001

    if-lt p0, v0, :cond_7

    const v0, 0xd7ff

    if-le p0, v0, :cond_b

    .line 466
    :cond_7
    const v0, 0xf900

    if-lt p0, v0, :cond_8

    const v0, 0xfdcf

    if-le p0, v0, :cond_b

    .line 467
    :cond_8
    const v0, 0xfdf0

    if-lt p0, v0, :cond_9

    const v0, 0xfffd

    if-le p0, v0, :cond_b

    .line 468
    :cond_9
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_a

    const v0, 0xeffff

    .line 457
    if-le p0, v0, :cond_b

    :cond_a
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 319
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 312
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 316
    goto :goto_0

    .line 312
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_0
    move v1, v2

    .line 343
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    .line 336
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    :cond_3
    move v1, v2

    .line 340
    goto :goto_0

    .line 336
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-string/jumbo v0, "x-default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-object p0

    .line 70
    :cond_0
    const/4 v1, 0x1

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 88
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :sswitch_1
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method static removeControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 443
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 436
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 124
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 130
    :goto_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 133
    add-int/lit8 v0, v3, 0x1

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    .line 137
    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v3, v6, v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    :cond_0
    :goto_1
    if-lt v0, v6, :cond_1

    .line 148
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
