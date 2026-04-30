.class public final Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
.super Lcom/google/api/client/json/GenericJson;
.source "File.java"


# instance fields
.field private durationMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2631
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 1

    .prologue
    .line 2712
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->durationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2631
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2631
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 1

    .prologue
    .line 2707
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    return-object v0
.end method

.method public setDurationMillis(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 0

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->durationMillis:Ljava/lang/Long;

    .line 2668
    return-object p0
.end method

.method public setHeight(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 0

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->height:Ljava/lang/Integer;

    .line 2685
    return-object p0
.end method

.method public setWidth(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 0

    .prologue
    .line 2701
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->width:Ljava/lang/Integer;

    .line 2702
    return-object p0
.end method
