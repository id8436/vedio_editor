.class public Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;
.super Lcom/google/gdata/data/webmastertools/CrawlRateConstruct;
.source "SitesEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "crawl-rate"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 453
    const-string/jumbo v0, "crawl-rate"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlRateConstruct;-><init>(Ljava/lang/String;)V

    .line 454
    return-void
.end method
