.class public final enum Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;
.super Ljava/lang/Enum;
.source "UploadApiRateLimitValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

.field public static final enum LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

.field public static final enum UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    const-string/jumbo v1, "UNLIMITED"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    const-string/jumbo v1, "LIMIT"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    return-object v0
.end method
