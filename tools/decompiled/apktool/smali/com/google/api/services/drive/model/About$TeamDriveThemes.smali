.class public final Lcom/google/api/services/drive/model/About$TeamDriveThemes;
.super Lcom/google/api/client/json/GenericJson;
.source "About.java"


# instance fields
.field private backgroundImageLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private colorRgb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->clone()Lcom/google/api/services/drive/model/About$TeamDriveThemes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->clone()Lcom/google/api/services/drive/model/About$TeamDriveThemes;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/About$TeamDriveThemes;
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;

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
    .line 408
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->clone()Lcom/google/api/services/drive/model/About$TeamDriveThemes;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->backgroundImageLink:Ljava/lang/String;

    return-object v0
.end method

.method public getColorRgb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->colorRgb:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->id:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$TeamDriveThemes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$TeamDriveThemes;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$TeamDriveThemes;
    .locals 1

    .prologue
    .line 484
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;

    return-object v0
.end method

.method public setBackgroundImageLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$TeamDriveThemes;
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->backgroundImageLink:Ljava/lang/String;

    .line 445
    return-object p0
.end method

.method public setColorRgb(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$TeamDriveThemes;
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->colorRgb:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$TeamDriveThemes;
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;->id:Ljava/lang/String;

    .line 479
    return-object p0
.end method
