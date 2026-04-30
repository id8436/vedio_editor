.class public final Lcom/adobe/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x2b

    const/4 v1, 0x0

    const/16 v6, 0x2d

    const/4 v5, 0x5

    .line 90
    if-nez p0, :cond_0

    .line 92
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Parameter must not be null"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 277
    :cond_1
    return-object p1

    .line 99
    :cond_2
    new-instance v3, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v3, p0}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v1}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    .line 104
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 108
    :cond_3
    const-string/jumbo v0, "Invalid year in date string"

    const/16 v2, 0x270f

    invoke-virtual {v3, v0, v2}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    if-eq v2, v6, :cond_4

    .line 111
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after year"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 114
    :cond_4
    invoke-virtual {v3, v1}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v2

    if-ne v2, v6, :cond_5

    .line 116
    neg-int v0, v0

    .line 118
    :cond_5
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setYear(I)V

    .line 119
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 127
    const-string/jumbo v0, "Invalid month in date string"

    const/16 v2, 0xc

    invoke-virtual {v3, v0, v2}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 128
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    if-eq v2, v6, :cond_6

    .line 130
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after month"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 132
    :cond_6
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 133
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 141
    const-string/jumbo v0, "Invalid day in date string"

    const/16 v2, 0x1f

    invoke-virtual {v3, v0, v2}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v4, 0x54

    if-eq v2, v4, :cond_7

    .line 144
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after day"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 146
    :cond_7
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    .line 147
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 154
    const-string/jumbo v0, "Invalid hour in date string"

    const/16 v2, 0x17

    invoke-virtual {v3, v0, v2}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 155
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setHour(I)V

    .line 156
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_9

    .line 164
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 165
    const-string/jumbo v0, "Invalid minute in date string"

    const/16 v2, 0x3b

    invoke-virtual {v3, v0, v2}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 166
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 167
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_8

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    if-eq v2, v8, :cond_8

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    if-eq v2, v7, :cond_8

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    if-eq v2, v6, :cond_8

    .line 169
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after minute"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 171
    :cond_8
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setMinute(I)V

    .line 174
    :cond_9
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_f

    .line 180
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 181
    const-string/jumbo v0, "Invalid whole seconds in date string"

    const/16 v2, 0x3b

    invoke-virtual {v3, v0, v2}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 182
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_a

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    if-eq v2, v8, :cond_a

    .line 183
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    if-eq v2, v7, :cond_a

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v2

    if-eq v2, v6, :cond_a

    .line 185
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after whole seconds"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 188
    :cond_a
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setSecond(I)V

    .line 189
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_c

    .line 191
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 192
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v0

    .line 193
    const-string/jumbo v2, "Invalid fractional seconds in date string"

    const v4, 0x3b9ac9ff

    invoke-virtual {v3, v2, v4}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v2

    .line 194
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 195
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v4

    if-eq v4, v8, :cond_b

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v4

    if-eq v4, v7, :cond_b

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v4

    if-eq v4, v6, :cond_b

    .line 197
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after fractional second"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 200
    :cond_b
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v4

    sub-int v0, v4, v0

    .line 201
    :goto_0
    const/16 v4, 0x9

    if-gt v0, v4, :cond_d

    .line 205
    :goto_1
    const/16 v4, 0x9

    if-lt v0, v4, :cond_e

    .line 209
    invoke-interface {p1, v2}, Lcom/adobe/xmp/XMPDateTime;->setNanoSecond(I)V

    .line 222
    :cond_c
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-ne v0, v8, :cond_10

    .line 229
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    move v0, v1

    move v2, v1

    .line 268
    :goto_2
    mul-int/lit16 v1, v1, 0xe10

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 269
    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v2, ""

    invoke-direct {v1, v0, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 271
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 274
    const-string/jumbo v1, "Invalid date string, extra chars at end"

    .line 273
    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 203
    :cond_d
    div-int/lit8 v2, v2, 0xa

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 207
    :cond_e
    mul-int/lit8 v2, v2, 0xa

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_f
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-eq v0, v8, :cond_c

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-eq v0, v7, :cond_c

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-eq v0, v6, :cond_c

    .line 214
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after time"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 231
    :cond_10
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 233
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-ne v0, v7, :cond_11

    .line 235
    const/4 v0, 0x1

    .line 247
    :goto_3
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 249
    const-string/jumbo v2, "Invalid time zone hour in date string"

    const/16 v4, 0x17

    invoke-virtual {v3, v2, v4}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v2

    .line 250
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 252
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v4, 0x3a

    if-ne v1, v4, :cond_13

    .line 254
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 257
    const-string/jumbo v1, "Invalid time zone minute in date string"

    const/16 v4, 0x3b

    invoke-virtual {v3, v1, v4}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 258
    goto :goto_2

    .line 237
    :cond_11
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-ne v0, v6, :cond_12

    .line 239
    const/4 v0, -0x1

    .line 240
    goto :goto_3

    .line 243
    :cond_12
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 261
    :cond_13
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after time zone hour"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_14
    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    goto/16 :goto_2

    :cond_15
    move v0, v1

    move v2, v1

    goto/16 :goto_2
.end method

.method public static render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 9

    .prologue
    const v8, 0x36ee80

    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "0000"

    new-instance v3, Ljava/text/DecimalFormatSymbols;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 321
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 328
    :cond_0
    const-string/jumbo v2, "\'-\'00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 329
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    if-nez v2, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_1
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    const-string/jumbo v2, "00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 344
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    :cond_2
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    int-to-double v2, v2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 353
    const-string/jumbo v4, ":00.#########"

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :cond_3
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasTimeZone()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 362
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 363
    if-nez v2, :cond_5

    .line 366
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 370
    :cond_5
    div-int v3, v2, v8

    .line 371
    rem-int/2addr v2, v8

    const v4, 0xea60

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 372
    const-string/jumbo v4, "+00;-00"

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 373
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string/jumbo v3, ":00"

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 375
    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
