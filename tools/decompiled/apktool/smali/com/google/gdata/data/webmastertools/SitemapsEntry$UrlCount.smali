.class public Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;
.super Lcom/google/gdata/data/webmastertools/IntValueConstruct;
.source "SitemapsEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "sitemap-url-count"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    const-string/jumbo v0, "sitemap-url-count"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/IntValueConstruct;-><init>(Ljava/lang/String;)V

    .line 190
    return-void
.end method
