.class final Lcom/dropbox/core/v1/DbxEntry$PendingReader;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/json/JsonReader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final pendingValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/json/JsonReader;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/json/JsonReader",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    .line 949
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->reader:Lcom/dropbox/core/json/JsonReader;

    .line 950
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->pendingValue:Ljava/lang/Object;

    .line 951
    return-void
.end method

.method public static mk(Lcom/dropbox/core/json/JsonReader;Ljava/lang/Object;)Lcom/dropbox/core/v1/DbxEntry$PendingReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/json/JsonReader",
            "<TT;>;TT;)",
            "Lcom/dropbox/core/v1/DbxEntry$PendingReader",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 953
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$PendingReader;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;-><init>(Lcom/dropbox/core/json/JsonReader;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    .line 960
    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_1

    .line 961
    invoke-virtual {p1}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v0

    .line 962
    const-string/jumbo v1, "pending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "got a string, but the value wasn\'t \"pending\""

    invoke-virtual {p1}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 965
    :cond_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 966
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->pendingValue:Ljava/lang/Object;

    .line 968
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
