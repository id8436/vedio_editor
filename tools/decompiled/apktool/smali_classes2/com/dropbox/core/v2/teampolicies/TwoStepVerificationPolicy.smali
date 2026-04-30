.class public final enum Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;
.super Ljava/lang/Enum;
.source "TwoStepVerificationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

.field public static final enum REQUIRE_TFA_DISABLE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

.field public static final enum REQUIRE_TFA_ENABLE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    const-string/jumbo v1, "REQUIRE_TFA_ENABLE"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->REQUIRE_TFA_ENABLE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    const-string/jumbo v1, "REQUIRE_TFA_DISABLE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->REQUIRE_TFA_DISABLE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->REQUIRE_TFA_ENABLE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->REQUIRE_TFA_DISABLE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    return-object v0
.end method
