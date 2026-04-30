.class public final enum Lcom/behance/sdk/enums/BehanceSDKUserAuthType;
.super Ljava/lang/Enum;
.source "BehanceSDKUserAuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/enums/BehanceSDKUserAuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

.field public static final enum ADOBE_LOGIN:Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

.field public static final enum BEHANCE_LOGIN:Lcom/behance/sdk/enums/BehanceSDKUserAuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    const-string/jumbo v1, "BEHANCE_LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->BEHANCE_LOGIN:Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    const-string/jumbo v1, "ADOBE_LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->ADOBE_LOGIN:Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->BEHANCE_LOGIN:Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->ADOBE_LOGIN:Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKUserAuthType;
    .locals 5

    .prologue
    .line 30
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 31
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->values()[Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    move-result-object v2

    .line 32
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 33
    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKUserAuthType;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/enums/BehanceSDKUserAuthType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    invoke-virtual {v0}, [Lcom/behance/sdk/enums/BehanceSDKUserAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/enums/BehanceSDKUserAuthType;

    return-object v0
.end method
