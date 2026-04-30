.class public final enum Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;
.super Ljava/lang/Enum;
.source "AdobeCollaborationCreateInviteStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

.field public static final enum ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

.field public static final enum ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    const-string/jumbo v1, "ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    const-string/jumbo v1, "ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

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

.method public static getEnumFromInteger(I)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;
    .locals 1

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 27
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    goto :goto_0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    return-object v0
.end method


# virtual methods
.method public toInteger()I
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$collaboration$models$AdobeCollaborationCreateInviteStatus:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 17
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 13
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
