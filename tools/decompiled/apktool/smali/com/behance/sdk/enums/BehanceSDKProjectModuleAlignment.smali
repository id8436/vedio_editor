.class public final enum Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
.super Ljava/lang/Enum;
.source "BehanceSDKProjectModuleAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field public static final enum CENTER:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field public static final enum LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field public static final enum RIGHT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->RIGHT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    const-string/jumbo v1, "CENTER"

    invoke-direct {v0, v1, v4}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->CENTER:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->RIGHT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->CENTER:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

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

.method public static fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 5

    .prologue
    .line 11
    if-eqz p0, :cond_1

    .line 12
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->values()[Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 13
    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    :goto_1
    return-object v0

    .line 12
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-virtual {v0}, [Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-object v0
.end method
