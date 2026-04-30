.class public final enum Lcom/dropbox/core/v2/filerequests/GracePeriod;
.super Ljava/lang/Enum;
.source "GracePeriod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/filerequests/GracePeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum ALWAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum ONE_DAY:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum OTHER:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum SEVEN_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum THIRTY_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum TWO_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string/jumbo v1, "ONE_DAY"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ONE_DAY:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 21
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string/jumbo v1, "TWO_DAYS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->TWO_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 22
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string/jumbo v1, "SEVEN_DAYS"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->SEVEN_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string/jumbo v1, "THIRTY_DAYS"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->THIRTY_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string/jumbo v1, "ALWAYS"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ALWAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->OTHER:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/filerequests/GracePeriod;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ONE_DAY:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GracePeriod;->TWO_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GracePeriod;->SEVEN_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GracePeriod;->THIRTY_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ALWAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;->OTHER:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->$VALUES:[Lcom/dropbox/core/v2/filerequests/GracePeriod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/GracePeriod;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/filerequests/GracePeriod;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->$VALUES:[Lcom/dropbox/core/v2/filerequests/GracePeriod;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/filerequests/GracePeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/filerequests/GracePeriod;

    return-object v0
.end method
