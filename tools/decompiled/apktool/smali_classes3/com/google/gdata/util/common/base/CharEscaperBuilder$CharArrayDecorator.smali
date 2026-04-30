.class Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;
.super Lcom/google/gdata/util/common/base/CharEscaper;
.source "CharEscaperBuilder.java"


# instance fields
.field private final replaceLength:I

.field private final replacements:[[C


# direct methods
.method public constructor <init>([[C)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharEscaper;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 44
    array-length v0, p1

    iput v0, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    .line 45
    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 54
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 56
    iget-object v3, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v2, v3, v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 60
    :cond_0
    return-object p1

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected escape(C)[C
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
