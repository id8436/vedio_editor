.class final Lcom/dropbox/core/v1/DbxEntry$WithChildren$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$WithChildren;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxEntry$WithChildren;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 682
    new-instance v0, Lcom/dropbox/core/util/Collector$ArrayListCollector;

    invoke-direct {v0}, Lcom/dropbox/core/util/Collector$ArrayListCollector;-><init>()V

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxEntry;->read(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    .line 683
    new-instance v1, Lcom/dropbox/core/v1/DbxEntry$WithChildren;

    iget-object v2, v0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    iget-object v3, v0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    iget-object v0, v0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/core/v1/DbxEntry$WithChildren;-><init>(Lcom/dropbox/core/v1/DbxEntry;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
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
    .line 678
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$WithChildren$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxEntry$WithChildren;

    move-result-object v0

    return-object v0
.end method
