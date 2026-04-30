.class public Lcom/google/android/exoplayer/metadata/Id3Parser;
.super Ljava/lang/Object;
.source "Id3Parser.java"

# interfaces
.implements Lcom/google/android/exoplayer/metadata/MetadataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/metadata/MetadataParser",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    packed-switch p0, :pswitch_data_0

    .line 154
    const-string/jumbo v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    const-string/jumbo v0, "ISO-8859-1"

    goto :goto_0

    .line 148
    :pswitch_1
    const-string/jumbo v0, "UTF-16"

    goto :goto_0

    .line 150
    :pswitch_2
    const-string/jumbo v0, "UTF-16BE"

    goto :goto_0

    .line 152
    :pswitch_3
    const-string/jumbo v0, "UTF-8"

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static indexOf([BIB)I
    .locals 1

    .prologue
    .line 84
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 85
    aget-byte v0, p0, p1

    if-ne v0, p2, :cond_0

    .line 89
    :goto_1
    return p1

    .line 84
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    array-length p1, p0

    goto :goto_1
.end method

.method private static indexOfNot([BIB)I
    .locals 1

    .prologue
    .line 93
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 94
    aget-byte v0, p0, p1

    if-eq v0, p2, :cond_0

    .line 98
    :goto_1
    return p1

    .line 93
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    array-length p1, p0

    goto :goto_1
.end method

.method private static parseId3Header(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 112
    const/16 v3, 0x49

    if-ne v0, v3, :cond_0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_0

    const/16 v3, 0x33

    if-eq v2, v3, :cond_1

    .line 113
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v4, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    .line 113
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 119
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 122
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 124
    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 125
    add-int/lit8 v3, v2, -0x4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 127
    :cond_2
    sub-int/2addr v0, v2

    .line 131
    :cond_3
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 132
    add-int/lit8 v0, v0, -0xa

    .line 135
    :cond_4
    return v0
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BI)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/metadata/Id3Parser;->parse([BI)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse([BI)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([BI)V

    .line 42
    invoke-static {v2}, Lcom/google/android/exoplayer/metadata/Id3Parser;->parseId3Header(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v0

    .line 44
    :goto_0
    if-lez v0, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 46
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 47
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 48
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 49
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v7

    .line 50
    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 80
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 57
    const/16 v8, 0x54

    if-ne v3, v8, :cond_2

    const/16 v8, 0x58

    if-ne v4, v8, :cond_2

    const/16 v8, 0x58

    if-ne v5, v8, :cond_2

    const/16 v8, 0x58

    if-ne v6, v8, :cond_2

    .line 58
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 59
    invoke-static {v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v3

    .line 60
    add-int/lit8 v4, v7, -0x1

    new-array v4, v4, [B

    .line 61
    const/4 v5, 0x0

    add-int/lit8 v6, v7, -0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 63
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOf([BIB)I

    move-result v5

    .line 64
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v4, v8, v5, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 65
    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOfNot([BIB)I

    move-result v5

    .line 66
    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOf([BIB)I

    move-result v8

    .line 67
    new-instance v9, Ljava/lang/String;

    sub-int/2addr v8, v5

    invoke-direct {v9, v4, v5, v8, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 69
    const-string/jumbo v3, "TXXX"

    new-instance v4, Lcom/google/android/exoplayer/metadata/TxxxMetadata;

    invoke-direct {v4, v6, v9}, Lcom/google/android/exoplayer/metadata/TxxxMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_1
    add-int/lit8 v3, v7, 0xa

    sub-int/2addr v0, v3

    .line 78
    goto :goto_0

    .line 71
    :cond_2
    const-string/jumbo v8, "%c%c%c%c"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 72
    new-array v4, v7, [B

    .line 73
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 74
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
