.class public Lcom/google/gdata/data/docs/SpreadsheetEntry;
.super Lcom/google/gdata/data/docs/DocumentListEntry;
.source "SpreadsheetEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#spreadsheet"
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#spreadsheet"

.field public static final LABEL:Ljava/lang/String; = "spreadsheet"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string/jumbo v1, "http://schemas.google.com/g/2005#kind"

    const-string/jumbo v2, "http://schemas.google.com/docs/2007#spreadsheet"

    const-string/jumbo v3, "spreadsheet"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/SpreadsheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/SpreadsheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/SpreadsheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/SpreadsheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getDefaultWorksheet()Lcom/google/gdata/data/spreadsheet/WorksheetEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 119
    const-string/jumbo v0, "http://schemas.google.com/spreadsheets/2006#worksheetsfeed"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/docs/SpreadsheetEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/google/gdata/data/docs/SpreadsheetEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v1, v1, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;

    invoke-virtual {v1, v2, v0}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;

    return-object v0
.end method

.method public getWorksheetFeedUrl()Ljava/net/URL;
    .locals 3

    .prologue
    .line 86
    const-string/jumbo v0, "http://schemas.google.com/spreadsheets/2006#worksheetsfeed"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/docs/SpreadsheetEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 90
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error in GData server"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getWorksheets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/spreadsheet/WorksheetEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/gdata/data/docs/SpreadsheetEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Lcom/google/gdata/data/docs/SpreadsheetEntry;->getWorksheetFeedUrl()Ljava/net/URL;

    move-result-object v1

    const-class v2, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;

    .line 107
    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
