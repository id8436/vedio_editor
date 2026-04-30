.class public Lcom/google/gdata/data/spreadsheet/WorksheetEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "WorksheetEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/spreadsheets/2006#worksheet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/spreadsheet/WorksheetEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#worksheet"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string/jumbo v1, "http://schemas.google.com/spreadsheets/2006"

    const-string/jumbo v2, "http://schemas.google.com/spreadsheets/2006#worksheet"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/spreadsheet/RowCount;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 68
    new-instance v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/spreadsheet/ColCount;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private getFeedUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v0}, Lcom/google/gdata/client/Service;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/google/gdata/client/spreadsheet/SpreadsheetService$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const-string/jumbo v0, "http://schemas.google.com/spreadsheets/2006#listfeed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/OutOfLineContent;

    check-cast v0, Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v0}, Lcom/google/gdata/data/OutOfLineContent;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2

    .prologue
    .line 84
    const-class v0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;

    invoke-static {}, Lcom/google/gdata/data/spreadsheet/RowCount;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 85
    const-class v0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;

    invoke-static {}, Lcom/google/gdata/data/spreadsheet/ColCount;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 86
    return-void
.end method

.method public getCellFeedUrl()Ljava/net/URL;
    .locals 3

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "http://schemas.google.com/spreadsheets/2006#cellsfeed"

    invoke-direct {p0, v1}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getFeedUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error in GData server"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getColCount()I
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/ColCount;->getCount()I

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListFeedUrl()Ljava/net/URL;
    .locals 3

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "http://schemas.google.com/spreadsheets/2006#listfeed"

    invoke-direct {p0, v1}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getFeedUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error in GData server"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 148
    const-class v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/RowCount;->getCount()I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColCount(I)V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/spreadsheet/ColCount;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 200
    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/spreadsheet/RowCount;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 168
    return-void
.end method
