.class Lcom/l/a/a/a;
.super Ljava/lang/Object;
.source "MimeTypeFile.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/l/a/a/a;->d:Ljava/util/Vector;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/l/a/a/a;->a:I

    .line 231
    iput-object p1, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/l/a/a/a;->b:I

    .line 233
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 239
    :goto_0
    iget v0, p0, Lcom/l/a/a/a;->a:I

    iget v1, p0, Lcom/l/a/a/a;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    iget v1, p0, Lcom/l/a/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lcom/l/a/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/a;->a:I

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lcom/l/a/a/a;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/l/a/a/a;->c()V

    .line 255
    iget v1, p0, Lcom/l/a/a/a;->a:I

    iget v2, p0, Lcom/l/a/a/a;->b:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 266
    iget-object v0, p0, Lcom/l/a/a/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 267
    if-lez v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/l/a/a/a;->d:Ljava/util/Vector;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/l/a/a/a;->d:Ljava/util/Vector;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 313
    :goto_0
    return-object v0

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/l/a/a/a;->c()V

    .line 274
    iget v0, p0, Lcom/l/a/a/a;->a:I

    iget v1, p0, Lcom/l/a/a/a;->b:I

    if-lt v0, v1, :cond_1

    .line 275
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 278
    :cond_1
    iget v1, p0, Lcom/l/a/a/a;->a:I

    .line 279
    iget-object v0, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 280
    if-ne v0, v5, :cond_7

    .line 281
    iget v0, p0, Lcom/l/a/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/a;->a:I

    .line 282
    const/4 v0, 0x0

    .line 283
    :cond_2
    :goto_1
    iget v2, p0, Lcom/l/a/a/a;->a:I

    iget v3, p0, Lcom/l/a/a/a;->b:I

    if-ge v2, v3, :cond_8

    .line 284
    iget-object v2, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    iget v3, p0, Lcom/l/a/a/a;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/l/a/a/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 285
    if-ne v2, v6, :cond_3

    .line 286
    iget v0, p0, Lcom/l/a/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/a;->a:I

    .line 287
    const/4 v0, 0x1

    .line 288
    goto :goto_1

    :cond_3
    if-ne v2, v5, :cond_2

    .line 291
    if-eqz v0, :cond_6

    .line 292
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    add-int/lit8 v0, v1, 0x1

    :goto_2
    iget v1, p0, Lcom/l/a/a/a;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 294
    iget-object v1, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 295
    if-eq v1, v6, :cond_4

    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 293
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_6
    iget-object v0, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/l/a/a/a;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_7
    const-string/jumbo v2, "="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 305
    iget v0, p0, Lcom/l/a/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/a;->a:I

    .line 313
    :cond_8
    iget-object v0, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    iget v2, p0, Lcom/l/a/a/a;->a:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 308
    :cond_9
    :goto_3
    iget v0, p0, Lcom/l/a/a/a;->a:I

    iget v2, p0, Lcom/l/a/a/a;->b:I

    if-ge v0, v2, :cond_8

    const-string/jumbo v0, "="

    iget-object v2, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    iget v3, p0, Lcom/l/a/a/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/l/a/a/a;->c:Ljava/lang/String;

    iget v2, p0, Lcom/l/a/a/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_8

    .line 310
    iget v0, p0, Lcom/l/a/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/a;->a:I

    goto :goto_3
.end method
