.class public final Lcom/dropbox/core/v1/DbxDeltaC$Entry;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxDeltaC.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Lcom/dropbox/core/util/Dumpable;",
        ">",
        "Lcom/dropbox/core/util/Dumpable;"
    }
.end annotation


# instance fields
.field public final lcPath:Ljava/lang/String;

.field public final metadata:Lcom/dropbox/core/util/Dumpable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TMD;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxDeltaC$Entry;->lcPath:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxDeltaC$Entry;->metadata:Lcom/dropbox/core/util/Dumpable;

    .line 227
    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v0, "lcPath"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxDeltaC$Entry;->lcPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 232
    const-string/jumbo v0, "metadata"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxDeltaC$Entry;->metadata:Lcom/dropbox/core/util/Dumpable;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 233
    return-void
.end method
