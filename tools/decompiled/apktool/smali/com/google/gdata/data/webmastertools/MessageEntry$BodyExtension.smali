.class public Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;
.super Lcom/google/gdata/data/ValueConstruct;
.source "MessageEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "body"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 303
    const-string/jumbo v0, "body"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/ValueConstruct;-><init>(Ljava/lang/String;)V

    .line 304
    return-void
.end method
