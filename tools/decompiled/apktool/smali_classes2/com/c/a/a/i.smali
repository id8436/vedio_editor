.class public final Lcom/c/a/a/i;
.super Ljava/lang/Object;
.source "UriUtil.java"


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:[C

.field static final c:[C

.field private static final d:Ljava/util/BitSet;

.field private static final e:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x5e

    const/16 v6, 0x5c

    const/16 v5, 0x25

    const/16 v4, 0x22

    const/4 v1, 0x0

    .line 39
    const-string/jumbo v0, "%[0-9A-Fa-f]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/i;->a:Ljava/util/regex/Pattern;

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/c/a/a/i;->b:[C

    .line 43
    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/c/a/a/i;->c:[C

    .line 52
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    move v0, v1

    .line 53
    :goto_0
    sget-object v2, Lcom/c/a/a/i;->b:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 55
    sget-object v2, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    sget-object v3, Lcom/c/a/a/i;->b:[C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 58
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 59
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 60
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 61
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 62
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 63
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 65
    :goto_1
    sget-object v0, Lcom/c/a/a/i;->c:[C

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 67
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    sget-object v2, Lcom/c/a/a/i;->c:[C

    aget-char v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    .line 71
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 73
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 76
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 77
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 78
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 79
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 80
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 81
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 82
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 83
    return-void

    .line 41
    nop

    :array_0
    .array-data 2
        0x3as
        0x2fs
        0x2cs
        0x3fs
        0x23s
        0x5bs
        0x5ds
        0x40s
    .end array-data

    .line 43
    :array_1
    .array-data 2
        0x21s
        0x24s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x3bs
        0x3ds
        0x3cs
        0x3es
        0x7bs
        0x7ds
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 101
    sget-object v0, Lcom/c/a/a/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    aput v4, v3, v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    aput v4, v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 114
    aget v5, v0, v2

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    invoke-static {v1, v5}, Lcom/c/a/a/i;->a(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    aget v1, v0, v2

    aget v5, v0, v6

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    aget v0, v0, v6

    move v1, v0

    .line 118
    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    invoke-static {v0, v1}, Lcom/c/a/a/i;->a(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_2
    return-object v0

    :cond_2
    sget-object v0, Lcom/c/a/a/i;->e:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lcom/c/a/a/i;->a(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 143
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 145
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 147
    aget-byte v3, v2, v0

    .line 149
    and-int/lit16 v4, v3, 0xff

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    if-gt v3, v4, :cond_1

    .line 151
    :cond_0
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 152
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 153
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 154
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 162
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/c/a/a/i;->d:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lcom/c/a/a/i;->a(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
