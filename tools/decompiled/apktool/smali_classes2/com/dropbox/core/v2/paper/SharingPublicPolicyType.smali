.class public final enum Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
.super Ljava/lang/Enum;
.source "SharingPublicPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

.field public static final enum DISABLED:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

.field public static final enum INVITE_ONLY:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

.field public static final enum PEOPLE_WITH_LINK_CAN_EDIT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

.field public static final enum PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    const-string/jumbo v1, "PEOPLE_WITH_LINK_CAN_EDIT"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->PEOPLE_WITH_LINK_CAN_EDIT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    const-string/jumbo v1, "PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    const-string/jumbo v1, "INVITE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->INVITE_ONLY:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->DISABLED:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    sget-object v1, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->PEOPLE_WITH_LINK_CAN_EDIT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->INVITE_ONLY:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->DISABLED:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->$VALUES:[Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->$VALUES:[Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    return-object v0
.end method
