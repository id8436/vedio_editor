.class public final enum Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;
.super Ljava/lang/Enum;
.source "AdobeCollaborationRoleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

.field public static final enum ADOBE_COLLABORATION_ROLE_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

.field public static final enum ADOBE_COLLABORATION_ROLE_TYPE_OWNER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

.field public static final enum ADOBE_COLLABORATION_ROLE_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    const-string/jumbo v1, "ADOBE_COLLABORATION_ROLE_TYPE_OWNER"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_OWNER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    const-string/jumbo v1, "ADOBE_COLLABORATION_ROLE_TYPE_EDITOR"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    .line 22
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    const-string/jumbo v1, "ADOBE_COLLABORATION_ROLE_TYPE_VIEWER"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_OWNER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    return-object v0
.end method
