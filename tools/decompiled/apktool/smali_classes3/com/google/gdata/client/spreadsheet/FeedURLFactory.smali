.class public Lcom/google/gdata/client/spreadsheet/FeedURLFactory;
.super Ljava/lang/Object;
.source "FeedURLFactory.java"


# static fields
.field private static final BASE_PATH:Ljava/lang/String; = "feeds/"

.field private static final CELLS_PATH:Ljava/lang/String; = "feeds/cells/"

.field public static final DEFAULT_SPREADSHEETS_URL:Ljava/lang/String; = "https://spreadsheets.google.com"

.field private static final LIST_PATH:Ljava/lang/String; = "feeds/list/"

.field private static final RECORD_PATH:Ljava/lang/String; = "/records/"

.field private static final SPREADSHEETS_PATH:Ljava/lang/String; = "feeds/spreadsheets/private/full"

.field private static final TABLE_PATH:Ljava/lang/String; = "/tables/"

.field private static final WORKSHEETS_PATH:Ljava/lang/String; = "feeds/worksheets/"

.field private static final instance:Lcom/google/gdata/client/spreadsheet/FeedURLFactory;


# instance fields
.field private baseUrl:Ljava/net/URL;

.field private feedCells:Ljava/net/URL;

.field private feedList:Ljava/net/URL;

.field private feedSpreadsheets:Ljava/net/URL;

.field private feedWorksheets:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;

    invoke-direct {v0}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;-><init>()V

    sput-object v0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->instance:Lcom/google/gdata/client/spreadsheet/FeedURLFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    :try_start_0
    const-string/jumbo v0, "https://spreadsheets.google.com"

    invoke-direct {p0, v0}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unexpected malformed URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-direct {p0, p1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->init(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "UTF-8 is not supported by the JVM"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefault()Lcom/google/gdata/client/spreadsheet/FeedURLFactory;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->instance:Lcom/google/gdata/client/spreadsheet/FeedURLFactory;

    return-object v0
.end method

.method public static getSpreadsheetKeyFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 279
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_4

    .line 283
    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 287
    const-string/jumbo v0, ""

    .line 289
    array-length v7, v5

    move v1, v4

    :goto_0
    if-ge v1, v7, :cond_5

    aget-object v8, v5, v1

    .line 290
    const-string/jumbo v9, "id="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 291
    const-string/jumbo v0, "id="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 292
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v5, v1

    move v1, v2

    .line 306
    :goto_1
    if-le v5, v6, :cond_4

    .line 307
    const-string/jumbo v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 308
    array-length v5, v0

    if-ne v5, v1, :cond_4

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_0
    :goto_2
    return-object v0

    .line 295
    :cond_1
    const-string/jumbo v9, "key="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 296
    const-string/jumbo v0, "key="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 297
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string/jumbo v5, "p"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    move v5, v1

    move v1, v3

    .line 302
    goto :goto_1

    .line 289
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    array-length v1, v0

    if-eq v1, v2, :cond_3

    array-length v1, v0

    if-ne v1, v3, :cond_4

    .line 319
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 323
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uknown URL format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v1, v4

    move v5, v6

    goto/16 :goto_1
.end method

.method private init(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 106
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    .line 111
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string/jumbo v2, "feeds/spreadsheets/private/full"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedSpreadsheets:Ljava/net/URL;

    .line 112
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string/jumbo v2, "feeds/worksheets/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedWorksheets:Ljava/net/URL;

    .line 113
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string/jumbo v2, "feeds/list/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedList:Ljava/net/URL;

    .line 114
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string/jumbo v2, "feeds/cells/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedCells:Ljava/net/URL;

    .line 115
    return-void
.end method

.method private makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 254
    if-nez p3, :cond_0

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "visibility is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    if-nez p4, :cond_1

    .line 258
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "projection is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v1
.end method

.method private makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spreadsheetKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    if-nez p3, :cond_1

    .line 242
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "worksheetId is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBaseUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getCellFeedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedCells:Ljava/net/URL;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getListFeedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedList:Ljava/net/URL;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getRecordFeedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spreadsheetKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "feeds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/records/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSpreadsheetsFeedUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedSpreadsheets:Ljava/net/URL;

    return-object v0
.end method

.method public getTableFeedUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spreadsheetKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "feeds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/tables/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWorksheetFeedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spreadsheetKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedWorksheets:Ljava/net/URL;

    invoke-direct {p0, p1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
