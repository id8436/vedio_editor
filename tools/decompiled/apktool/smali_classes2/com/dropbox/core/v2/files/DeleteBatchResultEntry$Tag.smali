.class public final enum Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
.super Ljava/lang/Enum;
.source "DeleteBatchResultEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

.field public static final enum FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

.field public static final enum SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    const-string/jumbo v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    return-object v0
.end method
