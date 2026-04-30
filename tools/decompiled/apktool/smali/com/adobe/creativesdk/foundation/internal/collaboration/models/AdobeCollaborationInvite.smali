.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;
.super Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;
.source "AdobeCollaborationInvite.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private _createdDate:Ljava/lang/String;

.field private _inviteID:Ljava/lang/String;

.field private _recipientEmail:Ljava/lang/String;

.field private _resourceName:Ljava/lang/String;

.field private _senderUserName:Ljava/lang/String;

.field private isInProgressMode:Z

.field private resourceType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->isInProgressMode:Z

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setIsInvite(Z)V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;-><init>(Landroid/os/Parcel;)V

    .line 25
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->isInProgressMode:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_inviteID:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_senderUserName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_resourceName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_createdDate:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_recipientEmail:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->isInProgressMode:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->resourceType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static inviteWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;-><init>()V

    .line 59
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setInviteID(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "resourceName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setResourceName(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "senderName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setSenderUserName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getSenderUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getSenderUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    const-string/jumbo v1, "senderFirstName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "senderLastName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setSenderUserName(Ljava/lang/String;)V

    .line 69
    :cond_1
    const-string/jumbo v1, "resourceType"

    const-string/jumbo v2, ""

    .line 70
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "recipientRole"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setCollaborationType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 78
    :cond_2
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setResourceType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;)V

    .line 80
    const-string/jumbo v1, "created"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setCreatedDate(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "recipientEmail"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setEmail(Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method public static inviteWithDictionary(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 101
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v3, "statusCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 104
    const/16 v4, 0xc8

    if-lt v3, v4, :cond_0

    const/16 v4, 0x12b

    if-gt v3, v4, :cond_0

    .line 105
    const-string/jumbo v3, "body"

    .line 106
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->inviteWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    move-result-object v0

    .line 107
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;)V

    .line 108
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 112
    const-string/jumbo v5, "statusText"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    const-string/jumbo v0, "AdobeNetworkHTTPStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v0, 0x193

    if-ne v3, v0, :cond_1

    .line 116
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_UNAUTHORIZED:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    :goto_2
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    .line 125
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 120
    :cond_1
    :try_start_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 131
    :cond_2
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_recipientEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_inviteID:Ljava/lang/String;

    return-object v0
.end method

.method public getInProgressMode()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->isInProgressMode:Z

    return v0
.end method

.method public getInviteID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_inviteID:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->resourceType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    return-object v0
.end method

.method public getSenderUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_senderUserName:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_createdDate:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_recipientEmail:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setInProgressMode(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->isInProgressMode:Z

    .line 48
    return-void
.end method

.method public setInviteID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_inviteID:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_resourceName:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setResourceType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->resourceType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    .line 218
    return-void
.end method

.method public setSenderUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_senderUserName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_inviteID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_inviteID:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_senderUserName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_senderUserName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_resourceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_resourceName:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_createdDate:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_createdDate:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_recipientEmail:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->_recipientEmail:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->isInProgressMode:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->resourceType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    return-void

    .line 194
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 195
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 196
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 197
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3

    .line 198
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_4

    .line 199
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->resourceType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
