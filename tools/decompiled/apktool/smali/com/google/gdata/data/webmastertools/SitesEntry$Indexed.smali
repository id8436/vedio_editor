.class public Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;
.super Lcom/google/gdata/data/webmastertools/BoolValueConstruct;
.source "SitesEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "indexed"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 399
    const-string/jumbo v0, "indexed"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;-><init>(Ljava/lang/String;)V

    .line 400
    return-void
.end method
