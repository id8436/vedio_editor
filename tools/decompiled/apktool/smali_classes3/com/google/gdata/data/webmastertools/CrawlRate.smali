.class public final enum Lcom/google/gdata/data/webmastertools/CrawlRate;
.super Ljava/lang/Enum;
.source "CrawlRate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/webmastertools/CrawlRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/webmastertools/CrawlRate;

.field public static final enum FASTER:Lcom/google/gdata/data/webmastertools/CrawlRate;

.field public static final enum FASTEST:Lcom/google/gdata/data/webmastertools/CrawlRate;

.field public static final enum NORMAL:Lcom/google/gdata/data/webmastertools/CrawlRate;

.field public static final enum SLOWER:Lcom/google/gdata/data/webmastertools/CrawlRate;

.field public static final enum SLOWEST:Lcom/google/gdata/data/webmastertools/CrawlRate;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlRate;

    const-string/jumbo v1, "SLOWEST"

    const-string/jumbo v2, "slowest"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/webmastertools/CrawlRate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlRate;->SLOWEST:Lcom/google/gdata/data/webmastertools/CrawlRate;

    .line 28
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlRate;

    const-string/jumbo v1, "SLOWER"

    const-string/jumbo v2, "slower"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/webmastertools/CrawlRate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlRate;->SLOWER:Lcom/google/gdata/data/webmastertools/CrawlRate;

    .line 29
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlRate;

    const-string/jumbo v1, "NORMAL"

    const-string/jumbo v2, "normal"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/webmastertools/CrawlRate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlRate;->NORMAL:Lcom/google/gdata/data/webmastertools/CrawlRate;

    .line 30
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlRate;

    const-string/jumbo v1, "FASTER"

    const-string/jumbo v2, "faster"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/webmastertools/CrawlRate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlRate;->FASTER:Lcom/google/gdata/data/webmastertools/CrawlRate;

    .line 31
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlRate;

    const-string/jumbo v1, "FASTEST"

    const-string/jumbo v2, "fastest"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/webmastertools/CrawlRate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlRate;->FASTEST:Lcom/google/gdata/data/webmastertools/CrawlRate;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gdata/data/webmastertools/CrawlRate;

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlRate;->SLOWEST:Lcom/google/gdata/data/webmastertools/CrawlRate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlRate;->SLOWER:Lcom/google/gdata/data/webmastertools/CrawlRate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlRate;->NORMAL:Lcom/google/gdata/data/webmastertools/CrawlRate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlRate;->FASTER:Lcom/google/gdata/data/webmastertools/CrawlRate;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlRate;->FASTEST:Lcom/google/gdata/data/webmastertools/CrawlRate;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlRate;->$VALUES:[Lcom/google/gdata/data/webmastertools/CrawlRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/google/gdata/data/webmastertools/CrawlRate;->value:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/gdata/data/webmastertools/CrawlRate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/google/gdata/data/webmastertools/CrawlRate;->values()[Lcom/google/gdata/data/webmastertools/CrawlRate;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 73
    invoke-virtual {v3}, Lcom/google/gdata/data/webmastertools/CrawlRate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    return-object v3

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The parameter is not a valid CrawlRate string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefault()Lcom/google/gdata/data/webmastertools/CrawlRate;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/gdata/data/webmastertools/CrawlRate;->NORMAL:Lcom/google/gdata/data/webmastertools/CrawlRate;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/webmastertools/CrawlRate;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/CrawlRate;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/webmastertools/CrawlRate;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/gdata/data/webmastertools/CrawlRate;->$VALUES:[Lcom/google/gdata/data/webmastertools/CrawlRate;

    invoke-virtual {v0}, [Lcom/google/gdata/data/webmastertools/CrawlRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/webmastertools/CrawlRate;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/CrawlRate;->value:Ljava/lang/String;

    return-object v0
.end method
