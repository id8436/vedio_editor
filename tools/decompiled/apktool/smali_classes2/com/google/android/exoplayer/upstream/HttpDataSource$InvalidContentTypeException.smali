.class public final Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidContentTypeException;
.super Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# instance fields
.field public final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/DataSpec;)V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidContentTypeException;->contentType:Ljava/lang/String;

    .line 98
    return-void
.end method
