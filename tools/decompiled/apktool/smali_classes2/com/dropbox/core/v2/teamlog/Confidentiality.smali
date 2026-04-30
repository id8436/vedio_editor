.class public final enum Lcom/dropbox/core/v2/teamlog/Confidentiality;
.super Ljava/lang/Enum;
.source "Confidentiality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/Confidentiality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/Confidentiality;

.field public static final enum CONFIDENTIAL:Lcom/dropbox/core/v2/teamlog/Confidentiality;

.field public static final enum NON_CONFIDENTIAL:Lcom/dropbox/core/v2/teamlog/Confidentiality;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/Confidentiality;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;

    const-string/jumbo v1, "CONFIDENTIAL"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/Confidentiality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;->CONFIDENTIAL:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .line 21
    new-instance v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;

    const-string/jumbo v1, "NON_CONFIDENTIAL"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/Confidentiality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;->NON_CONFIDENTIAL:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .line 29
    new-instance v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/Confidentiality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;->OTHER:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/Confidentiality;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/Confidentiality;->CONFIDENTIAL:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/Confidentiality;->NON_CONFIDENTIAL:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/Confidentiality;->OTHER:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;->$VALUES:[Lcom/dropbox/core/v2/teamlog/Confidentiality;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/Confidentiality;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/Confidentiality;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;->$VALUES:[Lcom/dropbox/core/v2/teamlog/Confidentiality;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/Confidentiality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/Confidentiality;

    return-object v0
.end method
