.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 178
    const-string/jumbo v0, "()<>@,;:\\\"\t .[]"

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 156
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 157
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 159
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 160
    return-void
.end method

.method private static filterToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v1

    move v0, v1

    .line 351
    :goto_0
    if-ge p1, p2, :cond_4

    .line 352
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 353
    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    if-eqz v3, :cond_0

    move v3, v0

    move v0, v1

    .line 351
    :goto_1
    add-int/lit8 p1, p1, 0x1

    move v7, v0

    move v0, v3

    move v3, v7

    goto :goto_0

    .line 361
    :cond_0
    if-nez v0, :cond_3

    .line 363
    const/16 v3, 0x5c

    if-ne v5, v3, :cond_1

    move v0, v1

    move v3, v2

    .line 364
    goto :goto_1

    .line 365
    :cond_1
    const/16 v3, 0xd

    if-ne v5, v3, :cond_2

    move v3, v0

    move v0, v2

    .line 366
    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v0

    move v0, v1

    .line 369
    goto :goto_1

    .line 373
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    move v3, v1

    .line 374
    goto :goto_1

    .line 377
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x4

    const/16 v8, 0x28

    const/16 v7, 0x22

    const/16 v6, 0x20

    const/4 v2, 0x1

    .line 234
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 235
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    .line 329
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 239
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 249
    :goto_1
    if-ne v1, v8, :cond_b

    .line 252
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    move v1, v0

    move v0, v2

    .line 253
    :goto_2
    if-lez v0, :cond_6

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v4, v5, :cond_6

    .line 255
    iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 256
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    .line 257
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    move v1, v2

    .line 254
    :cond_2
    :goto_3
    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_2

    .line 259
    :cond_3
    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 260
    goto :goto_3

    .line 261
    :cond_4
    if-ne v4, v8, :cond_5

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 263
    :cond_5
    const/16 v5, 0x29

    if-ne v4, v5, :cond_2

    .line 264
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 266
    :cond_6
    if-eqz v0, :cond_7

    .line 267
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string/jumbo v1, "Unbalanced comments"

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_7
    iget-boolean v0, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v0, :cond_9

    .line 273
    if-eqz v1, :cond_8

    .line 274
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_4
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 276
    :cond_8
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 282
    :cond_9
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    if-ne v0, v9, :cond_a

    .line 283
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto/16 :goto_0

    .line 284
    :cond_a
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v10, v1

    move v1, v0

    move v0, v10

    .line 285
    goto/16 :goto_1

    .line 289
    :cond_b
    if-ne v1, v7, :cond_11

    .line 290
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_5
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v3, v4, :cond_10

    .line 291
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 292
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_d

    .line 293
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    move v0, v2

    .line 290
    :cond_c
    :goto_6
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_5

    .line 295
    :cond_d
    const/16 v4, 0xd

    if-ne v3, v4, :cond_e

    move v0, v2

    .line 296
    goto :goto_6

    .line 297
    :cond_e
    if-ne v3, v7, :cond_c

    .line 298
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 301
    if-eqz v0, :cond_f

    .line 302
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_7
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 304
    :cond_f
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 309
    :cond_10
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string/jumbo v1, "Unbalanced quoted string"

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_11
    if-lt v1, v6, :cond_12

    const/16 v0, 0x7f

    if-ge v1, v0, :cond_12

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_13

    .line 314
    :cond_12
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 315
    new-array v2, v2, [C

    .line 316
    const/4 v0, 0x0

    aput-char v1, v2, v0

    .line 317
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_13
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_8
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v2, :cond_14

    .line 322
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    if-lt v0, v6, :cond_14

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_14

    if-eq v0, v8, :cond_14

    if-eq v0, v6, :cond_14

    if-eq v0, v7, :cond_14

    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_15

    .line 329
    :cond_14
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x1

    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_15
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_8
.end method

.method private skipWhiteSpace()I
    .locals 2

    .prologue
    .line 335
    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 338
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 339
    :goto_1
    return v0

    .line 335
    :cond_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, -0x4

    goto :goto_1
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 193
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 194
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 195
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    .line 196
    return-object v0
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 211
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 212
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 213
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    .line 214
    return-object v0
.end method
