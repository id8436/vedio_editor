.class public final enum Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;
.super Ljava/lang/Enum;
.source "SaveUrlJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

.field public static final enum COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

.field public static final enum FAILED:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

.field public static final enum IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    const-string/jumbo v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    return-object v0
.end method
