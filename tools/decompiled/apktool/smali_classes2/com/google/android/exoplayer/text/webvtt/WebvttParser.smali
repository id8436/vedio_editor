.class public Lcom/google/android/exoplayer/text/webvtt/WebvttParser;
.super Ljava/lang/Object;
.source "WebvttParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# static fields
.field public static final EXO_HEADER:Ljava/lang/String; = "EXO-HEADER"

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP_OFFSET:Ljava/util/regex/Pattern;

.field public static final OFFSET:Ljava/lang/String; = "OFFSET:"

.field private static final SAMPLING_RATE:J = 0x5aL

.field private static final WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

.field private static final WEBVTT_CUE_IDENTIFIER_STRING:Ljava/lang/String; = "^(?!.*(-->)).*$"

.field private static final WEBVTT_CUE_TAG_STRING:Ljava/lang/String; = "\\<.*?>"

.field private static final WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

.field private static final WEBVTT_METADATA_HEADER_STRING:Ljava/lang/String; = "\\S*[:=]\\S*"

.field private static final WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final WEBVTT_TIMESTAMP_STRING:Ljava/lang/String; = "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"


# instance fields
.field private final filterTags:Z

.field private final strictParsing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "\\S*[:=]\\S*"

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

    .line 60
    const-string/jumbo v0, "^(?!.*(-->)).*$"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

    .line 64
    const-string/jumbo v0, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 66
    const-string/jumbo v0, "OFFSET:\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->MEDIA_TIMESTAMP_OFFSET:Ljava/util/regex/Pattern;

    .line 67
    const-string/jumbo v0, "MPEGTS:\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;-><init>(ZZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->strictParsing:Z

    .line 80
    iput-boolean p2, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->filterTags:Z

    .line 81
    return-void
.end method

.method private static parseTimestampUs(Ljava/lang/String;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v0, 0x0

    .line 231
    const-string/jumbo v1, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v1, "has invalid format"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    const-string/jumbo v1, "\\."

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 236
    const-wide/16 v2, 0x0

    .line 237
    aget-object v4, v1, v0

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 238
    const-wide/16 v8, 0x3c

    mul-long/2addr v2, v8

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    mul-long/2addr v2, v10

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v2

    mul-long/2addr v0, v10

    return-wide v0
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 204
    const-string/jumbo v0, "text/vtt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getAdjustedStartTime(J)J
    .locals 1

    .prologue
    .line 208
    return-wide p1
.end method

.method protected handleNoncompliantLine(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->strictParsing:Z

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    return-void
.end method

.method public bridge synthetic parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    .line 86
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const-wide/16 v0, 0x0

    .line 90
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 95
    if-nez v2, :cond_0

    .line 96
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Expected WEBVTT or EXO-HEADER. Got null"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    const-string/jumbo v3, "EXO-HEADER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    sget-object v3, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->MEDIA_TIMESTAMP_OFFSET:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 107
    :cond_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 108
    if-nez v2, :cond_2

    .line 109
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Expected WEBVTT. Got null"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v10, v2

    move-wide v2, v0

    move-object v0, v10

    .line 113
    const-string/jumbo v1, "WEBVTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "\ufeffWEBVTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected WEBVTT. Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x5a

    div-long/2addr v0, v4

    sub-long/2addr v0, v2

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->getAdjustedStartTime(J)J

    move-result-wide p3

    .line 119
    :cond_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 120
    if-nez v0, :cond_5

    .line 122
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Expected an empty line after webvtt header"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 147
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 149
    sget-object v1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_6
    sget-object v1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 159
    const-string/jumbo v6, ""

    .line 162
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_9

    .line 163
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected cue start time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_7
    sget-object v1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_8

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->handleNoncompliantLine(Ljava/lang/String;)V

    .line 133
    :cond_8
    const-string/jumbo v1, "X-TIMESTAMP-MAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    sget-object v1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_3

    .line 137
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, p3

    .line 169
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_a

    .line 170
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected cue end time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_a
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v0

    add-long v4, v0, p3

    .line 176
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->processCueText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 180
    :cond_b
    new-instance v1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$WebvttCue;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$WebvttCue;-><init>(JJLjava/lang/String;)V

    .line 181
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 184
    :cond_c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 185
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 188
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 189
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [J

    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 191
    mul-int/lit8 v4, v1, 0x2

    .line 192
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$WebvttCue;

    .line 193
    iget-wide v8, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$WebvttCue;->startTime:J

    aput-wide v8, v3, v4

    .line 194
    add-int/lit8 v4, v4, 0x1

    iget-wide v8, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$WebvttCue;->endTime:J

    aput-wide v8, v3, v4

    .line 195
    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$WebvttCue;->text:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 198
    :cond_d
    new-instance v0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;

    invoke-direct {v0, v2, p3, p4, v3}, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;-><init>([Ljava/lang/String;J[J)V

    .line 199
    return-object v0
.end method

.method protected processCueText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->filterTags:Z

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "\\<.*?>"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "&lt;"

    const-string/jumbo v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "&gt;"

    const-string/jumbo v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string/jumbo v1, "&nbsp;"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string/jumbo v1, "&amp;"

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    :cond_0
    return-object p1
.end method
