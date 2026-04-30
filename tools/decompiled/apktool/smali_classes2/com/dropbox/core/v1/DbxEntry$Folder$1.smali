.class final Lcom/dropbox/core/v1/DbxEntry$Folder$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$Folder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxEntry$Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v1

    .line 159
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxEntry;->read(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    .line 160
    instance-of v2, v0, Lcom/dropbox/core/v1/DbxEntry$Folder;

    if-nez v2, :cond_0

    .line 161
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "Expecting a file entry, got a folder entry"

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 163
    :cond_0
    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$Folder;

    return-object v0
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
    .line 154
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$Folder$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxEntry$Folder;

    move-result-object v0

    return-object v0
.end method
