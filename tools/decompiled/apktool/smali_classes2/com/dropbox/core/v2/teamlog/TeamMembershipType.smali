.class public final enum Lcom/dropbox/core/v2/teamlog/TeamMembershipType;
.super Ljava/lang/Enum;
.source "TeamMembershipType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/TeamMembershipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

.field public static final enum FREE:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

.field public static final enum FULL:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    const-string/jumbo v1, "FREE"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->FREE:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    .line 21
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    const-string/jumbo v1, "FULL"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->FULL:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    .line 29
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->OTHER:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->FREE:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->FULL:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->OTHER:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->$VALUES:[Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMembershipType;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/TeamMembershipType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->$VALUES:[Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/TeamMembershipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    return-object v0
.end method
