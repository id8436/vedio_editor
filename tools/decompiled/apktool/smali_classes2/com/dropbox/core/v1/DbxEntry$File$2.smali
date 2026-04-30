.class final Lcom/dropbox/core/v1/DbxEntry$File$2;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-virtual {p1}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v1

    .line 331
    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/dropbox/core/v1/DbxEntry;->access$100(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v2

    .line 332
    if-nez v2, :cond_0

    .line 337
    :goto_0
    return-object v0

    .line 333
    :cond_0
    iget-object v0, v2, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    .line 334
    instance-of v2, v0, Lcom/dropbox/core/v1/DbxEntry$File;

    if-nez v2, :cond_1

    .line 335
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "Expecting a file entry, got a folder entry"

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 337
    :cond_1
    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File;

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$2;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0
.end method
