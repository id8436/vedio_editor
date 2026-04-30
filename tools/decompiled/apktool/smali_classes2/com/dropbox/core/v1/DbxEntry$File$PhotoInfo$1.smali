.class final Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-object v2, v1

    .line 402
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 403
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 405
    const-string/jumbo v3, "lat_long"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    sget-object v0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File$Location;

    move-object v1, v2

    :goto_1
    move-object v2, v1

    move-object v1, v0

    .line 412
    goto :goto_0

    .line 407
    :cond_0
    const-string/jumbo v3, "time_taken"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    sget-object v0, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/json/JsonReader;->readOptional(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 410
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 413
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 414
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;-><init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$File$Location;)V

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
    .line 394
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    move-result-object v0

    return-object v0
.end method
