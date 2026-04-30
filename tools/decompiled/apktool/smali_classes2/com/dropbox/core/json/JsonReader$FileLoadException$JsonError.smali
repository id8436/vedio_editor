.class public final Lcom/dropbox/core/json/JsonReader$FileLoadException$JsonError;
.super Lcom/dropbox/core/json/JsonReader$FileLoadException;
.source "JsonReader.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final reason:Lcom/dropbox/core/json/JsonReadException;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/dropbox/core/json/JsonReadException;)V
    .locals 2

    .prologue
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dropbox/core/json/JsonReadException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/json/JsonReader$FileLoadException;-><init>(Ljava/lang/String;)V

    .line 559
    iput-object p2, p0, Lcom/dropbox/core/json/JsonReader$FileLoadException$JsonError;->reason:Lcom/dropbox/core/json/JsonReadException;

    .line 560
    return-void
.end method
