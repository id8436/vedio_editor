.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;
.super Ljava/lang/Object;
.source "AdobeCollaboration.java"


# static fields
.field private static _selfAdobeID:Ljava/lang/String;


# instance fields
.field private _collaborators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;",
            ">;"
        }
    .end annotation
.end field

.field private _invites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;",
            ">;"
        }
    .end annotation
.end field

.field private _invitesCollaborators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;",
            ">;"
        }
    .end annotation
.end field

.field private _ownerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_selfAdobeID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_ownerId:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_collaborators:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invites:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invitesCollaborators:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public static collaborationWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 41
    if-nez p0, :cond_0

    .line 114
    :goto_0
    return-object v0

    .line 45
    :cond_0
    :try_start_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;-><init>()V

    .line 48
    const-string/jumbo v3, "ownerId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    iput-object v7, v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_ownerId:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->getSelfAdobeID()Ljava/lang/String;

    move-result-object v8

    .line 51
    const-string/jumbo v3, "collaborators"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v5, v2

    move v3, v6

    move v4, v6

    .line 52
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 54
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 55
    new-instance v11, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;

    invoke-direct {v11}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;-><init>()V

    .line 56
    const-string/jumbo v12, "email"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->setEmail(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v12, "name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->setName(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v12, "userId"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->setUserId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->getUserID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->setOwner(Z)V

    .line 60
    const-string/jumbo v12, "role"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v10

    .line 61
    if-eqz v10, :cond_1

    .line 62
    invoke-virtual {v11, v10}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->setCollaborationType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 64
    :cond_1
    if-ne v4, v6, :cond_2

    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->getUserID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v4, v5

    .line 66
    :cond_2
    if-ne v3, v6, :cond_3

    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->getUserID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v3, v5

    .line 70
    :cond_3
    iget-object v10, v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_collaborators:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v10, v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invitesCollaborators:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 74
    :cond_4
    if-eq v4, v6, :cond_7

    if-eq v3, v6, :cond_7

    .line 76
    if-eqz v4, :cond_6

    .line 77
    iget-object v5, v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invitesCollaborators:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 78
    if-nez v3, :cond_6

    .line 80
    if-eq v4, v14, :cond_5

    .line 81
    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invitesCollaborators:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_5
    move v3, v4

    .line 85
    :cond_6
    if-eq v3, v4, :cond_7

    .line 86
    iget-object v4, v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invitesCollaborators:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 90
    :cond_7
    const-string/jumbo v3, "invites"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 91
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 94
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 95
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;-><init>()V

    .line 96
    const-string/jumbo v6, "created"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setCreatedDate(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setInviteID(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v6, "senderName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setSenderUserName(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v6, "recipientEmail"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setEmail(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v6, "recipientRole"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v4

    .line 101
    if-eqz v4, :cond_8

    .line 102
    invoke-virtual {v5, v4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setCollaborationType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 104
    :cond_8
    iget-object v4, v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invites:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v4, v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invitesCollaborators:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move-object v0, v1

    .line 108
    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static getSelfAdobeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_selfAdobeID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_selfAdobeID:Ljava/lang/String;

    .line 33
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_selfAdobeID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCollaborators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_collaborators:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCollaboratorsAndInvites()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invitesCollaborators:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInvites()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_invites:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboration;->_ownerId:Ljava/lang/String;

    return-object v0
.end method
