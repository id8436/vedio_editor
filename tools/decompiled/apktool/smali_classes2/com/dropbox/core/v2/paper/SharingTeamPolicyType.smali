.class public final enum Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
.super Ljava/lang/Enum;
.source "SharingTeamPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

.field public static final enum INVITE_ONLY:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

.field public static final enum PEOPLE_WITH_LINK_CAN_EDIT:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

.field public static final enum PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    const-string/jumbo v1, "PEOPLE_WITH_LINK_CAN_EDIT"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->PEOPLE_WITH_LINK_CAN_EDIT:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    const-string/jumbo v1, "PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    const-string/jumbo v1, "INVITE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->INVITE_ONLY:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    sget-object v1, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->PEOPLE_WITH_LINK_CAN_EDIT:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->INVITE_ONLY:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->$VALUES:[Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->$VALUES:[Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    return-object v0
.end method
