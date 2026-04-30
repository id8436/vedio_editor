.class public Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;
.super Lcom/google/gdata/data/ValueConstruct;
.source "MessageEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "language"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 251
    const-string/jumbo v0, "language"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/ValueConstruct;-><init>(Ljava/lang/String;)V

    .line 252
    return-void
.end method
