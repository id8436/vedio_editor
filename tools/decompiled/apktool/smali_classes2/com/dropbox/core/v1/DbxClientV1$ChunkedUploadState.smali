.class final Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxClientV1.java"


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final offset:J

.field public final uploadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 888
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->Reader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 875
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'uploadId\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'uploadId\' can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'offset\' can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->uploadId:Ljava/lang/String;

    .line 879
    iput-wide p2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    .line 880
    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 4

    .prologue
    .line 884
    const-string/jumbo v0, "uploadId"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 885
    const-string/jumbo v0, "offset"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    .line 886
    return-void
.end method
