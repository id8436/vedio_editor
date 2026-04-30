.class public final enum Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;
.super Ljava/lang/Enum;
.source "AdobeCollaborationInviteResourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

.field public static final enum ADOBE_COLLABORATION_INVITE_TYPE_ASSET:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

.field public static final enum ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    const-string/jumbo v1, "ADOBE_COLLABORATION_INVITE_TYPE_ASSET"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_ASSET:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    const-string/jumbo v1, "ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_ASSET:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    const-string/jumbo v1, "application/x-sharedcloud-collection+json"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_ASSET:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v1, "application/vnd.adobe.library+dcx"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    const-string/jumbo v0, ""

    .line 15
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_ASSET:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    if-ne p0, v1, :cond_1

    .line 16
    const-string/jumbo v0, "application/x-sharedcloud-collection+json"

    .line 22
    :cond_0
    :goto_0
    return-object v0

    .line 18
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    if-ne p0, v1, :cond_0

    .line 19
    const-string/jumbo v0, "application/vnd.adobe.library+dcx"

    goto :goto_0
.end method
