.class Lcom/google/gdata/util/common/base/UnicodeEscaper$1;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field decodedChars:[C

.field pendingHighSurrogate:I

.field final synthetic this$0:Lcom/google/gdata/util/common/base/UnicodeEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/base/UnicodeEscaper;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lcom/google/gdata/util/common/base/UnicodeEscaper;

    iput-object p2, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 258
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    return-void
.end method

.method private outputChars([CI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 369
    iget-object v1, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 330
    iget v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    if-eq v0, v2, :cond_2

    .line 333
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected low surrogate character but got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lcom/google/gdata/util/common/base/UnicodeEscaper;

    iget v1, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v1, v1

    invoke-static {v1, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 340
    if-eqz v0, :cond_1

    .line 341
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    .line 346
    :goto_0
    iput v2, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 364
    :goto_1
    return-object p0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget v1, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v1, v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 344
    iget-object v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 347
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iput p1, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    goto :goto_1

    .line 351
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected low surrogate character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lcom/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 358
    if-eqz v0, :cond_5

    .line 359
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_1

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 266
    .line 267
    if-ge p2, p3, :cond_2

    .line 272
    iget v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    if-eq v0, v4, :cond_8

    .line 275
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 276
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected low surrogate character but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lcom/google/gdata/util/common/base/UnicodeEscaper;

    iget v3, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v3, v3

    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v1

    .line 282
    if-eqz v1, :cond_3

    .line 285
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    .line 286
    add-int/lit8 p2, p2, 0x1

    .line 292
    :goto_0
    iput v4, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 296
    :goto_1
    iget-object v1, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lcom/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v1, p1, v0, p3}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 297
    if-le v1, p2, :cond_1

    .line 298
    iget-object v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 300
    :cond_1
    if-ne v1, p3, :cond_4

    .line 326
    :cond_2
    :goto_2
    return-object p0

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget v2, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v2, v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 304
    :cond_4
    invoke-static {p1, v1, p3}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 305
    if-gez v0, :cond_5

    .line 308
    neg-int v0, v0

    iput v0, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    goto :goto_2

    .line 312
    :cond_5
    iget-object v2, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lcom/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v2, v0}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    .line 313
    if-eqz v2, :cond_6

    .line 314
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    .line 322
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    :goto_4
    add-int p2, v1, v0

    move v0, p2

    .line 324
    goto :goto_1

    .line 318
    :cond_6
    iget-object v2, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v2

    .line 319
    iget-object v3, p0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    invoke-direct {p0, v3, v2}, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_3

    .line 322
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    move v0, p2

    goto :goto_1
.end method
