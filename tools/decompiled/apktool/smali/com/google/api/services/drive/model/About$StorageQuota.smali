.class public final Lcom/google/api/services/drive/model/About$StorageQuota;
.super Lcom/google/api/client/json/GenericJson;
.source "About.java"


# instance fields
.field private limit:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private usage:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private usageInDrive:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private usageInDriveTrash:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$StorageQuota;->clone()Lcom/google/api/services/drive/model/About$StorageQuota;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$StorageQuota;->clone()Lcom/google/api/services/drive/model/About$StorageQuota;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/About$StorageQuota;
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$StorageQuota;

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
    .line 295
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$StorageQuota;->clone()Lcom/google/api/services/drive/model/About$StorageQuota;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$StorageQuota;->limit:Ljava/lang/Long;

    return-object v0
.end method

.method public getUsage()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$StorageQuota;->usage:Ljava/lang/Long;

    return-object v0
.end method

.method public getUsageInDrive()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$StorageQuota;->usageInDrive:Ljava/lang/Long;

    return-object v0
.end method

.method public getUsageInDriveTrash()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$StorageQuota;->usageInDriveTrash:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$StorageQuota;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$StorageQuota;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$StorageQuota;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$StorageQuota;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$StorageQuota;
    .locals 1

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$StorageQuota;

    return-object v0
.end method

.method public setLimit(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About$StorageQuota;
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$StorageQuota;->limit:Ljava/lang/Long;

    .line 339
    return-object p0
.end method

.method public setUsage(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About$StorageQuota;
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$StorageQuota;->usage:Ljava/lang/Long;

    .line 356
    return-object p0
.end method

.method public setUsageInDrive(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About$StorageQuota;
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$StorageQuota;->usageInDrive:Ljava/lang/Long;

    .line 373
    return-object p0
.end method

.method public setUsageInDriveTrash(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About$StorageQuota;
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$StorageQuota;->usageInDriveTrash:Ljava/lang/Long;

    .line 390
    return-object p0
.end method
