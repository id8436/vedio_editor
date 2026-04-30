.class public final enum Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;
.super Ljava/lang/Enum;
.source "CustomTwitterApiClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

.field public static final enum FAILED:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

.field public static final enum IN_PROGRESS:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

.field public static final enum PENDING:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

.field public static final enum SUCCEEDED:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->PENDING:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    new-instance v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    const-string/jumbo v1, "SUCCEEDED"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->SUCCEEDED:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    new-instance v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    const-string/jumbo v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->IN_PROGRESS:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    new-instance v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->FAILED:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    sget-object v1, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->PENDING:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->SUCCEEDED:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->IN_PROGRESS:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->FAILED:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->$VALUES:[Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->$VALUES:[Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    return-object v0
.end method
