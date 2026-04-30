.class public final Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
.super Lcom/google/api/client/json/GenericJson;
.source "TeamDrive.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private width:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private xCoordinate:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private yCoordinate:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->clone()Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->clone()Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

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
    .line 288
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->clone()Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->width:Ljava/lang/Float;

    return-object v0
.end method

.method public getXCoordinate()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->xCoordinate:Ljava/lang/Float;

    return-object v0
.end method

.method public getYCoordinate()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->yCoordinate:Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 1

    .prologue
    .line 415
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->id:Ljava/lang/String;

    .line 341
    return-object p0
.end method

.method public setWidth(Ljava/lang/Float;)Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->width:Ljava/lang/Float;

    .line 364
    return-object p0
.end method

.method public setXCoordinate(Ljava/lang/Float;)Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->xCoordinate:Ljava/lang/Float;

    .line 387
    return-object p0
.end method

.method public setYCoordinate(Ljava/lang/Float;)Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;->yCoordinate:Ljava/lang/Float;

    .line 410
    return-object p0
.end method
