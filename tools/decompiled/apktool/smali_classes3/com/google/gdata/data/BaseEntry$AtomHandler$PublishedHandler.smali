.class Lcom/google/gdata/data/BaseEntry$AtomHandler$PublishedHandler;
.super Lcom/google/gdata/data/Rfc3339Handler;
.source "BaseEntry.java"


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/BaseEntry$AtomHandler;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$PublishedHandler;->this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;

    invoke-direct {p0}, Lcom/google/gdata/data/Rfc3339Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 1247
    invoke-super {p0}, Lcom/google/gdata/data/Rfc3339Handler;->processEndElement()V

    .line 1248
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$PublishedHandler;->this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry$AtomHandler$PublishedHandler;->getDateTime()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->published:Lcom/google/gdata/data/DateTime;

    .line 1249
    return-void
.end method
