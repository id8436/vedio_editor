.class public Lcom/google/api/services/drive/Drive$Teamdrives$List;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/TeamDriveList;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "teamdrives"


# instance fields
.field private pageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Teamdrives;

.field private useDomainAdminAccess:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Teamdrives;)V
    .locals 6

    .prologue
    .line 7492
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->this$1:Lcom/google/api/services/drive/Drive$Teamdrives;

    .line 7493
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Teamdrives;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "GET"

    const-string/jumbo v3, "teamdrives"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/drive/model/TeamDriveList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7494
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7503
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7498
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 7548
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7564
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7580
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getUseDomainAdminAccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 7602
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->useDomainAdminAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isUseDomainAdminAccess()Z
    .locals 2

    .prologue
    .line 7637
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->useDomainAdminAccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->useDomainAdminAccess:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 7638
    :cond_0
    const/4 v0, 0x0

    .line 7640
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->useDomainAdminAccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 1

    .prologue
    .line 7645
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 1

    .prologue
    .line 7508
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 1

    .prologue
    .line 7513
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 1

    .prologue
    .line 7518
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 1

    .prologue
    .line 7523
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageSize(Ljava/lang/Integer;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 0

    .prologue
    .line 7553
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->pageSize:Ljava/lang/Integer;

    .line 7554
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 0

    .prologue
    .line 7569
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->pageToken:Ljava/lang/String;

    .line 7570
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 1

    .prologue
    .line 7528
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 0

    .prologue
    .line 7585
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->q:Ljava/lang/String;

    .line 7586
    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 1

    .prologue
    .line 7533
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method

.method public setUseDomainAdminAccess(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 0

    .prologue
    .line 7611
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives$List;->useDomainAdminAccess:Ljava/lang/Boolean;

    .line 7612
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 1

    .prologue
    .line 7538
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7476
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$List;

    move-result-object v0

    return-object v0
.end method
