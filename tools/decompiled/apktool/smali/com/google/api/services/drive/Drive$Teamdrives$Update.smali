.class public Lcom/google/api/services/drive/Drive$Teamdrives$Update;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/TeamDrive;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "teamdrives/{teamDriveId}"


# instance fields
.field private teamDriveId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Teamdrives;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Teamdrives;Ljava/lang/String;Lcom/google/api/services/drive/model/TeamDrive;)V
    .locals 6

    .prologue
    .line 7684
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->this$1:Lcom/google/api/services/drive/Drive$Teamdrives;

    .line 7685
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Teamdrives;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "PATCH"

    const-string/jumbo v3, "teamdrives/{teamDriveId}"

    const-class v5, Lcom/google/api/services/drive/model/TeamDrive;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7686
    const-string/jumbo v0, "Required parameter teamDriveId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->teamDriveId:Ljava/lang/String;

    .line 7687
    return-void
.end method


# virtual methods
.method public getTeamDriveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7731
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->teamDriveId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .prologue
    .line 7742
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .prologue
    .line 7691
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .prologue
    .line 7696
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .prologue
    .line 7701
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .prologue
    .line 7706
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .prologue
    .line 7711
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .prologue
    .line 7716
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method

.method public setTeamDriveId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 0

    .prologue
    .line 7736
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->teamDriveId:Ljava/lang/String;

    .line 7737
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .prologue
    .line 7721
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    move-result-object v0

    return-object v0
.end method
