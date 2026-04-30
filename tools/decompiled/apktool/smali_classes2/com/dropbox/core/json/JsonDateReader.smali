.class public Lcom/dropbox/core/json/JsonDateReader;
.super Ljava/lang/Object;
.source "JsonDateReader.java"


# static fields
.field public static final Dropbox:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final DropboxV2:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/dropbox/core/json/JsonDateReader$1;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonDateReader$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    .line 150
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/json/JsonDateReader;->UTC:Ljava/util/TimeZone;

    .line 232
    new-instance v0, Lcom/dropbox/core/json/JsonDateReader$2;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonDateReader$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonDateReader;->DropboxV2:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMonthIndex(CCC)I
    .locals 5

    .prologue
    const/16 v4, 0x61

    const/16 v3, 0x65

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 185
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 187
    :pswitch_1
    if-ne p1, v4, :cond_1

    move v3, v2

    :goto_1
    const/16 v4, 0x6e

    if-ne p2, v4, :cond_2

    :goto_2
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 188
    const/16 v0, 0x75

    if-ne p1, v0, :cond_5

    .line 189
    const/16 v0, 0x6e

    if-ne p2, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    move v3, v0

    .line 187
    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_2

    .line 190
    :cond_3
    const/16 v0, 0x6c

    if-ne p2, v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    move v0, v1

    .line 191
    goto :goto_0

    :cond_5
    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :pswitch_2
    if-ne p1, v3, :cond_6

    move v3, v2

    :goto_3
    const/16 v1, 0x62

    if-ne p2, v1, :cond_7

    move v1, v2

    :goto_4
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_4

    .line 198
    :pswitch_3
    if-ne p1, v4, :cond_a

    .line 199
    const/16 v0, 0x72

    if-ne p2, v0, :cond_8

    const/4 v0, 0x2

    goto :goto_0

    .line 200
    :cond_8
    const/16 v0, 0x79

    if-ne p2, v0, :cond_9

    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    move v0, v1

    .line 201
    goto :goto_0

    :cond_a
    move v0, v1

    .line 203
    goto :goto_0

    .line 205
    :pswitch_4
    const/16 v3, 0x70

    if-ne p1, v3, :cond_b

    move v4, v2

    :goto_5
    const/16 v3, 0x72

    if-ne p2, v3, :cond_c

    move v3, v2

    :goto_6
    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    const/4 v0, 0x3

    goto :goto_0

    :cond_b
    move v4, v0

    goto :goto_5

    :cond_c
    move v3, v0

    goto :goto_6

    .line 206
    :cond_d
    const/16 v3, 0x75

    if-ne p1, v3, :cond_e

    move v3, v2

    :goto_7
    const/16 v4, 0x67

    if-ne p2, v4, :cond_f

    :goto_8
    and-int v0, v3, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x7

    goto :goto_0

    :cond_e
    move v3, v0

    goto :goto_7

    :cond_f
    move v2, v0

    goto :goto_8

    :cond_10
    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :pswitch_5
    if-ne p1, v3, :cond_11

    move v3, v2

    :goto_9
    const/16 v4, 0x70

    if-ne p2, v4, :cond_12

    :goto_a
    and-int v0, v3, v2

    if-eqz v0, :cond_13

    const/16 v0, 0x8

    goto :goto_0

    :cond_11
    move v3, v0

    goto :goto_9

    :cond_12
    move v2, v0

    goto :goto_a

    :cond_13
    move v0, v1

    .line 210
    goto/16 :goto_0

    .line 212
    :pswitch_6
    const/16 v3, 0x63

    if-ne p1, v3, :cond_14

    move v3, v2

    :goto_b
    const/16 v4, 0x74

    if-ne p2, v4, :cond_15

    :goto_c
    and-int v0, v3, v2

    if-eqz v0, :cond_16

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_14
    move v3, v0

    goto :goto_b

    :cond_15
    move v2, v0

    goto :goto_c

    :cond_16
    move v0, v1

    .line 213
    goto/16 :goto_0

    .line 215
    :pswitch_7
    const/16 v3, 0x6f

    if-ne p1, v3, :cond_17

    move v3, v2

    :goto_d
    const/16 v4, 0x76

    if-ne p2, v4, :cond_18

    :goto_e
    and-int v0, v3, v2

    if-eqz v0, :cond_19

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_17
    move v3, v0

    goto :goto_d

    :cond_18
    move v2, v0

    goto :goto_e

    :cond_19
    move v0, v1

    .line 216
    goto/16 :goto_0

    .line 218
    :pswitch_8
    if-ne p1, v3, :cond_1a

    move v3, v2

    :goto_f
    const/16 v4, 0x63

    if-ne p2, v4, :cond_1b

    :goto_10
    and-int v0, v3, v2

    if-eqz v0, :cond_1c

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_1a
    move v3, v0

    goto :goto_f

    :cond_1b
    move v2, v0

    goto :goto_10

    :cond_1c
    move v0, v1

    .line 219
    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static isDigit(C)Z
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDayOfWeek(CCC)Z
    .locals 6

    .prologue
    const/16 v5, 0x6e

    const/16 v2, 0x65

    const/16 v4, 0x75

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 160
    sparse-switch p0, :sswitch_data_0

    move v0, v1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 162
    :sswitch_0
    if-ne p1, v4, :cond_1

    move v3, v0

    :goto_1
    if-ne p2, v5, :cond_2

    move v2, v0

    :goto_2
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 163
    const/16 v2, 0x61

    if-ne p1, v2, :cond_3

    move v3, v0

    :goto_3
    const/16 v2, 0x74

    if-ne p2, v2, :cond_4

    move v2, v0

    :goto_4
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 164
    goto :goto_0

    :cond_1
    move v3, v1

    .line 162
    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v3, v1

    .line 163
    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4

    .line 166
    :sswitch_1
    const/16 v2, 0x6f

    if-ne p1, v2, :cond_5

    move v3, v0

    :goto_5
    if-ne p2, v5, :cond_6

    move v2, v0

    :goto_6
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 167
    goto :goto_0

    :cond_5
    move v3, v1

    .line 166
    goto :goto_5

    :cond_6
    move v2, v1

    goto :goto_6

    .line 169
    :sswitch_2
    if-ne p1, v4, :cond_7

    move v3, v0

    :goto_7
    if-ne p2, v2, :cond_8

    move v2, v0

    :goto_8
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 170
    const/16 v2, 0x68

    if-ne p1, v2, :cond_9

    move v3, v0

    :goto_9
    if-ne p2, v4, :cond_a

    move v2, v0

    :goto_a
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 171
    goto :goto_0

    :cond_7
    move v3, v1

    .line 169
    goto :goto_7

    :cond_8
    move v2, v1

    goto :goto_8

    :cond_9
    move v3, v1

    .line 170
    goto :goto_9

    :cond_a
    move v2, v1

    goto :goto_a

    .line 173
    :sswitch_3
    if-ne p1, v2, :cond_b

    move v3, v0

    :goto_b
    const/16 v2, 0x64

    if-ne p2, v2, :cond_c

    move v2, v0

    :goto_c
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 174
    goto :goto_0

    :cond_b
    move v3, v1

    .line 173
    goto :goto_b

    :cond_c
    move v2, v1

    goto :goto_c

    .line 176
    :sswitch_4
    const/16 v2, 0x72

    if-ne p1, v2, :cond_d

    move v3, v0

    :goto_d
    const/16 v2, 0x69

    if-ne p2, v2, :cond_e

    move v2, v0

    :goto_e
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 177
    goto :goto_0

    :cond_d
    move v3, v1

    .line 176
    goto :goto_d

    :cond_e
    move v2, v1

    goto :goto_e

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_4
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x54 -> :sswitch_2
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method public static parseDropbox8601Date([CII)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    const/4 v4, 0x0

    .line 257
    .line 260
    if-eq p2, v2, :cond_0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    .line 261
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expecting date to be 20 or 24 characters, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 266
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 268
    if-ne p2, v2, :cond_1

    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 277
    :goto_0
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 281
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    if-nez v0, :cond_2

    .line 287
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 275
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid characters in date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 290
    :cond_2
    return-object v0
.end method

.method public static parseDropboxDate([CII)Ljava/util/Date;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0x30

    const/16 v3, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 44
    .line 47
    const/16 v0, 0x1f

    if-eq p2, v0, :cond_0

    .line 48
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expecting date to be 31 characters, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 52
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1f

    if-lt v0, v1, :cond_1

    if-gez p1, :cond_2

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "range is not within \'b\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    add-int/lit8 v0, p1, 0x3

    aget-char v0, p0, v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    move v0, v6

    :goto_0
    add-int/lit8 v1, p1, 0x4

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_4

    move v1, v6

    :goto_1
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x7

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_5

    move v0, v6

    :goto_2
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0xb

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_6

    move v0, v6

    :goto_3
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x10

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_7

    move v0, v6

    :goto_4
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x13

    aget-char v0, p0, v0

    if-eq v0, v5, :cond_8

    move v0, v6

    :goto_5
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x16

    aget-char v0, p0, v0

    if-eq v0, v5, :cond_9

    move v0, v6

    :goto_6
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x19

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_a

    move v0, v6

    :goto_7
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x1a

    aget-char v0, p0, v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_b

    move v0, v6

    :goto_8
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x1b

    aget-char v0, p0, v0

    if-eq v0, v4, :cond_c

    move v0, v6

    :goto_9
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x1c

    aget-char v0, p0, v0

    if-eq v0, v4, :cond_d

    move v0, v6

    :goto_a
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x1d

    aget-char v0, p0, v0

    if-eq v0, v4, :cond_e

    move v0, v6

    :goto_b
    or-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x1e

    aget-char v0, p0, v0

    if-eq v0, v4, :cond_f

    move v0, v6

    :goto_c
    or-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 65
    add-int/lit8 v0, p1, 0x3

    aget-char v0, p0, v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \',\'"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    move v0, v7

    .line 62
    goto :goto_0

    :cond_4
    move v1, v7

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2

    :cond_6
    move v0, v7

    goto :goto_3

    :cond_7
    move v0, v7

    goto :goto_4

    :cond_8
    move v0, v7

    goto :goto_5

    :cond_9
    move v0, v7

    goto :goto_6

    :cond_a
    move v0, v7

    goto :goto_7

    :cond_b
    move v0, v7

    goto :goto_8

    :cond_c
    move v0, v7

    goto :goto_9

    :cond_d
    move v0, v7

    goto :goto_a

    :cond_e
    move v0, v7

    goto :goto_b

    :cond_f
    move v0, v7

    goto :goto_c

    .line 66
    :cond_10
    add-int/lit8 v0, p1, 0x4

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_11

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \' \'"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 67
    :cond_11
    add-int/lit8 v0, p1, 0x7

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_12

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \' \'"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 68
    :cond_12
    add-int/lit8 v0, p1, 0xb

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_13

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \' \'"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 69
    :cond_13
    add-int/lit8 v0, p1, 0x10

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_14

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \' \'"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 70
    :cond_14
    add-int/lit8 v0, p1, 0x13

    aget-char v0, p0, v0

    if-eq v0, v5, :cond_15

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \':\'"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 71
    :cond_15
    add-int/lit8 v0, p1, 0x16

    aget-char v0, p0, v0

    if-eq v0, v5, :cond_16

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \':\'"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 72
    :cond_16
    add-int/lit8 v0, p1, 0x19

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_17

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \' \'"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 73
    :cond_17
    add-int/lit8 v0, p1, 0x1a

    aget-char v0, p0, v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_18

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \'+\'"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 74
    :cond_18
    add-int/lit8 v0, p1, 0x1b

    aget-char v0, p0, v0

    if-eq v0, v4, :cond_19

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \'0\'"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 75
    :cond_19
    add-int/lit8 v0, p1, 0x1c

    aget-char v0, p0, v0

    if-eq v0, v4, :cond_1a

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \'0\'"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 76
    :cond_1a
    add-int/lit8 v0, p1, 0x1d

    aget-char v0, p0, v0

    if-eq v0, v4, :cond_1b

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \'0\'"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 77
    :cond_1b
    add-int/lit8 v0, p1, 0x1e

    aget-char v0, p0, v0

    if-eq v0, v4, :cond_1c

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "expecting \'0\'"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 78
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 82
    :cond_1d
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-char v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/core/json/JsonDateReader;->isValidDayOfWeek(CCC)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 83
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "invalid day of week"

    invoke-direct {v0, v1, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 87
    :cond_1e
    add-int/lit8 v0, p1, 0x8

    aget-char v0, p0, v0

    add-int/lit8 v1, p1, 0x9

    aget-char v1, p0, v1

    add-int/lit8 v2, p1, 0xa

    aget-char v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/core/json/JsonDateReader;->getMonthIndex(CCC)I

    move-result v2

    .line 88
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1f

    .line 89
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "invalid month"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 93
    :cond_1f
    add-int/lit8 v0, p1, 0x5

    aget-char v0, p0, v0

    .line 94
    add-int/lit8 v1, p1, 0x6

    aget-char v1, p0, v1

    .line 96
    invoke-static {v0}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {v1}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_21

    .line 97
    :cond_20
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "invalid day of month"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 100
    :cond_21
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    add-int/lit16 v3, v0, -0x210

    .line 103
    add-int/lit8 v0, p1, 0xc

    aget-char v4, p0, v0

    .line 104
    add-int/lit8 v0, p1, 0xd

    aget-char v5, p0, v0

    .line 105
    add-int/lit8 v0, p1, 0xe

    aget-char v8, p0, v0

    .line 106
    add-int/lit8 v0, p1, 0xf

    aget-char v9, p0, v0

    .line 108
    invoke-static {v4}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v6

    :goto_d
    invoke-static {v5}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_23

    move v1, v6

    :goto_e
    or-int/2addr v1, v0

    invoke-static {v8}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v6

    :goto_f
    or-int/2addr v1, v0

    invoke-static {v9}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v6

    :goto_10
    or-int/2addr v0, v1

    if-eqz v0, :cond_26

    .line 109
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "invalid year"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_22
    move v0, v7

    .line 108
    goto :goto_d

    :cond_23
    move v1, v7

    goto :goto_e

    :cond_24
    move v0, v7

    goto :goto_f

    :cond_25
    move v0, v7

    goto :goto_10

    .line 112
    :cond_26
    mul-int/lit16 v0, v4, 0x3e8

    mul-int/lit8 v1, v5, 0x64

    add-int/2addr v0, v1

    mul-int/lit8 v1, v8, 0xa

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    const v1, 0xd050

    sub-int v1, v0, v1

    .line 115
    add-int/lit8 v0, p1, 0x11

    aget-char v5, p0, v0

    .line 116
    add-int/lit8 v0, p1, 0x12

    aget-char v8, p0, v0

    .line 118
    invoke-static {v5}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v6

    :goto_11
    invoke-static {v8}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_28

    move v4, v6

    :goto_12
    or-int/2addr v0, v4

    if-eqz v0, :cond_29

    .line 119
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "invalid hour"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_27
    move v0, v7

    .line 118
    goto :goto_11

    :cond_28
    move v4, v7

    goto :goto_12

    .line 122
    :cond_29
    mul-int/lit8 v0, v5, 0xa

    add-int/2addr v0, v8

    add-int/lit16 v4, v0, -0x210

    .line 125
    add-int/lit8 v0, p1, 0x14

    aget-char v8, p0, v0

    .line 126
    add-int/lit8 v0, p1, 0x15

    aget-char v9, p0, v0

    .line 128
    invoke-static {v8}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v6

    :goto_13
    invoke-static {v9}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2b

    move v5, v6

    :goto_14
    or-int/2addr v0, v5

    if-eqz v0, :cond_2c

    .line 129
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "invalid minute"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2a
    move v0, v7

    .line 128
    goto :goto_13

    :cond_2b
    move v5, v7

    goto :goto_14

    .line 132
    :cond_2c
    mul-int/lit8 v0, v8, 0xa

    add-int/2addr v0, v9

    add-int/lit16 v5, v0, -0x210

    .line 135
    add-int/lit8 v0, p1, 0x17

    aget-char v8, p0, v0

    .line 136
    add-int/lit8 v0, p1, 0x18

    aget-char v9, p0, v0

    .line 138
    invoke-static {v8}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v6

    :goto_15
    invoke-static {v9}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_2e

    :goto_16
    or-int/2addr v0, v6

    if-eqz v0, :cond_2f

    .line 139
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "invalid second"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2d
    move v0, v7

    .line 138
    goto :goto_15

    :cond_2e
    move v6, v7

    goto :goto_16

    .line 142
    :cond_2f
    mul-int/lit8 v0, v8, 0xa

    add-int/2addr v0, v9

    add-int/lit16 v6, v0, -0x210

    .line 145
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 146
    sget-object v1, Lcom/dropbox/core/json/JsonDateReader;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 147
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
