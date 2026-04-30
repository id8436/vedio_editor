.class public final enum Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
.super Ljava/lang/Enum;
.source "PaperDeploymentPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

.field public static final enum FULL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

.field public static final enum PARTIAL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    const-string/jumbo v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->FULL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    const-string/jumbo v1, "PARTIAL"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->PARTIAL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->FULL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->PARTIAL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    return-object v0
.end method
