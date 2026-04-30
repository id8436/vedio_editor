.class public Lcom/google/gdata/data/youtube/YtRelationship;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtRelationship.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "relationship"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# instance fields
.field private status:Lcom/google/gdata/data/youtube/YtRelationship$Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/youtube/YtRelationship$Status;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtRelationship;->status:Lcom/google/gdata/data/youtube/YtRelationship$Status;

    .line 50
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 84
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/youtube/YtRelationship$Status;->valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YtRelationship$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtRelationship;->status:Lcom/google/gdata/data/youtube/YtRelationship$Status;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v1, "Invalid relationship value"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatus()Lcom/google/gdata/data/youtube/YtRelationship$Status;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtRelationship;->status:Lcom/google/gdata/data/youtube/YtRelationship$Status;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtRelationship;->status:Lcom/google/gdata/data/youtube/YtRelationship$Status;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtRelationship;->status:Lcom/google/gdata/data/youtube/YtRelationship$Status;

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtRelationship$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setStatus(Lcom/google/gdata/data/youtube/YtRelationship$Status;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtRelationship;->status:Lcom/google/gdata/data/youtube/YtRelationship$Status;

    .line 68
    return-void
.end method
