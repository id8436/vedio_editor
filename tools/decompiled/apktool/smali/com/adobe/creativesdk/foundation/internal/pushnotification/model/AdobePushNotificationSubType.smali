.class public final enum Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;
.super Ljava/lang/Enum;
.source "AdobePushNotificationSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 6
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 9
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 10
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 11
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 12
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 13
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 38
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    goto :goto_0

    .line 42
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    goto :goto_0

    .line 44
    :cond_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    goto :goto_0

    .line 46
    :cond_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    goto :goto_0

    .line 48
    :cond_5
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 49
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    goto :goto_0

    .line 50
    :cond_6
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 51
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    goto :goto_0

    .line 52
    :cond_7
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 53
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    goto :goto_0

    .line 54
    :cond_8
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 34
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    const-string/jumbo v0, "notification.asset.comment"

    goto :goto_0

    .line 20
    :pswitch_1
    const-string/jumbo v0, "sharing.invite"

    goto :goto_0

    .line 22
    :pswitch_2
    const-string/jumbo v0, "sharing.invite.accept.other"

    goto :goto_0

    .line 24
    :pswitch_3
    const-string/jumbo v0, "sharing.invite.accept.self"

    goto :goto_0

    .line 26
    :pswitch_4
    const-string/jumbo v0, "sharing.collaboration.updaterole"

    goto :goto_0

    .line 28
    :pswitch_5
    const-string/jumbo v0, "sharing.collaboration.remove"

    goto :goto_0

    .line 30
    :pswitch_6
    const-string/jumbo v0, "sharing.invite.decline"

    goto :goto_0

    .line 32
    :pswitch_7
    const-string/jumbo v0, "sharing.invite.revoke"

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
