.class public final Lcom/google/api/services/drive/model/User;
.super Lcom/google/api/client/json/GenericJson;
.source "User.java"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private me:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private permissionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private photoLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/User;
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/User;

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
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getMe()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->me:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPermissionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->permissionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->photoLink:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/User;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/User;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;
    .locals 1

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->displayName:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->emailAddress:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->kind:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public setMe(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->me:Ljava/lang/Boolean;

    .line 146
    return-object p0
.end method

.method public setPermissionId(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->permissionId:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setPhotoLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->photoLink:Ljava/lang/String;

    .line 180
    return-object p0
.end method
