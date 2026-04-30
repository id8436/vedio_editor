.class Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;
.super Ljava/lang/Object;
.source "NormalPlayTime.java"


# static fields
.field private static final EOF:C


# instance fields
.field private current:C

.field private currentIndex:I

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->text:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->length:I

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    .line 153
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parse()J

    move-result-wide v0

    return-wide v0
.end method

.method private assertCurrentIs(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 202
    iget-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    if-eq p1, v0, :cond_0

    .line 203
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Unexpected character"

    iget v2, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method private digitValue()I
    .locals 1

    .prologue
    .line 194
    iget-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method private isDigit()Z
    .locals 2

    .prologue
    .line 198
    iget-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    iget-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next()V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    .line 209
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->length:I

    if-lt v0, v1, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->text:Ljava/lang/String;

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    goto :goto_0
.end method

.method private parse()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x3c

    const/16 v2, 0x3a

    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parseNumber()I

    move-result v0

    .line 160
    iget-char v1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    if-ne v1, v2, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    .line 163
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parseNumber()I

    move-result v1

    int-to-long v4, v1

    .line 164
    invoke-direct {p0, v2}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->assertCurrentIs(C)V

    .line 165
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    .line 166
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parseNumber()I

    move-result v1

    int-to-long v6, v1

    .line 167
    int-to-long v0, v0

    mul-long/2addr v0, v8

    add-long/2addr v0, v4

    mul-long/2addr v0, v8

    add-long/2addr v0, v6

    mul-long/2addr v0, v10

    .line 171
    :goto_0
    iget-char v2, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    .line 173
    const/16 v2, 0x64

    move v4, v2

    move v2, v3

    .line 174
    :goto_1
    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->isDigit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->digitValue()I

    move-result v5

    mul-int/2addr v5, v4

    int-to-long v6, v5

    add-long/2addr v6, v0

    .line 174
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    add-int/lit8 v0, v2, 0x1

    div-int/lit8 v1, v4, 0xa

    move v2, v0

    move v4, v1

    move-wide v0, v6

    goto :goto_1

    .line 169
    :cond_0
    int-to-long v0, v0

    mul-long/2addr v0, v10

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parseNumber()I

    .line 180
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->assertCurrentIs(C)V

    .line 181
    return-wide v0
.end method

.method private parseNumber()I
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->isDigit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    mul-int/lit8 v0, v0, 0xa

    .line 188
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->digitValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    goto :goto_0

    .line 190
    :cond_0
    return v0
.end method
