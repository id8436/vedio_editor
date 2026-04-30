.class public final enum Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
.super Ljava/lang/Enum;
.source "AdobeCollaborationRole.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

.field public static final enum ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

.field public static final enum ADOBE_COLLABORATION_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    const-string/jumbo v1, "ADOBE_COLLABORATION_TYPE_EDITOR"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    const-string/jumbo v1, "ADOBE_COLLABORATION_TYPE_VIEWER"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

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

.method public static getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    goto :goto_0

    .line 30
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    const-string/jumbo v0, ""

    .line 13
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    if-ne p0, v1, :cond_1

    .line 14
    const-string/jumbo v0, "editor"

    .line 20
    :cond_0
    :goto_0
    return-object v0

    .line 16
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    if-ne p0, v1, :cond_0

    .line 17
    const-string/jumbo v0, "viewer"

    goto :goto_0
.end method
