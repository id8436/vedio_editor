.class public final Lcom/google/api/services/drive/model/TeamDrive;
.super Lcom/google/api/client/json/GenericJson;
.source "TeamDrive.java"


# instance fields
.field private backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private backgroundImageLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private colorRgb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private createdTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private themeId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 428
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/TeamDrive;
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/TeamDrive;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageFile()Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    return-object v0
.end method

.method public getBackgroundImageLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    return-object v0
.end method

.method public getColorRgb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->colorRgb:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->createdTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->themeId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 1

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/TeamDrive;

    return-object v0
.end method

.method public setBackgroundImageFile(Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    .line 124
    return-object p0
.end method

.method public setBackgroundImageLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageLink:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setCapabilities(Lcom/google/api/services/drive/model/TeamDrive$Capabilities;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    .line 158
    return-object p0
.end method

.method public setColorRgb(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->colorRgb:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setCreatedTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->createdTime:Lcom/google/api/client/util/DateTime;

    .line 194
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->id:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->kind:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->name:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public setThemeId(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->themeId:Ljava/lang/String;

    .line 270
    return-object p0
.end method
