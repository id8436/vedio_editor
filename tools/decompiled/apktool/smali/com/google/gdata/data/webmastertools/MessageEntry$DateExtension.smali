.class public Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;
.super Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;
.source "MessageEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "date"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 277
    const-string/jumbo v0, "date"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;-><init>(Ljava/lang/String;)V

    .line 278
    return-void
.end method
